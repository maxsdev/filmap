<?php header('Content-type: text/html; charset=UTF-8');

if (count($_GET) > 0) {
  require_once 'FilmapDB.php';
  $id = $_GET['id'];

  $db = FilmapDB::getInstance();
  $db->openConnection();
  $query = 'select * from places_images where id = '.$id;
  echo $db->run($query);
}

?>
