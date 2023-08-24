import axios from '@/axios'
import { toRaw } from 'vue'

const getters = {
  getPurchase: (state) => {
    return toRaw(state.purchaseInfo.data)
  },
  getLastPage: (state) => {
    return state.purchaseInfo.meta.last_page
  }
}

const actions = {
  async fetchPurchases({ commit }, page) {
    let url = `/purchases?page=${page}`
    await axios.get(url).then((res) => {
      commit('SET_PURCHASE_INFO', res.data)
    })
  }
}

const mutations = {
  SET_PURCHASE_INFO(state, value) {
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
