import ApplicationController from "controllers/application_controller"

export default class extends ApplicationController {
  connect () {
    super.connect()
  }

  // beforeRead(element, reflex, noop, id) {
  //  console.log("before read", element, reflex, id)
  // }

  // readQueued(element, reflex, noop, id) {
  //   console.log("read enqueued for delivery upon connection", element, reflex, id)
  // }

  // readDelivered(element, reflex, noop, id) {
  //   console.log("read delivered to the server", element, reflex, id)
  // }

  // readSuccess(element, reflex, noop, id) {
  //   console.log("read successfully executed", element, reflex, id)
  // }

  // readError(element, reflex, error, id) {
  //   console.error("read server-side error", element, reflex, error, id)
  // }

  // readHalted(element, reflex, noop, id) {
  //   console.warn("read halted before execution", element, reflex, id)
  // }

  // readForbidden(element, reflex, noop, id) {
  //   console.warn("read forbidden from executing", element, reflex, id)
  // }

  // afterRead(element, reflex, noop, id) {
  //   console.log("read has been executed by the server", element, reflex, id)
  // }

  // finalizeRead(element, reflex, noop, id) {
  //   console.log("read changes have been applied", element, reflex, id)
  // }
}
