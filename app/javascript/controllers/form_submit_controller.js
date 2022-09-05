import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="form-submit"
export default class extends Controller {
  submit() {
    console.log("form_submit")
    this.element.submit();
  }
}
