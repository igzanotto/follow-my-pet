import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="table"
export default class extends Controller {
  static targets= ["row", "body"]

  connect() {
    this.rowTargets.forEach((row, index) => {
      row.addEventListener("click", () => {
        this.bodyTargets[index].classList.toggle('d-none')
      })
    })
  }

}
