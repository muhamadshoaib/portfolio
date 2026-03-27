<script setup lang="ts">
const education = [
  {
    degree: 'BSCS',
    school: 'FAST — National University of Computer and Emerging Sciences',
    period: 'AUG 2016 – JUL 2020',
  },
  {
    degree: 'FSC',
    school: 'Punjab College Faisalabad',
    period: '2014 – 2016',
  },
]

const certifications = [
  { title: 'Flutter Puzzle Hack', issuer: 'Flutter', year: '2022' },
  { title: 'Flutter Development Bootcamp with Dart', issuer: 'The App Brewery', year: '2020' },
  { title: 'Level 2 Seller', issuer: 'Fiverr', year: '' },
  { title: 'Rising Talent', issuer: 'Upwork', year: '' },
]
</script>

<template>
  <section class="px-6 py-16">
    <div class="max-w-7xl mx-auto">
      <div data-animate class="section-heading">
        <h2 class="text-5xl font-black text-ink">Education & Certifications</h2>
      </div>

      <div class="grid md:grid-cols-2 gap-10">
        <!-- Education -->
        <div>
          <p data-animate class="text-xs font-semibold text-ink-muted uppercase tracking-widest mb-6 font-mono">Education</p>
          <div class="space-y-4">
            <div
              v-for="(edu, i) in education"
              :key="edu.degree"
              data-animate
              :style="`--delay: ${(i + 1) * 100}ms`"
              class="bg-card border border-stroke rounded-xl p-5 hover:border-stroke-hover transition-colors"
            >
              <div class="text-accent font-bold text-lg font-mono">{{ edu.degree }}</div>
              <div class="text-ink font-medium mt-1 text-base leading-snug">{{ edu.school }}</div>
              <div class="text-ink-muted text-sm mt-2 font-mono">{{ edu.period }}</div>
            </div>
          </div>
        </div>

        <!-- Certifications -->
        <div>
          <p data-animate style="--delay: 100ms" class="text-xs font-semibold text-ink-muted uppercase tracking-widest mb-6 font-mono">Certifications & Achievements</p>
          <div class="space-y-3">
            <div
              v-for="(cert, i) in certifications"
              :key="cert.title"
              data-animate
              :style="`--delay: ${(i + 2) * 100}ms`"
              class="bg-card border border-stroke rounded-xl p-4 flex items-center gap-4 hover:border-stroke-hover transition-colors"
            >
              <div class="w-9 h-9 bg-accent/10 border border-accent/20 rounded-lg flex items-center justify-center shrink-0">
                <svg class="w-4 h-4 text-accent" fill="currentColor" viewBox="0 0 24 24">
                  <path d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"/>
                </svg>
              </div>
              <div>
                <div class="text-ink font-medium text-base">{{ cert.title }}</div>
                <div class="text-ink-muted text-sm mt-0.5">
                  {{ cert.issuer }}<span v-if="cert.year"> · {{ cert.year }}</span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>
