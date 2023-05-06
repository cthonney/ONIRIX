import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-page"
export default class extends Controller {

  static targets = ["step1", "step2", "step3", "step4"]

  connect() {
    console.log("Hello, Stimulus!", this.element)
  }

  showStep1(event) {
    event.preventDefault()
    this.step1Target.classList.add("active")
    this.step2Target.classList.remove("active")
    // this.progressTarget.setAttribute("aria-valuenow", "25")
    // this.progressTarget.style.width = "25%"
  }

  showStep2(event) {
    event.preventDefault()
    this.step1Target.classList.remove("active")
    this.step3Target.classList.remove("active")
    this.step2Target.classList.add("active")
    // this.progressTarget.setAttribute("aria-valuenow", "50")
    // this.progressTarget.style.width = "50%"
  }

  showStep3(event) {
    event.preventDefault()
    this.step2Target.classList.remove("active")
    this.step3Target.classList.add("active")
    this.step4Target.classList.remove("active")

    // this.progressTarget.setAttribute("aria-valuenow", "100")
    // this.progressTarget.style.width = "100%"
  }

  showStep4(event) {
    event.preventDefault()
    this.step3Target.classList.remove("active")
    this.step4Target.classList.add("active")
    // this.progressTarget.setAttribute("aria-valuenow", "100")
    // this.progressTarget.style.width = "100%"
  }

  submitForm(event) {
    event.preventDefault()
    let form = document.querySelector('.step-3 form')
    form.submit()
  }
}
