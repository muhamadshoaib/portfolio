export default defineNuxtConfig({
  modules: ['@nuxtjs/tailwindcss'],
  css: ['~/assets/css/main.css'],
  components: [{ path: '~/components', pathPrefix: false }],
  app: {
    baseURL: '/portfolio/',
    head: {
      title: 'Muhammad Shoaib — Software Engineering Lead | Mobile & Full-Stack Engineer',
      htmlAttrs: { lang: 'en' },
      meta: [
        { charset: 'utf-8' },
        { name: 'viewport', content: 'width=device-width, initial-scale=1' },
        {
          name: 'description',
          content:
            'Muhammad Shoaib is a Software Engineering Lead with 6+ years of experience building scalable mobile and backend systems. Expert in React Native, Flutter, TypeScript, Python, and GCP. Led a mobile commerce platform to ~1.3M downloads across iOS and Android.',
        },
        {
          name: 'keywords',
          content:
            'Muhammad Shoaib, Software Engineering Lead, Engineering Manager, React Native, Flutter, TypeScript, Python, Mobile Engineer, Full-Stack Engineer, GCP, Firebase, PostgreSQL, FastAPI, Django, Flask, Nuxt.js, Vue.js, iOS, Android, Mobile Commerce, LAAM, Lahore Pakistan',
        },
        { name: 'author', content: 'Muhammad Shoaib' },
        { name: 'robots', content: 'index, follow' },
        // Open Graph
        { property: 'og:type', content: 'website' },
        { property: 'og:title', content: 'Muhammad Shoaib — Software Engineering Lead' },
        {
          property: 'og:description',
          content: 'Software Engineering Lead with 6+ years building scalable mobile and backend systems. React Native · Flutter · TypeScript · Python · GCP.',
        },
        { property: 'og:image', content: 'https://res.cloudinary.com/dtlk6qezt/image/upload/w_1200,h_630,c_fill,g_face,q_auto,f_auto/v1774651094/IMG_0144_pgwvdp.jpg' },
        // Twitter Card
        { name: 'twitter:card', content: 'summary_large_image' },
        { name: 'twitter:title', content: 'Muhammad Shoaib — Software Engineering Lead' },
        {
          name: 'twitter:description',
          content: 'Software Engineering Lead with 6+ years building scalable mobile and backend systems.',
        },
        { name: 'twitter:image', content: 'https://res.cloudinary.com/dtlk6qezt/image/upload/w_1200,h_630,c_fill,g_face,q_auto,f_auto/v1774651094/IMG_0144_pgwvdp.jpg' },
      ],
      script: [
        // Dark mode: must run before paint to avoid flash
        {
          innerHTML: `(function(){var t=localStorage.getItem('theme');if(t==='dark'||t===null){document.documentElement.classList.add('dark')}})()`,
          type: 'text/javascript',
        },
        // JSON-LD structured data (Person schema)
        {
          type: 'application/ld+json',
          innerHTML: JSON.stringify({
            '@context': 'https://schema.org',
            '@type': 'Person',
            name: 'Muhammad Shoaib',
            jobTitle: 'Software Engineering Lead',
            description: 'Software Engineering Lead with 6+ years of experience building scalable mobile and backend systems.',
            url: 'https://muhamadshoaib.github.io/portfolio/',
            image: 'https://res.cloudinary.com/dtlk6qezt/image/upload/w_400,h_400,c_fill,g_face,q_auto,f_auto/v1774651094/IMG_0144_pgwvdp.jpg',
            email: 'muhamad.shoaib@aol.com',
            telephone: '+92-306-7266771',
            address: {
              '@type': 'PostalAddress',
              addressLocality: 'Faisalabad',
              addressCountry: 'PK',
            },
            sameAs: [
              'https://www.linkedin.com/in/muhamadshoaib/',
              'https://github.com/MuhamadShoaib',
            ],
            knowsAbout: [
              'React Native', 'Flutter', 'TypeScript', 'Python', 'Mobile Engineering',
              'Backend Development', 'Google Cloud Platform', 'Firebase', 'PostgreSQL',
              'Engineering Leadership', 'FastAPI', 'Django', 'Flask', 'Nuxt.js', 'Vue.js',
            ],
            alumniOf: {
              '@type': 'CollegeOrUniversity',
              name: 'FAST — National University of Computer and Emerging Sciences',
            },
            worksFor: {
              '@type': 'Organization',
              name: 'LAAM Technologies',
            },
          }),
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
