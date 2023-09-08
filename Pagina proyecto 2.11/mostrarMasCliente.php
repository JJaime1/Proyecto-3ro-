<?php
	require_once 'conexion.php';
 
	$id = $_POST['id'];
	$query = "SELECT id, nombre, apellido, comentario, direccion, deuda, telefono, viajes FROM `clientes` WHERE `id` = '$id'";
	$result = mysqli_query($conn, $query);
	$json = array();

	if ($result) {
		while ($row = mysqli_fetch_assoc($result)) {
			$json[] = array(
				'id' => $row['id'],
				'nombre' => $row['nombre'],
				'apellido' => $row['apellido'],
				'comentario' => $row['comentario'],
				'direccion' => $row['direccion'],
				'deuda' => $row['deuda'],
				'telefono' => $row['telefono'],
				'viajes' => $row['viajes'],
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
