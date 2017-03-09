<?php header('Content-type: text/html; charset=UTF-8');

if (count($_GET) > 0) {
  require_once 'MarkerProvider.php';
  $lng = $_GET['longitude'];
  $lat = $_GET['latitude'];
  $zoom = $_GET['zoom'];
  $mp = new MarkerProvider($lng, $lat);
  $json_obj = array('longitude'=>$lng, 'latitude'=>$lat, 'zoom'=>$zoom);
  echo json_encode($json_obj);
  // echo $mp->getMarkers();
}

?>
