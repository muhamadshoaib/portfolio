<script setup lang="ts">
import { profile } from '~/composables/useProfile'
</script>

<template>
  <div class="hidden lg:flex fixed right-8 bottom-0 z-40 flex-col items-center gap-5">
    <a
      :href="`mailto:${profile.email}`"
      class="text-ink-muted hover:text-accent transition-colors duration-200 text-sm font-bold font-mono tracking-[0.15em]"
      style="writing-mode: vertical-rl; text-orientation: mixed;"
    >
      {{ profile.email }}
    </a>
    <div class="w-px h-20 bg-stroke mt-1"></div>
  </div>
</template>
