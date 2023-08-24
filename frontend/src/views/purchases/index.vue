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
  name: 'Purchases',
  data() {
    return {
      users: [
        {
          name: 'adam',
          email: 'adaminiature@gmail.com',
          registration_date: '10/15/2003',
          phone: '011252664',
          address: 'Siem Reap, Cambodia',
          score: '100'
        }
      ]
    }
  },
  mounted() {},
  computed: {
    // ...mapGetters('')
  }
}
</script>
