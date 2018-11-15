import "mapbox-gl/dist/mapbox-gl.css";
import "@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css";
import mapboxgl from "mapbox-gl/dist/mapbox-gl.js";
import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder";

const mapElement = document.getElementById("map");

if (mapElement) {
  // only build a map if there's a div#map to inject into
  mapboxgl.accessToken = process.env.MAPBOX_API_KEY; // API key from `.env`
  // Init a new map object on the `map` container
  const map = new mapboxgl.Map({
    container: "map",
    style: "mapbox://styles/vishizaki/cjohmm3ju06xi2rlb7zdmfllj"
  });

  // Get the markers from the DOM element's `data-markers` attribute
  const markers = JSON.parse(mapElement.dataset.markers);

  // Create mapbox markers from the `markers` constant
  markers.forEach(marker => {
    new mapboxgl.Marker()
      .setLngLat([marker.lng, marker.lat])
      .setPopup(
        new mapboxgl.Popup({ offset: 25 }) // add popups
          .setHTML(marker.infoWindow.content)
      ) // set popups html
      .addTo(map);
  });

  // Set the map zoom depending on the number of markers
  if (markers.length === 0) {
    map.setZoom(1);
  } else if (markers.length === 1) {
    map.setZoom(14);
    map.setCenter([markers[0].lng, markers[0].lat]);
  } else {
    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach(marker => {
      bounds.extend([marker.lng, marker.lat]);
    });
    map.fitBounds(bounds, { duration: 0, padding: 75 });
  }

  // Add the geocoded search on the map
  map.addControl(
    new MapboxGeocoder({
      accessToken: mapboxgl.accessToken
    })
  );
}
