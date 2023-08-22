<template>
  <main>
    <MainLayout v-if="tokenExists">
      <RouterView />
    </MainLayout>
    <RouterView v-else />
  </main>
</template>

<script setup>
import { RouterView } from 'vue-router'
import MainLayout from './components/layout/main.vue'
</script>

<script>
export default {
  data() {
    return {
      tokenExists: false
    }
  },
  created() {
    this.tokenExists = !!localStorage.getItem('auth-token');
  }
}
</script>