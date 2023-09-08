<?php
	require_once 'conexion.php';
 
	$ci = $_POST['ci'];
	$query = "SELECT ci, nombre, apellido, direccion, vencimientoDeLibreta FROM `choferes` WHERE `ci` = '$ci'";
	$result = mysqli_query($conn, $query);
	$json = array();

	if ($result) {
		while ($row = mysqli_fetch_assoc($result)) {
			$json[] = array(
				'ci' => $row['ci'],
				'nombre' => $row['nombre'],
				'apellido' => $row['apellido'],
				'direccion' => $row['direccion'],
				'vencimientoDeLibreta' => $row['vencimientoDeLibreta'],
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
