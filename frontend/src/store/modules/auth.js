import jwtDecode from 'jwt-decode'

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
    await form.axios
      .post(url, form.data)
      .then((res) => {
        commit('LOGGED_IN_USER', res.data)
      })
      .catch((error) => {})
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
