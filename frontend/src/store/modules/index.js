import camelCase from 'lodash/camelCase'

const modules = {}

// Use dynamic import to retrieve the module files
const importModule = (fileName) =>
  import(/* @vite-ignore */ `./${fileName}`)
    .then((module) => module.default)
    .catch((error) => {
      console.error(`Error importing module: ${fileName}`, error)
    })

// Import all modules using dynamic import
const importAllModules = async () => {
  const moduleFiles = import.meta.glob('./*.js')

  for (const path in moduleFiles) {
    if (path !== './index.js') {
      const fileName = path.replace(/^\.\/(.*)\.js$/, '$1')
      const moduleName = camelCase(fileName)
      modules[moduleName] = await importModule(path)
    }
  }
}

importAllModules()

export default modules
