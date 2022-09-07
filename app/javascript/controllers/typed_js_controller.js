import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

// Connects to data-controller="typed-js"
export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["A new experience in the care of your pet."],
      typeSpeed: 30,
      loop: true
    })
  }
}
