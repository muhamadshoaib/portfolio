export default defineNuxtConfig({
  modules: ['@nuxtjs/tailwindcss'],
  css: ['~/assets/css/main.css'],
  components: [{ path: '~/components', pathPrefix: false }],
  app: {
    baseURL: '/portfolio/',
    head: {
      title: 'Muhammad Shoaib — Engineering Lead',
      meta: [
        { charset: 'utf-8' },
        { name: 'viewport', content: 'width=device-width, initial-scale=1' },
        {
          name: 'description',
          content:
            'Muhammad Shoaib — Engineering Lead, Mobile Platform Builder, Full-Stack Engineer. 6+ years building production systems at scale.',
        },
        { property: 'og:title', content: 'Muhammad Shoaib — Engineering Lead' },
        {
          property: 'og:description',
          content: 'Building scalable products that drive real business impact.',
        },
      ],
      link: [
        { rel: 'preconnect', href: 'https://fonts.googleapis.com' },
        {
          rel: 'preconnect',
          href: 'https://fonts.gstatic.com',
          crossorigin: '',
        },
        {
          rel: 'stylesheet',
          href: 'https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&family=JetBrains+Mono:wght@400;500&display=swap',
        },
      ],
    },
  },
})
