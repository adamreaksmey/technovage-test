<template>
  <div>
    <div class="mb-3 d-flex">
      <input v-model="searchTerm" type="text" class="form-control w-50" placeholder="Search" />
    </div>
    <TablePurchases :purchases="filteredPurchases" />
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
      currentPage: 1,
      searchTerm: ''
    }
  },
  computed: {
    ...mapGetters({
      getPurchase: 'purchases/getPurchase'
    }),
    filteredPurchases() {
      if (!this.searchTerm) {
        return this.getPurchase
      }
      const searchTerm = this.searchTerm.toLowerCase()
      return this.getPurchase.filter((purchase) => {
        return (
          purchase.user.name.toLowerCase().includes(searchTerm) ||
          purchase.user.phone_number.toLowerCase().includes(searchTerm)
        )
      })
    },
  },
  methods: {
    ...mapActions({
      fetchPurchases: 'purchases/fetchPurchases'
    }),
    async onPageChange(page) {
      await this.fetchPurchases(page)
    },
    async getPurchases() {
      await this.fetchPurchases(this.currentPage)
    }
  },
  created() {
    this.getPurchases()
  }
}
</script>
