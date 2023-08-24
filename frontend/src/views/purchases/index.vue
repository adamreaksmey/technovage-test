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
    <vue-awesome-paginate
      :total-items="50"
      :items-per-page="5"
      :max-pages-shown="5"
      v-model="currentPage"
      :on-click="onClickHandler"
      :show-breakpoint-buttons="false"
      :show-jump-buttons="true"
    />
  </div>
</template>
<script>
import { mapActions, mapGetters } from 'vuex'
export default {
  name: 'Purchases',
  data() {
    return {
      users: null,
      purchases: null,
      currentPage: 1
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
      await this.fetchPurchases(this.currentPage)
      this.purchases = this.getPurchase
      return
    },
    async onClickHandler(page) {
      await this.fetchPurchases(page)
      this.purchases = this.getPurchase
    }
  }
}
</script>
