<template>
  <div>
    <TablePurchases :purchases="purchases" />
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
import TablePurchases from '../../components/purchases/Table.vue'
export default {
  name: 'Purchases',
  components: {
    TablePurchases
  },
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
    async onPageChange(page) {
      await this.fetchPurchases(page)
      this.purchases = this.getPurchase
    }
  }
}
</script>
