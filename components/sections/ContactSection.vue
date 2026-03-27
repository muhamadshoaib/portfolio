<script setup lang="ts">
import { profile } from '~/composables/useProfile'
</script>

<template>
  <section id="contact" class="px-6 py-16 bg-section">
    <div class="max-w-7xl mx-auto">
      <div data-animate class="section-heading">
        <h2 class="text-5xl font-black text-ink">Get In Touch</h2>
      </div>

      <div class="max-w-2xl">
        <p data-animate style="--delay: 100ms" class="text-ink-dim text-lg leading-relaxed mb-10">
          Open to senior engineering and technical lead roles. If you'd like to connect or discuss an opportunity, reach out directly.
        </p>

        <div class="grid sm:grid-cols-2 gap-4">
          <a
            data-animate style="--delay: 150ms"
            :href="`mailto:${profile.email}`"
            class="bg-card border border-stroke rounded-xl p-5 hover:border-accent/40 hover:bg-card-hover transition-all group"
          >
            <div class="text-xs text-ink-faint font-mono mb-2 uppercase tracking-widest">Email</div>
            <div class="text-ink group-hover:text-accent transition-colors font-medium text-base break-all">
              {{ profile.email }}
            </div>
          </a>

          <a
            data-animate style="--delay: 250ms"
            :href="profile.linkedin.url"
            target="_blank"
            rel="noopener noreferrer"
            class="bg-card border border-stroke rounded-xl p-5 hover:border-accent/40 hover:bg-card-hover transition-all group"
          >
            <div class="text-xs text-ink-faint font-mono mb-2 uppercase tracking-widest">LinkedIn</div>
            <div class="text-ink group-hover:text-accent transition-colors font-medium text-base">
              {{ profile.linkedin.display }}
            </div>
          </a>

          <a
            data-animate style="--delay: 350ms"
            :href="profile.github.url"
            target="_blank"
            rel="noopener noreferrer"
            class="bg-card border border-stroke rounded-xl p-5 hover:border-accent/40 hover:bg-card-hover transition-all group"
          >
            <div class="text-xs text-ink-faint font-mono mb-2 uppercase tracking-widest">GitHub</div>
            <div class="text-ink group-hover:text-accent transition-colors font-medium text-base">
              {{ profile.github.display }}
            </div>
          </a>

          <a
            data-animate style="--delay: 450ms"
            :href="profile.whatsapp.url"
            target="_blank"
            rel="noopener noreferrer"
            class="bg-card border border-stroke rounded-xl p-5 hover:border-accent/40 hover:bg-card-hover transition-all group"
          >
            <div class="text-xs text-ink-faint font-mono mb-2 uppercase tracking-widest">WhatsApp</div>
            <div class="text-ink group-hover:text-accent transition-colors font-medium text-base">
              {{ profile.whatsapp.display }}
            </div>
          </a>
        </div>
      </div>
    </div>
  </section>
</template>
