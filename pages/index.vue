<script setup lang="ts">
useHead({ title: 'Muhammad Shoaib — Engineering Lead' })
useScrollAnimation()
</script>

<template>
  <div class="bg-base text-ink font-sans antialiased">
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
