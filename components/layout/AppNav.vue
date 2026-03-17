<script setup lang="ts">
const navLinks = [
  { label: 'About', href: '#about' },
  { label: 'Experience', href: '#experience' },
  { label: 'Skills', href: '#skills' },
  { label: 'Contact', href: '#contact' },
]

import { profile } from '~/composables/useProfile'

const mobileOpen = ref(false)
const { isDark, toggle } = useTheme()
</script>

<template>
  <nav class="fixed top-0 left-0 right-0 z-50 bg-base/80 backdrop-blur-md border-b border-stroke/50">
    <div class="max-w-6xl mx-auto px-6 py-4 flex items-center justify-between">
      <a href="#" class="text-accent font-black text-xl font-mono tracking-tight">MS</a>

      <!-- Desktop links -->
      <div class="hidden md:flex items-center gap-8">
        <a
          v-for="link in navLinks"
          :key="link.href"
          :href="link.href"
          class="text-sm text-ink-dim hover:text-ink transition-colors duration-200"
        >
          {{ link.label }}
        </a>

        <!-- Theme toggle -->
        <button
          :title="isDark ? 'Switch to light mode' : 'Switch to dark mode'"
          class="text-ink-dim hover:text-accent transition-colors duration-200"
          @click="toggle"
        >
          <!-- Sun (shown in dark mode) -->
          <svg v-if="isDark" class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 3v1m0 16v1m9-9h-1M4 12H3m15.364-6.364l-.707.707M6.343 17.657l-.707.707M18.364 18.364l-.707-.707M6.343 6.343l-.707-.707M16 12a4 4 0 11-8 0 4 4 0 018 0z"/>
          </svg>
          <!-- Moon (shown in light mode) -->
          <svg v-else class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M20.354 15.354A9 9 0 018.646 3.646 9.003 9.003 0 0012 21a9.003 9.003 0 008.354-5.646z"/>
          </svg>
        </button>

        <a
          :href="profile.resume"
          download
          class="inline-flex items-center gap-2 text-sm border border-stroke text-ink-dim font-semibold px-4 py-2 rounded-lg hover:border-accent hover:text-accent transition-colors duration-200"
        >
          <svg class="w-3.5 h-3.5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 16v1a3 3 0 003 3h10a3 3 0 003-3v-1m-4-4l-4 4m0 0l-4-4m4 4V4"/>
          </svg>
          Resume
        </a>
        <a
          :href="`mailto:${profile.email}`"
          class="text-sm bg-accent text-black font-semibold px-4 py-2 rounded-lg hover:bg-accent-hover transition-colors duration-200"
        >
          Get in touch
        </a>
      </div>

      <!-- Mobile right side -->
      <div class="md:hidden flex items-center gap-3">
        <button
          :title="isDark ? 'Switch to light mode' : 'Switch to dark mode'"
          class="text-ink-dim hover:text-accent transition-colors"
          @click="toggle"
        >
          <svg v-if="isDark" class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 3v1m0 16v1m9-9h-1M4 12H3m15.364-6.364l-.707.707M6.343 17.657l-.707.707M18.364 18.364l-.707-.707M6.343 6.343l-.707-.707M16 12a4 4 0 11-8 0 4 4 0 018 0z"/>
          </svg>
          <svg v-else class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M20.354 15.354A9 9 0 018.646 3.646 9.003 9.003 0 0012 21a9.003 9.003 0 008.354-5.646z"/>
          </svg>
        </button>
        <button
          class="text-ink-dim hover:text-ink"
          @click="mobileOpen = !mobileOpen"
        >
          <svg v-if="!mobileOpen" xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
          </svg>
          <svg v-else xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
          </svg>
        </button>
      </div>
    </div>

    <!-- Mobile menu -->
    <div v-if="mobileOpen" class="md:hidden border-t border-stroke/50 bg-base px-6 py-4 space-y-4">
      <a
        v-for="link in navLinks"
        :key="link.href"
        :href="link.href"
        class="block text-ink-body hover:text-ink text-sm"
        @click="mobileOpen = false"
      >
        {{ link.label }}
      </a>
      <a
        :href="profile.resume"
        download
        class="flex items-center justify-center gap-2 text-sm border border-stroke text-ink-dim font-semibold px-4 py-2 rounded-lg hover:border-accent hover:text-accent transition-colors"
        @click="mobileOpen = false"
      >
        <svg class="w-3.5 h-3.5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 16v1a3 3 0 003 3h10a3 3 0 003-3v-1m-4-4l-4 4m0 0l-4-4m4 4V4"/>
        </svg>
        Download Resume
      </a>
      <a
        :href="`mailto:${profile.email}`"
        class="block text-sm bg-accent text-black font-semibold px-4 py-2 rounded-lg text-center hover:bg-accent-hover transition-colors"
        @click="mobileOpen = false"
      >
        Get in touch
      </a>
    </div>
  </nav>
</template>
