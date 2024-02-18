import { Controller } from "@hotwired/stimulus"
import "leaflet"
import "leaflet-css"

// Connects to ccc
export default class extends Controller {
  connect() {
    // Loading all locations
    var element = document.getElementById("map");
    
    // Create Map in location with lat 38 and long -9, the idea is get the current location of user
    var map = L.map('map').setView([38.7, -9], 6);

    //Here we'll create all create all marker for screens locations in map
    fetch(element.getAttribute("data-src"))
    .then(response => response.json())
    .then(data => {
      // Work with JSON data here, create a market for each location in json
      console.log(data);
    }).catch(error => console.error('Error fetching JSON:', error));
    
    // Exemple to how create theses markers in map
    L.marker([38.7138314, -9.1386425]).addTo(map);

    //Add map in HTML
    var tiles = L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
        maxZoom: 19,
        attribution: '; <a href="http://www.openstreetmap.org/copyright">Okueca</a>'
    }).addTo(map);
    

  }

  disconnect(){
    this.map.remove()
  }
}
