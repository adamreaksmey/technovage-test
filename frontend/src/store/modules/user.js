import axios from 'axios'
import { toRaw } from 'vue'

const token = localStorage.getItem('auth-token')
const types = {}
const getters = {
  userInfo: (state) => toRaw(state.userInfo.user)
}

const actions = {
  async userLog({ commit, getters }) {
    let url = '/user'
    let config = {
      headers: {
        Authorization: `Bearer ${token}`
      }
    }

    await axios.get(url, config).then((res) => {
      commit('USER_INFO', res.data)
    })
  }
}

const mutations = {
  USER_INFO(state, value) {
    state.userInfo = value
  }
}
const state = {
  userInfo: null
}

export default {
  namespaced: true,
  state,
  getters,
  actions,
  mutations
}
