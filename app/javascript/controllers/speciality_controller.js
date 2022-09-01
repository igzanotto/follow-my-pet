import { Controller } from "@hotwired/stimulus"
import { preventOverflow } from "@popperjs/core"

// Connects to data-controller="speciality"
export default class extends Controller {

  static targets = ["form", "options", "cards"]

  // connect() {
  //   console.log(this.formTarget)
  //   console.log(this.cardsTarget)
  //   console.log(this.optionsTarget)
  // }

  filter(event) {
    event.preventDefault();
    console.log("TODO: send request in AJAX")

    const url = `${this.formTarget.action}?specialty=${this.optionsTarget.value}`
    console.log(this.queryTarget.value)
    fetch(url, {headers: {"Accept": "text/plain"}})
      .then(response => response.text())
      .then((data) => {
        this.cardsTarget.outerHTML = data
      })

    }
}
