<?php

/**
 * Clase para la conexión a la base de datos
 */
class wpdb {

  /**
   * Nombre del host de la base de datos
   *
   * @var string
   */
  private $host;

  /**
   * Nombre del usuario de la base de datos
   *
   * @var string
   */
  private $user;

  /**
   * Contraseña del usuario de la base de datos
   *
   * @var string
   */
  private $password;

  /**
   * Nombre de la base de datos
   *
   * @var string
   */
  private $database;

  /**
   * Conexión a la base de datos
   *
   * @var mysqli
   */
  private $mysqli;

  /**
   * Constructor
   *
   * @param string $host Nombre del host de la base de datos
   * @param string $user Nombre del usuario de la base de datos
   * @param string $password Contraseña del usuario de la base de datos
   * @param string $database Nombre de la base de datos
   */
  public function __construct($host, $user, $password, $database) {
    $this->host = $host;
    $this->user = $user;
    $this->password = $password;
    $this->database = $database;

    $this->connect();
  }

  /**
   * Conectarse a la base de datos
   */
  private function connect() {
    $this->mysqli = new mysqli($this->host, $this->user, $this->password, $this->database);
  }

  /**
   * Seleccionar la base de datos
   *
   * @param string $database Nombre de la base de datos
   */
  public function select_db($database) {
    $this->mysqli->select_db($database);
  }

  /**
   * Ejecutar una consulta
   *
   * @param string $query Consulta SQL
   *
   * @return mysqli_result Resultado de la consulta
   */
  public function query($query) {
    return $this->mysqli->query($query);
  }

  /**
   * Obtener el número de filas afectadas por la última consulta
   *
   * @return int Número de filas afectadas
   */
  public function affected_rows() {
    return $this->mysqli->affected_rows;
  }

  /**
   * Obtener el último ID insertado
   *
   * @return int Último ID insertado
   */
  public function insert_id() {
    return $this->mysqli->insert_id;
  }

  /**
   * Cerrar la conexión a la base de datos
   */
  public function close() {
    $this->mysqli->close();
  }

}

// **Configuración de la base de datos**

$host = '192.168.52.15';
$user = 'Daniel';
$password = 'Root1234$';
$database = 'wordpress';

// **Crear una instancia de la clase wpdb**

$wpdb = new wpdb($host, $user, $password, $database);