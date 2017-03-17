var longitude;
var latitude;
var zoom;

function dmsToDecimal(dms) {
  var result = 0;
  var deg = dms.split("°");
  result += parseInt(deg[0]);
  var min = deg[1].split(/[′']/);
  result += parseInt(min[0]) / 60;
  var sec = min[1].split(/[″"('')]/);
  result += parseInt(sec[0] / 3600);
  if (sec[1] !== undefined) {
    if (sec[1].trim() == "W" || sec[1].trim() == "S") {
      result *= -1;
    }
  }
  result = parseFloat(result.toFixed(6));
  return result;
}

function initMap() {
  var myLatlng = new google.maps.LatLng(55.754444, 37.592500); // Moscow
  var mapOptions = {
    zoom: 4,
    center: myLatlng
  }
  var map = new google.maps.Map(document.getElementById('map'), mapOptions);

  $.ajax({
    dataType: "json",
    url: "http://localhost/api/",
    data: {
      longitude: 37.592500,
      latitude: 55.754444,
      zoom: 4
    },
    success: function callback(data) {
      data.forEach(function (item, i, array) {
        longitude = dmsToDecimal(item.longitude);
        latitude = dmsToDecimal(item.latitude);
        if (latitude !== undefined && longitude !== undefined) {
          var pos = {lat: latitude, lng: longitude};
          var marker = new google.maps.Marker({
            position: pos,
            map: map,
            title: item.film_name,
            icon: 'img/marker.png'
          });

          marker.addListener('click', function() {
            $.ajax({
              dataType: 'json',
              url: "http://localhost/api/img.php",
              data: {
                id: item.id
              },
              success: function callback(path) {
                $("#filmName").text(item.film_name);
                $("#placeName").text(item.place_name);
                $("#coords").text(item.longitude + " " + item.latitude);
                $("#description").text(item.description);
                $("#photo").attr("src", "img/".concat(path[1].image_id).concat(".png"));
              }
            });
          });

        }
      });
    }
  });
}
