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
import { mapActions, mapGetters } from 'vuex'
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
  computed: {
    ...mapGetters('auth', ['isAuthorized']),
    ...mapGetters('user', ['userInfo'])
  },
  watch: {
    $route: {
      immediate: true,
      handler: 'checkTokenExists'
    }
  },
  methods: {
    ...mapActions('user', ['userLog']),
    // console.log(this.userInfo)

    async checkTokenExists() {
      this.tokenExists = !!this.isAuthorized

      if (!this.tokenExists) {
        return this.$router.push('/')
      } else {
        await this.userLog()
        if (this.$route.path === '/') {
          return this.$router.push('/home')
        }
      }
    }
  }
}
</script>
