import { createStore } from 'vuex'

const modules = {}
const moduleFiles = import.meta.glob('./modules/*.js')

for (const path in moduleFiles) {
  if (path === './modules/index.js') continue
  const moduleName = path.replace(/^\.\/modules\/(.*)\.js$/, '$1')
  const module = await moduleFiles[path]()
  modules[moduleName] = module.default
}

const store = createStore({
  modules
})

export default store
