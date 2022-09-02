import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

// Connects to data-controller="typed-js"
export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Bienvenido", "El equipo de FollowMyPet está feliz de que nos visites"],
      typeSpeed: 50,
      loop: true
    })
  }
}
