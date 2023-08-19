import { CButton, CForm, CAlert, CAlertHeading } from '@coreui/vue'
const components = [
  { name: 'CButton', component: CButton },
  { name: 'CForm', component: CForm },
  { name: 'CAlert', component: CAlert },
  { name: 'CAlertHeading', component: CAlertHeading }
]

const launchRendering = (app) => {
  components.forEach(({ name, component }) => {
    app.component(name, component)
  })
}

export default launchRendering;