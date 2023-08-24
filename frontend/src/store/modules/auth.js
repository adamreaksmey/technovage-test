import jwtDecode from 'jwt-decode'
import axios from '@/axios'

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
        localStorage.setItem('auth-token', res.data.token)
        localStorage.setItem('auth-user', JSON.stringify(res.data.user))
      })
      .catch((error) => {})
  },

  async logoutUser({ commit }) {
    let url = '/logout'
    await axios.post(url).then((res) => {
      localStorage.removeItem('auth-token')
      localStorage.removeItem('auth-user')
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
