<template>
  <div>
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
  </div>
</template>
<script>
import { mapActions, mapGetters } from 'vuex'
export default {
  name: 'Purchases',
  data() {
    return {
      users: null,
      purchases: null
    }
  },
  mounted() {
    this.getPurchases()
  },
  computed: {
    ...mapGetters({
      getPurchase: 'purchases/getPurchase'
    })
  },
  methods: {
    ...mapActions({
      fetchPurchases: 'purchases/fetchPurchases'
    }),
    async getPurchases() {
      await this.fetchPurchases()
      this.purchases = this.getPurchase
      return
    }
  }
}
</script>
