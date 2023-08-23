<template>
  <div>
    <table class="table">
      <thead>
        <tr>
          <th>Name</th>
          <th>Email</th>
          <th>API Token</th>
          <th>Custom</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="user in users" :key="user.id">
          <td>{{ user.name }}</td>
          <td>{{ user.email }}</td>
          <td>{{ user.api_token }}</td>
          <td>{{ user.custom }}</td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script>
export default {
  name: 'UserTable',
  data() {
    return {
      users: [] // Initialize an empty array for storing users
    }
  },
  mounted() {
    // Call your API function here to fetch users and update the "users" array
    // Example: this.fetchUsers();
  },
  methods: {
    // Define your API function to fetch users
    // fetchUsers() {
    //   // Make an API call and update the "users" array
    // },
  }
}
</script>

<style>
/* Add any additional styling here */
</style>
