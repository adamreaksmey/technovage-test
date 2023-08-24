import axios from '@/axios'
import { toRaw } from 'vue'

const types = {}
const getters = {
  userInfo: (state) => {
    return toRaw(state.userInfo)
  }
}

const actions = {
  async registeredUsers({ commit, getters }) {
    let url = '/users'
    await axios.get(url).then((res) => {
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
