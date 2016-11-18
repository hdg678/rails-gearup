$(document).ready(function() {
  var equipment_address = $('#equipment_address').get(0);

  if (equipment_address) {
    var autocomplete = new google.maps.places.Autocomplete(equipment_address, { types: ['geocode'] });
    google.maps.event.addListener(autocomplete, 'place_changed', onPlaceChanged);
    google.maps.event.addDomListener(equipment_address, 'keydown', function(e) {
      if (e.keyCode == 13) {
        e.preventDefault(); // Do not submit the form on Enter.
      }
    });
  }
});

function onPlaceChanged() {
  var place = this.getPlace();
}


