import { Controller } from "@hotwired/stimulus"
import "leaflet"
import "leaflet-css"

// Connects to ccc
export default class extends Controller {
  connect() {
    // Loading all locations
    var element = document.getElementById("map");


    console.log("testing")
    // Create Map in location with lat 38 and long -9, the idea is get the current location of user
    if (!navigator.geolocation) {
      console.log("Geolocation is not supported by your browser");
   } else {
    navigator.geolocation.getCurrentPosition(
      // Success callback function
      (position) => {
        // Get the user's latitude and longitude coordinates
        const lat = position.coords.latitude;
        const lng = position.coords.longitude;
console.log(lat,lng)
         // Create Map in location with lat 38 and long -9, the idea is get the current location of user
     var map = L.map('map').setView([38.72, -9.13], 12);

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
     
  
      
      },
      // Error callback function
      (error) => {
        // Handle errors, e.g. user denied location sharing permissions
        console.error("Error getting user location:", error);
      }
    );
   }
    
   

  }

  disconnect(){
    this.map.remove()
  }
}
