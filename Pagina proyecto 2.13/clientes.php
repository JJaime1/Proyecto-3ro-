<?php
	require_once 'conexion.php';
	$offset = $_POST['offset'];
	$verificar = $_POST['verificar'];
	if(ISSET($_POST['res'])){
		$query = "SELECT * FROM clientes order by id asc LIMIT 5 OFFSET $offset";
		$result = mysqli_query($conn, $query);
		$query2 = "SELECT * FROM clientes order by id asc LIMIT 5 OFFSET $verificar";
		$result2 = mysqli_query($conn, $query2);
		$verificacion = false;
		if ($result2) {
			$verificacion = true;
		}else {
			$verificacion = false;
		}
		$json = array();
		if($result) {
			while($row = mysqli_fetch_assoc($result)) {
            $json[] = array(
                'id' => $row['id'],
                'nombre' => $row['nombre'],
            );
        	}
        	echo json_encode(array(
				'datos' => $json,
				'verificacion' => $verificacion
			));
			
		} else {
        	echo "No devuelve nada";
        }
		
	}

?> 
