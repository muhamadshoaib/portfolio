<script setup lang="ts">
import { profile } from '~/composables/useProfile'
import { useTypewriter, useCountUp } from '~/composables/useAnimations'

const typed = useTypewriter('Muhammad Shoaib')

const statDefs = [
  { target: 1.3,   suffix: 'M+', prefix: '~', label: 'Total Downloads',   sub: 'iOS + Android' },
  { target: 8.4,   suffix: 'M+', prefix: '',  label: 'App Sessions',       sub: 'iOS alone' },
  { target: 18.73, suffix: '%',  prefix: '',  label: 'Conversion Rate',    sub: 'iOS App Store' },
  { target: 20,    suffix: 'K+', prefix: '',  label: 'Daily API Requests', sub: 'Backend services' },
]

const statsEl = ref<HTMLElement | null>(null)
const { displayed, format } = useCountUp(statDefs, statsEl)
</script>

<template>
  <section class="min-h-screen flex flex-col justify-center px-6 pt-24 pb-16 max-w-7xl mx-auto">
    <div class="flex flex-col-reverse md:flex-row md:items-center md:justify-between gap-12">

      <!-- Left: text content -->
      <div class="flex-1">
        <p class="hero-animate delay-1 text-accent font-mono text-xs mb-5 tracking-[0.2em] uppercase">
          Engineering Lead · Mobile Platform Builder · Full-Stack Engineer
        </p>

        <!-- Typewriter name -->
        <h1 class="hero-animate delay-2 text-6xl sm:text-7xl md:text-8xl font-black leading-none tracking-tight mb-6 text-ink">
          <span>{{ typed.includes(' ') ? typed.split(' ')[0] : typed }}</span>
          <span v-if="typed.includes(' ')"><br /><span class="text-accent">{{ typed.split(' ')[1] }}</span></span>
        </h1>

        <p class="hero-animate delay-3 text-ink-dim text-lg md:text-xl max-w-2xl leading-relaxed mb-12">
          Building scalable products that drive real business impact.
          6+ years delivering production-grade systems used by millions.
        </p>

        <!-- Stats grid -->
        <div ref="statsEl" class="hero-animate delay-4 grid grid-cols-2 md:grid-cols-4 gap-3 mb-12 max-w-3xl">
          <div
            v-for="(stat, i) in statDefs"
            :key="stat.label"
            class="bg-card border border-stroke rounded-xl p-4 hover:border-accent/30 transition-colors"
          >
            <div class="text-2xl font-black text-accent">{{ format(stat, displayed[i]) }}</div>
            <div class="text-ink text-sm font-semibold mt-0.5">{{ stat.label }}</div>
            <div class="text-ink-dim text-xs mt-0.5">{{ stat.sub }}</div>
          </div>
        </div>

        <!-- CTA buttons -->
        <div class="hero-animate delay-5 flex flex-wrap gap-3">
          <a
            :href="profile.linkedin.url"
            target="_blank"
            rel="noopener noreferrer"
            class="inline-flex items-center gap-2 bg-linkedin text-white font-semibold text-sm px-5 py-3 rounded-lg hover:bg-linkedin-hover transition-colors"
          >
            <svg class="w-4 h-4" fill="currentColor" viewBox="0 0 24 24">
              <path d="M20.447 20.452h-3.554v-5.569c0-1.328-.027-3.037-1.852-3.037-1.853 0-2.136 1.445-2.136 2.939v5.667H9.351V9h3.414v1.561h.046c.477-.9 1.637-1.85 3.37-1.85 3.601 0 4.267 2.37 4.267 5.455v6.286zM5.337 7.433c-1.144 0-2.063-.926-2.063-2.065 0-1.138.92-2.063 2.063-2.063 1.14 0 2.064.925 2.064 2.063 0 1.139-.925 2.065-2.064 2.065zm1.782 13.019H3.555V9h3.564v11.452zM22.225 0H1.771C.792 0 0 .774 0 1.729v20.542C0 23.227.792 24 1.771 24h20.451C23.2 24 24 23.227 24 22.271V1.729C24 .774 23.2 0 22.222 0h.003z"/>
            </svg>
            LinkedIn
          </a>
          <a
            :href="profile.github.url"
            target="_blank"
            rel="noopener noreferrer"
            class="inline-flex items-center gap-2 bg-card border border-stroke text-ink font-semibold text-sm px-5 py-3 rounded-lg hover:bg-subtle hover:border-stroke-stronger transition-colors"
          >
            <svg class="w-4 h-4" fill="currentColor" viewBox="0 0 24 24">
              <path d="M12 .297c-6.63 0-12 5.373-12 12 0 5.303 3.438 9.8 8.205 11.385.6.113.82-.258.82-.577 0-.285-.01-1.04-.015-2.04-3.338.724-4.042-1.61-4.042-1.61C4.422 18.07 3.633 17.7 3.633 17.7c-1.087-.744.084-.729.084-.729 1.205.084 1.838 1.236 1.838 1.236 1.07 1.835 2.809 1.305 3.495.998.108-.776.417-1.305.76-1.605-2.665-.3-5.466-1.332-5.466-5.93 0-1.31.465-2.38 1.235-3.22-.135-.303-.54-1.523.105-3.176 0 0 1.005-.322 3.3 1.23.96-.267 1.98-.399 3-.405 1.02.006 2.04.138 3 .405 2.28-1.552 3.285-1.23 3.285-1.23.645 1.653.24 2.873.12 3.176.765.84 1.23 1.91 1.23 3.22 0 4.61-2.805 5.625-5.475 5.92.42.36.81 1.096.81 2.22 0 1.606-.015 2.896-.015 3.286 0 .315.21.69.825.57C20.565 22.092 24 17.592 24 12.297c0-6.627-5.373-12-12-12"/>
            </svg>
            GitHub
          </a>
          <a
            :href="`mailto:${profile.email}`"
            class="inline-flex items-center gap-2 bg-card border border-stroke text-ink font-semibold text-sm px-5 py-3 rounded-lg hover:bg-subtle hover:border-stroke-stronger transition-colors"
          >
            <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"/>
            </svg>
            Email
          </a>
        </div>
      </div>

      <!-- Right: photo -->
      <div class="hero-animate delay-2 flex-shrink-0 flex justify-center md:justify-end">
        <div class="relative">
          <div class="absolute -inset-1 rounded-full bg-gradient-to-br from-accent/60 via-accent/20 to-transparent blur-sm" />
          <div id="hero-photo" class="relative w-64 h-64 md:w-96 md:h-96 rounded-full overflow-hidden border-2 border-accent/30">
            <img :src="profile.photo" alt="Muhammad Shoaib" class="w-full h-full object-cover" />
          </div>
        </div>
      </div>

    </div>
  </section>
</template>

<style scoped>
@keyframes fade-up {
  from { opacity: 0; transform: translateY(28px); }
  to   { opacity: 1; transform: translateY(0); }
}

.hero-animate { animation: fade-up 0.7s cubic-bezier(0.16, 1, 0.3, 1) both; }

.delay-1 { animation-delay: 0.05s; }
.delay-2 { animation-delay: 0.15s; }
.delay-3 { animation-delay: 0.28s; }
.delay-4 { animation-delay: 0.42s; }
.delay-5 { animation-delay: 0.56s; }

</style>
