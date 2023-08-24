<template>
  <div class="container">
    <h1>Purchase Detail</h1>
    <div class="form-group">
      <label for="name">Name:</label>
      <input type="text" id="name" class="form-control" v-model="form.user.name" disabled />
    </div>
    <div class="form-group">
      <label for="name">Amount Purchased:</label>
      <input type="text" id="amount" class="form-control" v-model="form.amount" disabled />
    </div>
    <div class="form-group">
      <label for="purchaseId">Customer ID:</label>
      <input type="text" id="purchaseId" class="form-control" v-model="form.id" disabled />
    </div>
    <div class="form-group">
      <label for="createdAt">Created At:</label>
      <input type="text" id="createdAt" class="form-control" v-model="form.created_at" disabled />
    </div>
    <CButton class="mt-2" color="primary" @click="updatePurchase">Update detail</CButton>
  </div>
</template>

<script>
import { mapActions, mapGetters } from 'vuex'
import { toRaw } from 'vue'
export default {
  name: 'PurchaseUpdate',
  data() {
    return {
      form: {
        user: {
          name: null
        },
        amount: null,
        id: null,
        created_at: null
      }
    }
  },
  mounted() {
    this.purchaseId = this.$route.params.id
    const today = new Date()
    this.createdAt = today.toISOString().split('T')[0]
    this.getSingleData()
  },
  computed: {
    ...mapGetters({ getSingle: 'purchases/getSinglePurchase' })
  },
  methods: {
    ...mapActions({
      fetchSingle: 'purchases/fetchPurchase',
      actionUpdatePurchase: 'purchases/updatePurchase'
    }),
    async getSingleData() {
      await this.fetchSingle(this.purchaseId)
      this.form = this.getSingle
    },

    async updatePurchase() {
      const raw = toRaw(this.form)
      console.log(raw)
      await this.actionUpdatePurchase({ data: raw })
    }
  }
}
</script>

<style>
.container {
  max-width: 400px;
  margin: 0 auto;
  padding: 20px;
}
</style>
