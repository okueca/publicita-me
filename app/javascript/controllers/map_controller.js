import { Controller } from "@hotwired/stimulus"
import "leaflet"
import "leaflet-css"

// Connects to ccc
export default class extends Controller {
  connect() {
    var map = L.map('map').setView([54, -4], 6);

    var tiles = L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
        maxZoom: 19,
        attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
    }).addTo(map);

    console.log("Chegou aqui");
    console.log(map);
  }

  disconnect(){
    this.map.remove()
  }
}
