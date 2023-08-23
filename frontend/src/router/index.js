import { createRouter, createWebHistory } from 'vue-router'
import LoginForm from '../views/Login.vue'
import TestingLayout from "../views/dashboard/index.vue"
import UserTable from "../views/users/index.vue"

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'login',
      component: LoginForm,
    },
    {
      path: '/home',
      name: 'home',
      component: TestingLayout
    },
    {
      path: "/users",
      name: 'users',
      component: UserTable
    },
  ]
})
export default router
