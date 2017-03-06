<?php

require_once 'FilmapDB.php';

class MarkerProvider {

  private $longitude;
  private $latitude;

  function __construct($longitude, $latitude) {
    $this->longitude = $longitude;
    $this->latitude = $latitude;
  }

  function getMarkers() {
    $db = FilmapDB::getInstance();
    $db->openConnection();
    $query = 'select * from places;';
    return $db->run($query);
  }

}

 ?>
