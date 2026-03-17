export function useTheme() {
  const isDark = useState('isDark', () => true)

  const apply = (dark: boolean) => {
    document.documentElement.classList.toggle('dark', dark)
    localStorage.setItem('theme', dark ? 'dark' : 'light')
  }

  const toggle = () => {
    isDark.value = !isDark.value
    apply(isDark.value)
  }

  onMounted(() => {
    const saved = localStorage.getItem('theme')
    isDark.value = saved ? saved === 'dark' : true // default: dark
    apply(isDark.value)
  })

  return { isDark, toggle }
}
