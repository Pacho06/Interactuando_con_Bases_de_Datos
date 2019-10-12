<?php
  //incluyo archivo conector, donde tengo todas las funciones php para las operaciones con la BD
  require('conector.php');

  // mantengo la sesión
  session_start();

  // si estoy logueado:
  if (isset($_SESSION['username'])) {
    //me conecto a la bd	
    $con = new ConectorBD('localhost', 'root', '');
    if ($con->initConexion('agendaphp')=='OK') {
      $resultado = $con->consultar(['eventos'], ['*'], "WHERE id ='".$_SESSION['id']."'"); 
      $i=0;
      while ($fila = $resultado->fetch_assoc()) {  
      
        $response['eventos'][$i]['eid']=$fila['eid'];
        $response['eventos'][$i]['id']=$fila['eid'];
        $response['eventos'][$i]['title']=$fila['title'];
        $response['eventos'][$i]['start']=$fila['start']." ".$fila['hora_i'];
        $response['eventos'][$i]['end']=$fila['end']." ".$fila['hora_f'];
        $i++;
      }
      $response['msg'] = "OK";
    } else {
      $response['msg'] = "No se pudo conectar a la Base de Datos";
    }
  }  else {
    $response['msg'] = "No se ha iniciado una sesión";
  }

    echo json_encode($response);

 ?>
