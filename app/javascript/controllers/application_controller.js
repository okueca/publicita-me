import { Controller } from "@hotwired/stimulus"
import "select2"

// Connects to data-controller="application"
export default class extends Controller {
  connect() {
    console.log("Aqui estou eu")
    $('.js-example-basic-multiple').select2();
    $('.js-searchable').select2({
      allowClear: true,
      width: 200
      // If you are using Bootstrap, please add　`theme: "bootstrap"` too.
    });
  }
  
}
