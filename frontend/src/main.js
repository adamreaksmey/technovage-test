import 'bootstrap/dist/css/bootstrap.min.css'
import launchRendering from '../src/components/coreUI/index'
import '../src/assets/main.css'
import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from 'axios'
import Cookies from 'js-cookie'

const app = createApp(App)

app.config.globalProperties.$axios = axios
app.config.globalProperties.$cookies = Cookies

app.use(router)
app.use(store)

launchRendering(app)

app.mount('#app')
