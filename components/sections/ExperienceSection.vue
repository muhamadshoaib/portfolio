<script setup lang="ts">
const experience = [
  {
    role: 'Software Engineering Lead',
    company: 'LAAM',
    period: 'Mar 2026 – Present',
    type: 'current',
    highlights: [
      "Launched LAAM Reels, Pakistan's first shoppable fashion reels. Users buy directly from video.",
      'Scaled to 10K+ reels, 1K+ brands, and thousands of creators',
      "Mobile drove the majority of orders during 11.11, LAAM's largest sales event",
      'Leading the mobile engineering team shipping React Native apps at scale',
    ],
    tags: ['React Native', 'TypeScript', 'Engineering Leadership'],
  },
  {
    role: 'Mobile Commerce Platform',
    company: 'LAAM',
    period: 'Feb 2025 – Mar 2026',
    type: 'project',
    highlights: [
      'iOS: 572K+ downloads · 6M+ impressions · 8.4M+ sessions · 18.73% conversion rate',
      'Android: grew downloads from 91K → 686K · store listing users 1.3K → 254K · 7-day retention 144 → 665',
      'Payments: Stripe, JazzCash BNPL, COD, rewards redemption, coupon validation, address validation via Google Places API',
      'Deep linking (50+ routes), push notifications (FCM), order management, returns (RMA)',
      'Analytics pipeline: Firebase, Statsig A/B testing, MoEngage, Meta Pixel, custom UTM attribution',
      'Performance: lazy-loaded homepage, CDN image optimization, FlatList tuning, Kotlin native module for Android memory pressure',
      '1,000+ commits across full product lifecycle',
    ],
    tags: ['React Native', 'TypeScript', 'iOS', 'Android', 'Stripe', 'Firebase'],
  },
  {
    role: 'Software Engineering Manager',
    company: 'LAAM',
    period: 'Oct 2023 – Feb 2025',
    type: 'role',
    highlights: [
      'Managed engineering teams across platform services, seller systems, and marketplace infrastructure',
      'Mentored and onboarded 6+ junior engineers',
      'Established engineering standards: ESLint, Prettier, Husky, Commitlint',
      'Multi-environment CI/CD pipeline (dev / staging / prod)',
    ],
    tags: ['Leadership', 'Mentorship', 'CI/CD'],
  },
  {
    role: 'Backend & Platform Systems',
    company: 'LAAM',
    period: 'Oct 2020 – Sep 2023',
    type: 'role',
    highlights: [
      'Transaction Service: 20,000+ requests/day. Automated profit calculation, tax workflows, ledger reconciliation.',
      'Feedback & Moderation: 9,000+ req/day. Flagged and blocked 1M+ problematic products, built NPS system.',
      'Vendor Platform (Flutter Web): 3M+ orders, 500K+ shipments, 1K+ daily active vendor users.',
      'Integrated DHL and FedEx logistics APIs for shipping automation',
    ],
    tags: ['Python', 'Flask', 'Flutter Web', 'PostgreSQL'],
  },
  {
    role: 'Flutter Developer',
    company: 'StraightUP Technologies',
    period: 'Jul 2020 – Sep 2020',
    type: 'role',
    highlights: [
      'Built Flutter mobile application (QOL Products) using Bloc state management.',
      'Translated Figma designs into clean, working interfaces.',
    ],
    tags: ['Flutter', 'Dart', 'Bloc'],
  },
  {
    role: 'Freelance Mobile Developer',
    company: 'Independent',
    period: '2020 – 2021',
    type: 'role',
    highlights: [
      'Doodle (Doodel.se): built mobile features for a Swedish client.',
      'Zenvoice: built voice-driven features and engagement flows.',
      'Scholarship SPY: Django recommendation system using NLP (LDA, FastText, Cosine Similarity).',
    ],
    tags: ['Flutter', 'Dart', 'Django', 'Python', 'NLP'],
  },
]
</script>

<template>
  <section id="experience" class="px-6 py-24">
    <div class="max-w-7xl mx-auto">
      <div data-animate class="section-heading">
        <h2 class="text-5xl font-black text-ink">Experience</h2>
      </div>

      <div class="relative mt-16">
        <!-- Gradient timeline spine -->
        <div class="absolute left-[15px] top-8 bottom-4 w-px bg-gradient-to-b from-accent via-stroke to-stroke" />

        <div class="space-y-7">
          <div
            v-for="(exp, i) in experience"
            :key="exp.role + exp.company"
            data-animate
            :style="`--delay: ${i * 100}ms`"
            class="relative pl-12 md:pl-14"
          >
            <!-- Timeline node -->
            <div class="absolute left-0 top-5 z-10">
              <span
                v-if="exp.type === 'current'"
                class="absolute inset-0 w-8 h-8 rounded-full bg-accent/30 animate-ping"
              />
              <div
                class="w-8 h-8 rounded-full flex items-center justify-center border-2"
                :class="exp.type === 'current'
                  ? 'bg-accent border-accent shadow-[0_0_16px_6px_rgba(255,136,40,0.35)]'
                  : exp.type === 'project'
                    ? 'bg-card border-accent/40'
                    : 'bg-card border-stroke'"
              >
                <svg v-if="exp.type === 'project'" class="w-3.5 h-3.5 text-accent" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 18h.01M8 21h8a2 2 0 002-2V5a2 2 0 00-2-2H8a2 2 0 00-2 2v14a2 2 0 002 2z" />
                </svg>
                <svg v-else-if="exp.type === 'current'" class="w-3.5 h-3.5 text-white" fill="currentColor" viewBox="0 0 24 24">
                  <path d="M13 10V3L4 14h7v7l9-11h-7z" />
                </svg>
                <span v-else class="w-2 h-2 rounded-full bg-stroke-stronger" />
              </div>
            </div>

            <!-- CURRENT: gradient border card -->
            <div
              v-if="exp.type === 'current'"
              class="p-px rounded-2xl bg-gradient-to-br from-accent/50 via-accent/20 to-transparent"
            >
              <div class="rounded-[14px] bg-card p-6 md:p-8">
                <div class="flex flex-wrap items-center justify-between gap-2 mb-1">
                  <div class="flex items-center gap-2">
                    <span class="text-xs font-mono font-semibold text-accent bg-accent/10 px-2.5 py-1 rounded-md">{{ exp.company }}</span>
                    <span class="flex items-center gap-1.5 text-xs font-semibold text-accent bg-accent/10 border border-accent/25 px-2.5 py-1 rounded-full">
                      <span class="w-1.5 h-1.5 rounded-full bg-accent animate-pulse" />
                      Live
                    </span>
                  </div>
                  <span class="text-xs font-mono text-ink-dim bg-subtle px-3 py-1.5 rounded-lg">{{ exp.period }}</span>
                </div>
                <h3 class="text-xl md:text-2xl font-bold text-ink mb-5">{{ exp.role }}</h3>

                <ul class="space-y-2.5 mb-6">
                  <li v-for="h in exp.highlights" :key="h" class="flex gap-3 leading-relaxed">
                    <span class="shrink-0 mt-0.5 font-bold text-base" style="color: #ff8828">›</span>
                    <span class="highlight-text text-sm md:text-base">{{ h }}</span>
                  </li>
                </ul>

                <div class="flex flex-wrap gap-1.5 pt-5 border-t border-stroke">
                  <span
                    v-for="tag in exp.tags"
                    :key="tag"
                    class="text-xs font-mono px-2.5 py-1 rounded-md bg-accent/10 border border-accent/20 text-accent"
                  >{{ tag }}</span>
                </div>
              </div>
            </div>

            <!-- PROJECT: accent top-stripe card -->
            <div
              v-else-if="exp.type === 'project'"
              class="rounded-2xl border border-accent/20 bg-card overflow-hidden hover:border-accent/40 hover:bg-card-hover transition-all duration-200"
            >
              <div class="h-0.5 bg-gradient-to-r from-accent via-accent/40 to-transparent" />
              <div class="p-6 md:p-8">
                <div class="flex flex-wrap items-center justify-between gap-2 mb-1">
                  <span class="text-xs font-mono font-semibold text-accent bg-accent/10 px-2.5 py-1 rounded-md">{{ exp.company }}</span>
                  <span class="text-xs font-mono text-ink-dim bg-subtle px-3 py-1.5 rounded-lg">{{ exp.period }}</span>
                </div>
                <h3 class="text-xl md:text-2xl font-bold text-ink mb-5">{{ exp.role }}</h3>

                <ul class="space-y-2.5 mb-6">
                  <li v-for="h in exp.highlights" :key="h" class="flex gap-3 leading-relaxed">
                    <span class="shrink-0 mt-0.5 font-bold text-base" style="color: #ff8828">›</span>
                    <span class="highlight-text text-sm md:text-base">{{ h }}</span>
                  </li>
                </ul>

                <div class="flex flex-wrap gap-1.5 pt-5 border-t border-stroke">
                  <span
                    v-for="tag in exp.tags"
                    :key="tag"
                    class="text-xs font-mono px-2.5 py-1 rounded-md bg-tag border border-stroke-hover text-ink-dim"
                  >{{ tag }}</span>
                </div>
              </div>
            </div>

            <!-- DEFAULT: clean card -->
            <div
              v-else
              class="rounded-2xl border border-stroke bg-card overflow-hidden hover:border-stroke-strong hover:bg-card-hover transition-all duration-200 group"
            >
              <div class="h-px bg-gradient-to-r from-stroke-strong via-stroke to-transparent group-hover:from-accent/30 transition-colors duration-300" />
              <div class="p-6 md:p-8">
                <div class="flex flex-wrap items-center justify-between gap-2 mb-1">
                  <span class="text-xs font-mono font-semibold text-accent bg-accent/10 px-2.5 py-1 rounded-md">{{ exp.company }}</span>
                  <span class="text-xs font-mono text-ink-dim bg-subtle px-3 py-1.5 rounded-lg">{{ exp.period }}</span>
                </div>
                <h3 class="text-xl md:text-2xl font-bold text-ink mb-5">{{ exp.role }}</h3>

                <ul class="space-y-2.5 mb-6">
                  <li v-for="h in exp.highlights" :key="h" class="flex gap-3 leading-relaxed">
                    <span class="shrink-0 mt-0.5 font-bold text-base" style="color: #ff8828">›</span>
                    <span class="highlight-text text-sm md:text-base">{{ h }}</span>
                  </li>
                </ul>

                <div class="flex flex-wrap gap-1.5 pt-5 border-t border-stroke">
                  <span
                    v-for="tag in exp.tags"
                    :key="tag"
                    class="text-xs font-mono px-2.5 py-1 rounded-md bg-tag border border-stroke-hover text-ink-dim"
                  >{{ tag }}</span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<style scoped>
.highlight-text {
  color: var(--text-ink);
}
</style>
