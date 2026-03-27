<script setup lang="ts">
useHead({ title: 'Muhammad Shoaib — Engineering Lead' })
useScrollAnimation()
</script>

<template>
  <div class="bg-base text-ink font-sans antialiased pb-12">
    <AppNav />
    <SocialSidebar />
    <EmailSidebar />

    <HeroSection />
    <AboutSection />
    <ExperienceSection />
    <SkillsSection />
    <EducationSection />
    <ContactSection />

    <AppFooter />
  </div>
</template>
