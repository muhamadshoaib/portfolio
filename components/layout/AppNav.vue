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
const heroVisible = ref(true)
const activeSection = ref('')

onMounted(() => {
  // Hero photo observer
  const hero = document.querySelector('#hero-photo')
  if (hero) {
    const heroObserver = new IntersectionObserver(
      ([entry]) => { heroVisible.value = entry.isIntersecting },
      { threshold: 0.1 }
    )
    heroObserver.observe(hero)
  }

  // Active section observer — scanline at top 25% of viewport
  const sections = document.querySelectorAll('section[id]')
  const sectionObserver = new IntersectionObserver(
    (entries) => {
      entries.forEach((entry) => {
        if (entry.isIntersecting) activeSection.value = entry.target.id
      })
    },
    { threshold: 0, rootMargin: '-60px 0px -75% 0px' }
  )
  sections.forEach((s) => sectionObserver.observe(s))
})
</script>

<template>
  <nav class="fixed top-0 left-0 right-0 z-50 bg-base/80 backdrop-blur-md border-b border-stroke/50">
    <div class="max-w-6xl mx-auto px-6 py-4 flex items-center justify-between">

      <!-- Logo + avatar -->
      <div class="flex items-center gap-3">
        <Transition name="avatar">
          <img
            v-if="!heroVisible"
            :src="profile.photo"
            alt="Muhammad Shoaib"
            class="w-8 h-8 rounded-full object-cover border border-accent/40"
          />
        </Transition>
        <a href="#" class="text-accent font-black text-xl font-mono tracking-tight">MS</a>
      </div>

      <!-- Desktop links -->
      <div class="hidden md:flex items-center gap-8">
        <a
          v-for="link in navLinks"
          :key="link.href"
          :href="link.href"
          class="relative text-sm transition-colors duration-200 pb-0.5"
          :class="activeSection === link.href.slice(1) ? 'text-ink' : 'text-ink-dim hover:text-ink'"
        >
          {{ link.label }}
          <span
            class="absolute -bottom-1 left-0 h-px bg-accent transition-all duration-300"
            :class="activeSection === link.href.slice(1) ? 'w-full' : 'w-0'"
          />
        </a>

        <!-- Theme toggle -->
        <button
          :title="isDark ? 'Switch to light mode' : 'Switch to dark mode'"
          class="text-ink-dim hover:text-accent transition-colors duration-200"
          @click="toggle"
        >
          <svg v-if="isDark" class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 3v1m0 16v1m9-9h-1M4 12H3m15.364-6.364l-.707.707M6.343 17.657l-.707.707M18.364 18.364l-.707-.707M6.343 6.343l-.707-.707M16 12a4 4 0 11-8 0 4 4 0 018 0z"/>
          </svg>
          <svg v-else class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M20.354 15.354A9 9 0 018.646 3.646 9.003 9.003 0 0012 21a9.003 9.003 0 008.354-5.646z"/>
          </svg>
        </button>

        <a
          :href="profile.resume"
          target="_blank"
          rel="noopener noreferrer"
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

      <!-- Mobile: theme toggle + hamburger -->
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
        <button class="text-ink-dim hover:text-ink" @click="mobileOpen = true">
          <svg class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
          </svg>
        </button>
      </div>
    </div>
  </nav>

  <!-- Mobile drawer -->
  <Teleport to="body">
    <Transition name="drawer">
      <div v-if="mobileOpen" class="md:hidden fixed inset-0 z-[60] flex justify-end">

        <!-- Backdrop -->
        <div
          class="absolute inset-0 bg-ink/20 backdrop-blur-sm"
          @click="mobileOpen = false"
        />

        <!-- Drawer panel -->
        <div class="relative w-72 h-full bg-base/90 backdrop-blur-md border-l border-stroke flex flex-col px-6 py-8">
          <!-- Close -->
          <button
            class="absolute top-5 right-5 text-ink-dim hover:text-ink transition-colors"
            @click="mobileOpen = false"
          >
            <svg class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
            </svg>
          </button>

          <!-- Avatar + name -->
          <div class="flex items-center gap-3 mb-10">
            <img :src="profile.photo" alt="Muhammad Shoaib" class="w-10 h-10 rounded-full object-cover border border-accent/40" />
            <div>
              <div class="text-accent font-black font-mono text-lg leading-none">MS</div>
              <div class="text-ink-dim text-xs mt-0.5">Engineering Lead</div>
            </div>
          </div>

          <!-- Nav links -->
          <nav class="flex flex-col gap-1 mb-10">
            <a
              v-for="link in navLinks"
              :key="link.href"
              :href="link.href"
              class="flex items-center gap-2 px-3 py-2.5 rounded-lg text-sm transition-colors"
              :class="activeSection === link.href.slice(1)
                ? 'text-accent bg-accent/10 font-medium'
                : 'text-ink-body hover:text-ink hover:bg-subtle'"
              @click="mobileOpen = false"
            >
              <span
                class="w-1 h-1 rounded-full bg-accent transition-opacity duration-200"
                :class="activeSection === link.href.slice(1) ? 'opacity-100' : 'opacity-0'"
              />
              {{ link.label }}
            </a>
          </nav>

          <!-- Actions -->
          <div class="flex flex-col gap-3 mt-auto">
            <a
              :href="profile.resume"
              target="_blank"
              rel="noopener noreferrer"
              class="flex items-center justify-center gap-2 text-sm border border-stroke text-ink-dim font-semibold px-4 py-2.5 rounded-lg hover:border-accent hover:text-accent transition-colors"
              @click="mobileOpen = false"
            >
              <svg class="w-3.5 h-3.5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 16v1a3 3 0 003 3h10a3 3 0 003-3v-1m-4-4l-4 4m0 0l-4-4m4 4V4"/>
              </svg>
              Resume
            </a>
            <a
              :href="`mailto:${profile.email}`"
              class="text-sm bg-accent text-black font-semibold px-4 py-2.5 rounded-lg text-center hover:bg-accent-hover transition-colors"
              @click="mobileOpen = false"
            >
              Get in touch
            </a>
          </div>
        </div>
      </div>
    </Transition>
  </Teleport>
</template>

<style scoped>
.avatar-enter-active,
.avatar-leave-active {
  transition: opacity 0.3s ease, transform 0.3s ease;
}
.avatar-enter-from,
.avatar-leave-to {
  opacity: 0;
  transform: scale(0.7);
}

.drawer-enter-active,
.drawer-leave-active {
  transition: opacity 0.25s ease;
}
.drawer-enter-active .relative,
.drawer-leave-active .relative {
  transition: transform 0.25s ease;
}
.drawer-enter-from,
.drawer-leave-to {
  opacity: 0;
}
.drawer-enter-from .relative,
.drawer-leave-to .relative {
  transform: translateX(100%);
}
</style>
