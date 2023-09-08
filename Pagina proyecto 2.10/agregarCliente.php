<?php
	require_once 'conexion.php';
    
    $nombre = $_POST['nombre'];
	$apellido = $_POST['apellido'];
    $id = $_POST['id'];
    $celular = $_POST['celular'];
    $direccion = $_POST['direccion'];
    $email = $_POST['email'];
    $query = "INSERT INTO `clientes` VALUES ('$id', '$nombre', '$apellido', 'null', '$direccion', '0', '$celular', '0')";
	$result = mysqli_query($conn, $query);
	echo $query;
	echo 'ok';
?>