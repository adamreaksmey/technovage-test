<template>
  <main>
    <MainLayout v-if="tokenExists">
      <RouterView />
    </MainLayout>
    <LoginLayout v-else>
      <RouterView />
    </LoginLayout>
  </main>
</template>

<script setup>
import { RouterView } from 'vue-router'
import MainLayout from './components/layout/main.vue'
import LoginLayout from './components/layout/login.vue'
import { mapGetters } from 'vuex'
</script>

<script>
export default {
  data() {
    return {
      tokenExists: false,
      user: null
    }
  },
  created() {
    this.checkTokenExists()
  },
  computed: {
    ...mapGetters({
      isAuthorized: 'auth/isAuthorized'
    })
  },
  watch: {
    $route: {
      immediate: true,
      handler: 'checkTokenExists'
    }
  },
  methods: {
    async checkTokenExists() {
      this.tokenExists = this.isAuthorized
      if (!this.isAuthorized && this.$route.name !== 'home') {
        return this.$router.push('/')
      }
      if ((this.isAuthorized && this.$route.name == 'undefined') || this.$route.name == 'login') {
        return this.$router.push('/home')
      }
    }
  }
}
</script>
