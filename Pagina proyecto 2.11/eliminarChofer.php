<?php
	require_once 'conexion.php';
 
	$ci = $_POST['ci'];
    $query = "DELETE FROM `choferes` WHERE `ci` = '$ci'";
	$result = mysqli_query($conn, $query);

	echo 'ok';
?>