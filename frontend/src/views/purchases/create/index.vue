<template>
  <div class="container">
    <h1>Create Purchase</h1>
    <div class="form-group">
      <label for="name">Name:</label>
      <select id="name" class="form-control" v-model="selectedData" @change="handleDropDown">
        <option value="" disabled>Select a name</option>
        <option v-for="user in userInfo" :value="user" :key="user.id">{{ user.name }}</option>
      </select>
    </div>
    <div class="form-group">
      <label for="name">Amount Purchased:</label>
      <input type="number" id="amount" class="form-control" v-model="form.amount" />
    </div>
    <div class="form-group">
      <label for="purchaseId">Customer ID:</label>
      <input type="text" id="purchaseId" class="form-control" disabled v-model="form.customer_id" />
    </div>
    <div class="form-group">
      <label for="createdAt">Created At:</label>
      <input type="text" id="createdAt" class="form-control" disabled v-model="form.created_at" />
    </div>
    <CButton class="mt-2" color="primary" @click="createPurchase">Create Purchase</CButton>
  </div>
</template>

<script>
import { mapActions, mapGetters } from 'vuex'
import { toRaw } from 'vue'
export default {
  name: 'PurchaseCreate',
  data() {
    return {
      selectedData: '',
      names: ['John', 'Jane', 'Alice', 'Bob'],
      form: {
        customer_id: null,
        amount: null,
        created_at: null
      }
    }
  },
  created() {
    this.mapDropDown()
  },
  computed: {
    ...mapGetters({ userInfo: 'user/userInfo' })
  },
  methods: {
    ...mapActions({
      registeredUsers: 'user/registeredUsers',
      actionCreatePurchase: 'purchases/createPurchase'
    }),

    createPurchase() {
      const raw = toRaw(this.form)
      this.actionCreatePurchase(raw)
    },

    handleDropDown() {
      const raw = toRaw(this.selectedData)
      this.form.customer_id = raw.id
    },

    async mapDropDown() {
      await this.registeredUsers()
      const todayDate = new Date().toISOString().split('T')[0]
      this.form.created_at = todayDate
    }
  }
}
</script>
