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
    this.checkTokenExists()
  },
  watch: {
    '$route': {
      immediate: true,
      handler: 'checkTokenExists'
    }
  },
  methods: {
    checkTokenExists() {
      this.tokenExists = !!this.$cookies.get('auth-token')
      if (this.tokenExists){
        return this.$router.push('/home')
      }
      return this.$router.push('/')
    }
  }
}
</script>s