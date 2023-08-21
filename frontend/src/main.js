import 'bootstrap/dist/css/bootstrap.min.css';
import launchRendering from '../src/components/coreUI/index';
import "../src/assets/main.css";
import { createApp } from 'vue';
import App from './App.vue';
import router from './router';
import store from './store';
import axios from "axios"

axios.defaults.baseURL = process.env.VUE_APP_API_URL;
console.log(process.env.VUE_APP_API_URL)

const app = createApp(App);

app.use(router);
app.use(store);
app.config.globalProperties.$axios = axios;

launchRendering(app);
app.mount('#app');