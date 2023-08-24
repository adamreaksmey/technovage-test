import axios from '@/axios'
import { toRaw } from 'vue'

const getters = {
  getPurchase: (state) => {
    return toRaw(state.purchaseInfo.data)
  },
  getSinglePurchase: (state) => {
    return toRaw(state.singlePurchase)
  }
}

const actions = {
  async fetchPurchases({ commit }, page) {
    let url = `/purchases?page=${page}`
    await axios.get(url).then((res) => {
      commit('SET_PURCHASE_INFO', res.data)
    })
  },

  async fetchPurchase({ commit }, id) {
    let url = `/purchases/${id}`
    await axios.get(url).then((res) => {
      commit('SINGLE_PURCHASE_INFO', res.data)
    })
  },

  async updatePurchase({ commit }, payload) {
    let url = `/purchases/${payload.data.id}`;
    await axios.put(url, payload).then((res) => {
      commit('SINGLE_PURCHASE_INFO', res.data)
    })
  }
}

const mutations = {
  SET_PURCHASE_INFO(state, value) {
    state.purchaseInfo = value
  },
  SINGLE_PURCHASE_INFO(state, value) {
    state.singlePurchase = value
  }
}

const state = {
  purchaseInfo: null,
  singlePurchase: null
}

export default {
  namespaced: true,
  state,
  getters,
  actions,
  mutations
}
