<template>
  <div>
    <table class="table">
      <thead>
        <tr>
          <th>Name</th>
          <th>Email</th>
          <th>Registration Date</th>
          <th>Phone</th>
          <th>Address</th>
          <th>Score</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="user in users" :key="user.id">
          <td>{{ user.name }}</td>
          <td>{{ user.email }}</td>
          <td>{{ user.registration_date }}</td>
          <td>{{ user.phone }}</td>
          <td>{{ user.address }}</td>
          <td>{{ user.score }}</td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script>
import { mapActions, mapGetters } from 'vuex'
export default {
  name: 'UserTable',
  data() {
    return {
      users: [
        {
          name: 'adam',
          email: 'adaminiature@gmail.com',
          api_token: 'token testing',
          custom: 'custom field'
        }
      ]
    }
  },
  mounted() {
    this.fetchUsersData()
  },
  computed: {
    ...mapGetters('user', ['userInfo'])
  },
  methods: {
    ...mapActions('user', ['registeredUsers']),
    async fetchUsersData() {
      await this.registeredUsers()
      return (this.users = this.userInfo)
    }
  }
}
</script>

<style></style>
