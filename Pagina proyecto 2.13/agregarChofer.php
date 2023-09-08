<?php
	require_once 'conexion.php';
    
    $nombre = $_POST['nombre'];
	$apellido = $_POST['apellido'];
    $ci = $_POST['ci'];
    $direccion = $_POST['direccion'];
    $vencimientoDeLibreta = $_POST['vencimientoDeLibreta'];
    $query = "INSERT INTO `choferes` VALUES ('$ci', '$nombre', '$apellido', '$direccion', '$vencimientoDeLibreta')";
	$result = mysqli_query($conn, $query);
	echo $query;
	echo 'ok';
?>