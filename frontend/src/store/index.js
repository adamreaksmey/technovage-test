import Vuex from 'vuex'
import auth from './modules/auth'
import user from './modules/user'

const store = new Vuex.Store({
  modules: {
    auth,
    user
  }
})

export default store
