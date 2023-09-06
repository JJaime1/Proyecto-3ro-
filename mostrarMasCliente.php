<?php
	require_once 'conexion.php';
 
	$id = $_POST['id'];
	$query = "SELECT id, nombre, apellido, comentario, direccion, deuda, telefono, viajes FROM `clientes` WHERE `id` = '$id'";
	$result = mysqli_query($conn, $query);
	$json = array();

	if ($result) {
		while ($row = mysqli_fetch_assoc($result)) {
			$json[] = array(
				'id' => "id: " . $row['id'],
				'nombre' => "Nombre: " . $row['nombre'],
				'apellido' => "Apellido: " . $row['apellido'],
				'comentario' => "Comentario: " .  $row['comentario'],
				'direccion' => "Direccion: " . $row['direccion'],
				'deuda' => "Deuda: " . $row['deuda'],
				'telefono' => "Telefono: " . $row['telefono'],
				'viajes' =>"Viajes: " . $row['viajes'],
				
			);
		}

		echo json_encode(array(
			'datos' => $json,
		));
	} else {
		// Manejar el caso de error en la consulta
		echo json_encode(array(
			'error' => 'Error en la consulta',
		));
	}
?>
