<template>
  <div class="login-container">
    <label class="login-label">
      <h3 class="alert-heading">Login below</h3>
    </label>
    <CForm @submit="login">
      <div class="form-group">
        <label for="email">Email:</label>
        <input required type="email" id="email" v-model="userInfo.email" class="form-control" />
      </div>
      <div class="form-group">
        <label for="password">Password:</label>
        <input
          required
          type="password"
          id="password"
          v-model="userInfo.password"
          class="form-control"
        />
      </div>
      <CButton color="primary" type="submit">Submit</CButton>
    </CForm>
  </div>
</template>

<script>
import { mapActions, mapGetters } from 'vuex'

export default {
  data() {
    return {
      userInfo: {
        email: '',
        password: ''
      },
      form: {
        axios: null,
        data: null
      }
    }
  },

  computed: {
    ...mapGetters('auth', ['authToken'])
  },

  methods: {
    ...mapActions('auth', { loginUser: 'loginUser' }),

    async login(event) {
      event.preventDefault()
      if (this.userInfo.email && this.userInfo.password) {
        await this.loginUser({
          axios: this.$axios,
          data: this.userInfo
        })
        this.$router.push('/home')
        return this.$cookies.set('auth-token', this.authToken, { expires: 7 });
      }
      return console.log('no empty fields')
    }
  }
}
</script>
