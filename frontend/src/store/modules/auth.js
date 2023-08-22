const types = {}
const getters = {
  authToken: (state) => state.userData.token
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
    state.userData = value
  }
}

const state = {
  userData: null
}

export default {
  namespaced: true,
  state,
  getters,
  actions,
  mutations
}
