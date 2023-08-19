<template>
  <div class="login-container">
    <label class="login-label">
      <h3 class="alert-heading">Login below</h3>
    </label>
    <CForm @submit="login">
      <div class="form-group">
        <label for="email">Email:</label>
        <input type="email" id="email" v-model="email" class="form-control" />
      </div>
      <div class="form-group">
        <label for="password">Password:</label>
        <input type="password" id="password" v-model="password" class="form-control" />
      </div>
      <CButton color="primary">Submit</CButton>
    </CForm>
  </div>
</template>

<script>
export default {
  data() {
    return {
      email: '',
      password: ''
    }
  },
  methods: {
    login(event) {
      event.preventDefault()
      if (this.email && this.password) {
        console.log('Logged in')
      } else {
        console.log('Please fill in all fields')
      }
    }
  }
}
</script>
