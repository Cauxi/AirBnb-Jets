import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["button"]
  connect() {
  }
  booking(event) {
    this.buttonTarget.classList.toggle("d-none");
  }

}
