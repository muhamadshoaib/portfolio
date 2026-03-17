<script setup lang="ts">
const experience = [
  {
    role: 'Software Engineering Lead',
    company: 'LAAM',
    period: 'Current',
    type: 'current',
    highlights: [
      "Launched LAAM Reels — Pakistan's first shoppable fashion reels experience, enabling content-driven product discovery",
      "Scaled reels platform to 10K+ reels, 1K+ brands, and thousands of creators",
      "Mobile adoption drove the majority of orders during 11.11, LAAM's largest annual sales event",
      'Leading cross-functional mobile engineering team delivering high-performance React Native applications',
    ],
    tags: ['React Native', 'TypeScript', 'Engineering Leadership'],
  },
  {
    role: 'Mobile Commerce Platform',
    company: 'LAAM',
    period: 'iOS & Android',
    type: 'project',
    highlights: [
      'iOS: 572K+ downloads · 6M+ impressions · 8.4M+ sessions · 18.73% conversion rate',
      'Android: grew downloads from 91K → 686K · store listing users 1.3K → 254K · 7-day retention 144 → 665',
      'Built end-to-end: payments (Stripe, BNPL, COD), deep linking (50+ routes), push notifications (FCM), order management, returns (RMA)',
      'Analytics pipeline: Firebase, Statsig A/B testing, MoEngage, Meta Pixel, custom UTM attribution',
      'Performance: lazy-loaded homepage, CDN image optimization, FlatList tuning, Kotlin native module for Android memory pressure',
      '1,000+ commits across full product lifecycle',
    ],
    tags: ['React Native', 'TypeScript', 'iOS', 'Android', 'Stripe', 'Firebase'],
  },
  {
    role: 'Software Engineering Manager',
    company: 'LAAM',
    period: 'Prior Role',
    type: 'role',
    highlights: [
      'Led cross-functional engineering teams and owned delivery timelines end-to-end',
      'Mentored and onboarded 6+ junior engineers',
      'Established engineering standards: ESLint, Prettier, Husky, Commitlint',
      'Multi-environment CI/CD pipeline (dev / staging / prod)',
    ],
    tags: ['Leadership', 'Mentorship', 'CI/CD'],
  },
  {
    role: 'Backend & Platform Systems',
    company: 'LAAM',
    period: 'Python · Flask',
    type: 'role',
    highlights: [
      'Transaction Service: 20,000+ requests/day — automated profit calculation, tax workflows, ledger reconciliation',
      'Feedback & Moderation System: 9,000+ req/day — flagged and blocked 1M+ problematic products, built NPS system',
      'Vendor & Seller Platform (Flutter Web): 3M+ orders, 500K+ shipments, 1K+ daily active vendor users',
      'Integrated DHL and FedEx logistics APIs for shipping automation',
    ],
    tags: ['Python', 'Flask', 'Flutter Web', 'PostgreSQL'],
  },
  {
    role: 'Flutter Developer',
    company: 'StraightUP Technologies',
    period: '3 Months',
    type: 'role',
    highlights: ['Built Flutter mobile applications for client projects.'],
    tags: ['Flutter', 'Dart'],
  },
]
</script>

<template>
  <section id="experience" class="px-6 py-24">
    <div class="max-w-6xl mx-auto">
      <div data-animate class="section-heading">
        <h2 class="text-4xl font-black text-ink">Experience</h2>
      </div>

      <div class="space-y-5">
        <div
          v-for="(exp, i) in experience"
          :key="exp.role + exp.company"
          data-animate
          :style="`--delay: ${i * 100}ms`"
          class="bg-card border rounded-xl p-6 md:p-8 transition-all duration-200 hover:bg-card-hover"
          :class="exp.type === 'current' ? 'border-accent/40 hover:border-accent/60' : 'border-stroke hover:border-stroke-strong'"
        >
          <div class="flex flex-wrap items-start justify-between gap-4 mb-5">
            <div>
              <h3 class="text-lg md:text-xl font-bold text-ink leading-tight">{{ exp.role }}</h3>
              <div class="text-accent font-semibold text-sm mt-1">{{ exp.company }}</div>
            </div>
            <div class="flex items-center gap-2 shrink-0">
              <span
                v-if="exp.type === 'current'"
                class="bg-accent/15 text-accent text-xs font-semibold px-3 py-1 rounded-full border border-accent/30"
              >
                Current
              </span>
              <span class="text-ink-muted text-sm font-mono">{{ exp.period }}</span>
            </div>
          </div>

          <ul class="space-y-2 mb-5">
            <li v-for="h in exp.highlights" :key="h" class="text-ink-body text-sm flex gap-2 leading-relaxed">
              <span class="text-accent shrink-0 mt-0.5 font-bold">›</span>
              <span>{{ h }}</span>
            </li>
          </ul>

          <div class="flex flex-wrap gap-2">
            <span
              v-for="tag in exp.tags"
              :key="tag"
              class="bg-tag border border-stroke-hover text-ink-dim text-xs px-2.5 py-1 rounded-md font-mono"
            >
              {{ tag }}
            </span>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>
