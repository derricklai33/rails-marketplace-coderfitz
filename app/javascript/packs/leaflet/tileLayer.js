import L from 'leaflet'

export const tileLayer = async (center) => {
  const view = {zoom: 11, lat: center[0], long: center[1]}
  const map = L.map('map').setView([view.lat, view.long], view.zoom)
  L.tileLayer('https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token={accessToken}', {
      attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, <a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
      maxZoom: 40,
      id: 'mapbox/streets-v11',
      tileSize: 512,
      zoomOffset: -1,
      accessToken: "pk.eyJ1IjoiZGVycmlja2xhaTMzIiwiYSI6ImNraGl0cHh2NzFyYmsyd3Q5NDQ2bzA4Ym8ifQ.3pZdqI_AKMaGO4Nce0VMsA"
  }).addTo(map)
  return map
}