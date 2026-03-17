/** @type {import('tailwindcss').Config} */
module.exports = {
  darkMode: 'class',
  content: [
    './components/**/*.{js,vue,ts}',
    './layouts/**/*.vue',
    './pages/**/*.vue',
    './plugins/**/*.{js,ts}',
    './app.vue',
    './error.vue',
  ],
  theme: {
    extend: {
      colors: {
        // Accent (same in both themes)
        accent: {
          DEFAULT: '#ff8828',
          hover: '#e67620',
        },
        // Background scale — driven by CSS variables
        base: 'var(--color-base)',
        section: 'var(--color-section)',
        card: {
          DEFAULT: 'var(--color-card)',
          hover: 'var(--color-card-hover)',
        },
        subtle: 'var(--color-subtle)',
        tag: 'var(--color-tag)',
        // Border / stroke scale — driven by CSS variables
        stroke: {
          DEFAULT: 'var(--color-stroke)',
          faint: 'var(--color-stroke-faint)',
          hover: 'var(--color-stroke-hover)',
          strong: 'var(--color-stroke-strong)',
          stronger: 'var(--color-stroke-stronger)',
        },
        // Semantic text scale — driven by CSS variables
        ink: {
          DEFAULT: 'var(--text-ink)',       // primary text
          body: 'var(--text-ink-body)',     // body paragraphs
          dim: 'var(--text-ink-dim)',       // secondary body
          muted: 'var(--text-ink-muted)',   // labels, captions
          faint: 'var(--text-ink-faint)',   // very muted
          ghost: 'var(--text-ink-ghost)',   // barely visible
        },
        // Brand
        linkedin: {
          DEFAULT: '#0A66C2',
          hover: '#0958a8',
        },
      },
      fontFamily: {
        sans: ['Inter', 'sans-serif'],
        mono: ['JetBrains Mono', 'monospace'],
      },
    },
  },
  plugins: [],
}
