import { createRouter, createWebHistory } from 'vue-router'
import LoginForm from '../views/Login.vue'
import TestingLayout from "../views/dashboard/index.vue"

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'login',
      component: LoginForm,
      // beforeEnter: (to, from, next) => {
      //   import('../assets/login/index.css').then(() => {
      //     next()
      //   })
      // }
    },
    {
      path: '/home',
      name: 'home',
      component: TestingLayout
    }
  ]
})

// router.beforeEach((to, from, next) => {
//   // const
// })

export default router
