<?php
	require_once 'conexion.php';
 
	$id = $_POST['id'];
    $query = "DELETE FROM `clientes` WHERE `id` = '$id'";
	$result = mysqli_query($conn, $query);

	echo 'ok';
?>