/**
 * Typewriter effect — types out a string character by character.
 * Returns a reactive `typed` string.
 */
export function useTypewriter(text: string, opts?: { charDelay?: number; startDelay?: number }) {
  const typed = ref('')
  const { charDelay = 70, startDelay = 300 } = opts ?? {}

  onMounted(() => {
    let i = 0
    setTimeout(() => {
      const interval = setInterval(() => {
        typed.value = text.slice(0, ++i)
        if (i === text.length) clearInterval(interval)
      }, charDelay)
    }, startDelay)
  })

  return typed
}

/**
 * Count-up animation — animates numbers from 0 to their target values
 * using an ease-out cubic curve, triggered when the element enters the viewport.
 *
 * @param stats  Array of { target, suffix, prefix }
 * @param el     Ref to the container element to observe (use template ref)
 */
export interface CountStat {
  target: number
  suffix?: string
  prefix?: string
  decimals?: number
}

export function useCountUp(stats: CountStat[], el: Ref<HTMLElement | null>) {
  const displayed = ref(stats.map(() => 0))

  function format(stat: CountStat, val: number) {
    const decimals = stat.decimals ?? (stat.target % 1 !== 0 ? 2 : 0)
    const formatted = decimals > 0 ? val.toFixed(decimals) : Math.round(val).toString()
    return `${stat.prefix ?? ''}${formatted}${stat.suffix ?? ''}`
  }

  onMounted(() => {
    const observer = new IntersectionObserver(
      ([entry]) => {
        if (!entry.isIntersecting) return
        observer.disconnect()

        const duration = 1800
        const steps = 60
        const stepMs = duration / steps

        stats.forEach((stat, idx) => {
          let step = 0
          const interval = setInterval(() => {
            step++
            const eased = 1 - Math.pow(1 - step / steps, 3)
            displayed.value[idx] = Number.parseFloat((eased * stat.target).toFixed(stat.decimals ?? 2))
            if (step >= steps) {
              displayed.value[idx] = stat.target
              clearInterval(interval)
            }
          }, stepMs)
        })
      },
      { threshold: 0.2 }
    )

    if (el.value) observer.observe(el.value)
  })

  return { displayed, format }
}
