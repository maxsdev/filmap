<?php

class FilmapDB {

  protected static $instance;
  private $dbName;
  private $dbHost;
  private $dbUser;
  private $dbPassword;

  private $mysqli;

  //Чтобы нельзя было создать через вызов new FilmapDB
  private function __construct() { /* ... */
  }

  //Чтобы нельзя было создать через клонирование
  private function __clone() { /* ... */
  }

  //Чтобы нельзя было создать через unserialize
  private function __wakeup() { /* ... */
  }

  //Получаем объект синглтона
  public static function getInstance() {
      if (is_null(self::$instance)) {
          self::$instance = new FilmapDB();
          self::$instance->dbName = 'filmap';
          self::$instance->dbHost = 'localhost';
          self::$instance->dbUser = 'root';
          self::$instance->dbPassword = 'sierra';
      }
      return self::$instance;
  }

  public function openConnection() {
    $this->mysqli = new mysqli($this->dbHost, $this->dbUser, $this->dbPassword, $this->dbName);
    if ($this->mysqli->connect_errno) {
      $json_error = array('error'=>0, 'descroption'=>'MySQL connection failed.');
      echo json_encode($json_error);
      exit;
    }
    $this->mysqli->query("SET NAMES utf8");
  }

  public function closeConnection() {
    $this->mysqli->close();
  }

  function run($query) {
    if (!$result = $this->mysqli->query($query)) {
      $json_error = array('error'=>1, 'descroption'=>'MySQL query failed.');
      echo json_encode($json_error);
      exit;
    }
    $data = array();
    while ($place = $result->fetch_assoc()) {
      $data[] = $place;
    }
    return json_encode($data);
  }
}

?>
