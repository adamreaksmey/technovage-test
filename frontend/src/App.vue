<script setup>
import { RouterView } from 'vue-router'
import MainLayout from './components/layout/main.vue'
</script>

<template>
  <main>
    <MainLayout>
      <RouterView />
    </MainLayout>
  </main>
</template>
