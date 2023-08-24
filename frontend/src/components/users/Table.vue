<template>
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
</template>

<script>
export default {
  name: 'UsersData',
  props: {
    users: {
      type: Array,
      required: true
    }
  }
}
</script>
