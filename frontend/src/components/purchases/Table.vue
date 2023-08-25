<template>
  <table class="table">
    <thead>
      <tr>
        <th>Customer ID</th>
        <th>Customer</th>
        <th>Phone</th>
        <th>Amount</th>
        <th>Created At</th>
      </tr>
    </thead>
    <tbody>
      <tr v-for="purchase in purchases" :key="purchase.id">
        <td>{{ purchase.customer_id }}</td>
        <td>{{ purchase.user.name }}</td>
        <td>{{ purchase.user.phone_number }}</td>
        <td>{{ purchase.amount }}</td>
        <td>{{ purchase.created_at }}</td>
        <td><CButton color="primary" @click="updatePurchase(purchase.id)">Update</CButton></td>
      </tr>
    </tbody>
  </table>
</template>

<script>
export default {
  name: 'TablePurchases',
  props: {
    purchases: {
      type: Array,
      required: true
    }
  },
  methods: {
    updatePurchase(id) {
      return this.$router.push(`/purchase/${id}`)
    }
  }
}
</script>
