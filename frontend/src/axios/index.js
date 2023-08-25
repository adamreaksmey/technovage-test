import axios from 'axios'

const axiosInstance = axios.create({
  baseURL: import.meta.env.VITE_APP_API_URL
})

axiosInstance.interceptors.request.use((config) => {
  const token = localStorage.getItem('auth-token')
  config.headers.Authorization = `Bearer ${token}`
  return config
})

export default axiosInstance
