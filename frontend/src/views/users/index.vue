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
    <vue-awesome-paginate
      :total-items="50"
      :items-per-page="5"
      :max-pages-shown="5"
      v-model="currentPage"
      :on-click="onPageChange"
      :show-breakpoint-buttons="false"
      :show-jump-buttons="true"
    />
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
      ],
      currentPage: 1
    }
  },
  mounted() {
    this.fetchUsersData()
  },
  computed: {
    ...mapGetters({ userInfo: 'user/userInfo' })
  },
  methods: {
    ...mapActions({ registeredUsers: 'user/registeredUsers' }),
    async fetchUsersData() {
      await this.registeredUsers(1)
      return (this.users = this.userInfo)
    },
    async onPageChange(page) {
      await this.registeredUsers(page)
      return (this.users = this.userInfo)
    }
  }
}
</script>

<style></style>
