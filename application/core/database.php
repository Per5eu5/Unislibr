<?php
define('DB_TYPE', 'mysql');
define('DB_HOST', 'localhost');
define('DB_NAME', 'library');
define('DB_USER', 'root');
define('DB_PASS', '');

  class Database extends PDO {
      public function __construct() {
          parent::__construct(DB_TYPE.':host='.DB_HOST.';dbname='.DB_NAME, DB_USER, DB_PASS);
          //parent::__construct('mysql:host=localhost;dbname=library', 'root', '');
      }
  }