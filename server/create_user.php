<?php // crear 3 usuarios desde script

  // incluyo archivo conector, donde tengo todas las funciones php para las operaciones con la BD
  include('conector.php');


  // armo un arreglo con los datos de los usuarios a cargar
  $dataUno['id'] = "'".'1'."'";
  $dataUno['nombre'] = "'".'Gina Fuentes'."'";
  $dataUno['correo'] = "'".'gfuentes@hotmail.com'."'";
  $dataUno['password'] = "'".password_hash('12345', PASSWORD_DEFAULT)."'"; //12345
  $dataUno['fecha_n'] = "'".'2000/09/15'."'";

  $dataDos['id'] = "'".'2'."'";
  $dataDos['nombre'] = "'".'Juan Perez'."'";
  $dataDos['correo'] = "'".'ppp@gmail.com'."'";
  $dataDos['password'] = "'".password_hash('12345', PASSWORD_DEFAULT)."'"; //12345
  $dataDos['fecha_n'] = "'".'1995/10/06'."'";

  $dataTres['id'] = "'".'3'."'";
  $dataTres['nombre'] = "'".'Andy'."'";
  $dataTres['correo'] = "'".'andy@outlook.com'."'";
  $dataTres['password'] = "'".password_hash('12345', PASSWORD_DEFAULT)."'"; //12345
  $dataTres['fecha_n'] = "'".'1999/10/04'."'";


  // me conecto a la base de datos
  $con = new ConectorBD('localhost','nextu','12345');
  $response['conexion'] = $con->initConexion('agendaphp');


  // si la conexión es exitosa, inserto los datos de cada usuario
  if ($response['conexion']=='OK') {

    if($con->insertData('usuarios', $dataUno) AND $con->insertData('usuarios', $dataDos) AND $con->insertData('usuarios', $dataTres)){ 
      $response['msg']="usuarios agregados de forma exitosa";
    }else {
      $response['msg']= "Hubo un error y los datos no han sido cargados";
    }
  
  }else {
    $response['msg']= "No se pudo conectar a la base de datos";
  }


  // devuelvo el valor de $response
  echo json_encode($response);

 ?>

