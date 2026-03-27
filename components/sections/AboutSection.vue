<script setup lang="ts">
import { useCountUp } from '~/composables/useAnimations'

const statDefs = [
  { target: 572, suffix: 'K+', prefix: '', label: 'iOS Downloads',      sub: 'Post-launch' },
  { target: 686, suffix: 'K+', prefix: '', label: 'Android Downloads',  sub: 'Grew from 91K' },
  { target: 3,   suffix: 'M+', prefix: '', label: 'Orders Processed',   sub: 'Vendor platform' },
  { target: 6,   suffix: '+',  prefix: '', label: 'Engineers Mentored', sub: 'As Engineering Manager' },
]

const statsEl = ref<HTMLElement | null>(null)
const { displayed, format } = useCountUp(statDefs, statsEl)
</script>

<template>
  <section id="about" class="px-6 py-16 bg-section">
    <div class="max-w-7xl mx-auto">
      <div data-animate class="section-heading">
        <h2 class="text-5xl font-black text-ink">About</h2>
      </div>
      <div class="grid md:grid-cols-2 gap-12 items-start">
        <div data-animate style="--delay: 100ms" class="space-y-5">
          <p class="text-ink-body text-lg leading-relaxed">
            Software engineer with <strong class="text-ink">6+ years</strong> of experience building and scaling production systems across mobile and backend platforms.
          </p>
          <p class="text-ink-dim leading-relaxed">
            Led end-to-end delivery of a mobile commerce platform that scaled to <strong class="text-accent">~1.3M downloads (iOS + Android)</strong> — took full ownership of the initiative and shipped a production-grade app with a lean team.
          </p>
          <p class="text-ink-dim leading-relaxed">
            When the original lead resigned and multiple engineers left, I stepped in, stabilized the team, and shipped. This transformed the company from a web-only platform into a scalable mobile-first product.
          </p>
          <p class="text-ink-dim leading-relaxed">
            Open to <strong class="text-ink">senior engineering and technical lead roles</strong>. I build systems that operate at scale — mobile platforms, high-throughput backend services, and data pipelines — and I take ownership from architecture to production.
          </p>
        </div>

        <div ref="statsEl" class="grid grid-cols-2 gap-4">
          <div
            v-for="(stat, i) in statDefs"
            :key="stat.label"
            data-animate
            :style="`--delay: ${150 + i * 100}ms`"
            class="bg-card border border-stroke rounded-xl p-5 hover:border-accent/30 transition-colors"
          >
            <div class="text-3xl font-black text-accent mb-1">{{ format(stat, displayed[i]) }}</div>
            <div class="text-sm text-ink-body font-medium">{{ stat.label }}</div>
            <div class="text-xs text-ink-faint mt-0.5">{{ stat.sub }}</div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>
