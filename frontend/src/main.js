import 'bootstrap/dist/css/bootstrap.min.css'
import launchRendering from '../src/components/coreUI/index'
import "../src/assets/main.css"
import { createApp } from 'vue'
import App from './App.vue'
import router from './router'

const app = createApp(App)

app.use(router)
launchRendering(app)
app.mount('#app')
