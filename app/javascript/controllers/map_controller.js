import { Controller } from "@hotwired/stimulus"
import mapboxgl from 'mapbox-gl'
// Connects to data-controller="map"
export default class extends Controller {
  static values = {
    apiKey: String,
    marker: Object
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue;

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/cauxi/clpb4yd0b007001pk95t9324k"
    });
    this.#addMarkerToMap();
    this.#fitMapToMarkers();
  }

  #addMarkerToMap() {
      new mapboxgl.Marker()
        .setLngLat([ this.markerValue.lng, this.markerValue.lat ])
        .addTo(this.map);
  }

  #fitMapToMarkers() {
    this.map.fitBounds([
      [this.markerValue.lng, this.markerValue.lat],
      [this.markerValue.lng, this.markerValue.lat]],
      { padding: 70, maxZoom: 5, duration: 0 });
    }
}
