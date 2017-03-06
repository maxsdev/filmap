<?php header('Content-type: text/html; charset=UTF-8');

if (count($_GET) > 0) {
  require_once 'MarkerProvider.php';

  $mp = new MarkerProvider($_GET['longitude'], $_GET['latitude']);
  echo $mp->getMarkers();
}

?>
