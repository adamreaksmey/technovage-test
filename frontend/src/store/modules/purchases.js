import axios from '@/axios'
import { toRaw } from 'vue'

const types = {}
const getters = {
  getPurchase: (state) => {
    return toRaw(state.purchaseInfo)
  }
}

const actions = {
  async getPurchases({ commit }) {
    let url = '/purchases'
    await axios.get(url).then((res) => {
      commit('PURCHASE_INFO', res.data)
    })
  }
}
const mutations = {
  PURCHASE_INFO(state, value) {
    state.purchaseInfo = value
  }
}
const state = {
  purchaseInfo: null
}

export default {
  namespaced: true,
  state,
  getters,
  actions,
  mutations
}
