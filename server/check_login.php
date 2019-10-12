<?php
// llamo a mi archivo con las funciones para manejar la BD
require('./conector.php');

// me conecto con la BD
$con = new ConectorBD('localhost','root','');
$response['conexion'] = $con->initConexion('agendaphp');


// chequeo si existe el usuario en la BD
  if ($response['conexion']=='OK') {
    $resultado_consulta = $con->consultar(['usuarios'],
    ['correo', 'password', 'id'], 'WHERE correo="'.$_POST['username'].'"');

    if ($resultado_consulta->num_rows != 0) {
      $fila = $resultado_consulta->fetch_assoc();
      if (password_verify($_POST['password'], $fila['password'])) {
        $response['acceso'] = 'OK';
        session_start();
        $_SESSION['username']=$fila['correo'];
        $_SESSION['id']=$fila['id'];
      }else {
        $response['motivo'] = 'Contraseña incorrecta';
        $response['acceso'] = 'rechazado';
      }
    }else{
      $response['motivo'] = 'Email incorrecto';
      $response['acceso'] = 'rechazado';
    }
  }

  echo json_encode($response);

  $con->cerrarConexion();

?>
