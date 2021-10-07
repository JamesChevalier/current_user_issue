import ApplicationController from './application_controller'

export default class extends ApplicationController {
  connect () {
    super.connect()
  }

  doit (_event) {
    this.stimulate('Thing#doit')
  }
}
