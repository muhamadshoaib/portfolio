<script setup lang="ts">
const techStack = [
  { category: 'Languages', items: ['TypeScript', 'Python', 'Dart', 'Go', 'SQL', 'GraphQL'] },
  { category: 'Mobile', items: ['React Native', 'Flutter', 'Android'] },
  { category: 'Frontend', items: ['Nuxt.js', 'Vue.js'] },
  { category: 'Backend', items: ['Flask', 'Django', 'FastAPI', 'REST APIs', 'Microservices'] },
  { category: 'Databases', items: ['PostgreSQL', 'MySQL', 'MongoDB'] },
  { category: 'Cloud', items: ['GCP', 'Firebase', 'Cloud Run', 'BigQuery'] },
  { category: 'State & Data', items: ['TanStack Query', 'Recoil', 'Bloc', 'Provider'] },
  { category: 'Analytics', items: ['Firebase Analytics', 'Statsig', 'MoEngage', 'Meta Pixel'] },
  { category: 'Observability', items: ['Sentry'] },
  { category: 'Tooling', items: ['Docker', 'ESLint', 'Prettier', 'Husky', 'Commitlint'] },
]
</script>

<template>
  <section id="skills" class="px-6 py-24 bg-section">
    <div class="max-w-6xl mx-auto">
      <div data-animate class="section-heading">
        <h2 class="text-4xl font-black text-ink">Tech Stack</h2>
      </div>

      <div class="grid sm:grid-cols-2 lg:grid-cols-4 xl:grid-cols-5 gap-4">
        <div
          v-for="(group, i) in techStack"
          :key="group.category"
          data-animate
          :style="`--delay: ${i * 60}ms`"
          class="bg-card border border-stroke rounded-xl p-5 hover:border-stroke-hover transition-colors"
        >
          <h3 class="text-xs font-semibold text-accent uppercase tracking-widest mb-4 font-mono">
            {{ group.category }}
          </h3>
          <div class="flex flex-wrap gap-2">
            <span
              v-for="item in group.items"
              :key="item"
              class="bg-subtle border border-stroke-faint text-ink-body text-xs px-2.5 py-1 rounded-md font-mono"
            >
              {{ item }}
            </span>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>
