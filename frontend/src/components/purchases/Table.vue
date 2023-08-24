<template>
  <table class="table">
    <thead>
      <tr>
        <th>Customer ID</th>
        <th>Amount</th>
        <th>Created At</th>
      </tr>
    </thead>
    <tbody>
      <tr v-for="purchase in purchases" :key="purchase.id">
        <td>{{ purchase.customer_id }}</td>
        <td>{{ purchase.amount }}</td>
        <td>{{ purchase.created_at }}</td>
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
  }
}
</script>
