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
import { mapActions } from 'vuex'

export default {
  data() {
    return {
      userInfo: {
        email: '',
        password: ''
      },
      form: {
        data: null
      }
    }
  },

  computed: {
    //
  },

  methods: {
    ...mapActions({ loginUser: 'auth/loginUser' }),

    async login(event) {
      event.preventDefault()
      if (this.userInfo.email && this.userInfo.password) {
        await this.loginUser({
          data: this.userInfo
        })
        return
      }
      return console.log('no empty fields')
    }
  }
}
</script>
