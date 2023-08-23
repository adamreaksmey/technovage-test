import jwtDecode from 'jwt-decode'
import axios from "axios"

const token = localStorage.getItem('auth-token')
const types = {}
const getters = {
  authToken: (state) => state.userToken.token,
  isAuthorized: (state, getters) => {
    const token = localStorage.getItem('auth-token')
    if (token) {
      const decoded = jwtDecode(token)
      const current = Date.now() / 1000
      return decoded.exp > current
    }
    return false
  }
}

const actions = {
  async loginUser({ commit }, form) {
    let url = '/login'
    await axios
      .post(url, form.data)
      .then((res) => {
        commit('LOGGED_IN_USER', res.data)
        window.location.href = '/home'
      })
      .catch((error) => {})
  },

  async logoutUser({ commit }) {
    let url = '/logout';
    let config = {
      headers: {
        Authorization: `Bearer ${token}`
      }
    }
    await axios.post(url, {}, config).then((res) => {
      localStorage.removeItem('auth-token')
      window.location.href = '/'
    })
  }
}

const mutations = {
  LOGGED_IN_USER(state, value) {
    state.userToken = value
  }
}

const state = {
  userToken: null
}

export default {
  namespaced: true,
  state,
  getters,
  actions,
  mutations
}
