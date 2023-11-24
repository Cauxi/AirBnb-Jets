import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["text"]
  connect () {
    console.log("Hello");
    this.textTarget.value = "";
  }
  reset(event) {
    // event.preventDefault();
    console.log("Hello from reset");
    console.log(event);
    console.log(this.textTarget.value);
  }
}
