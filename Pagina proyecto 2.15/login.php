<?php
// Establecer la conexión a la base de datos
$conn = mysqli_connect('localhost', 'root', '', 'pruebas');

// Verificar la conexión
if ($conn->connect_error) {
    die("Error en la conexión a la base de datos: " . $conn->connect_error);
}

// Asegurarse de que la codificación de caracteres sea UTF-8
mysqli_set_charset($conn, "utf8mb4");

// Obtener datos del formulario y asignarlos a las variables de sesión
session_start();
$_SESSION['username'] = $_POST['username'];
$_SESSION['password'] = $_POST['password'];

// Consulta SQL preparada para verificar las credenciales del usuario
$sql = "SELECT * FROM `Usuario` WHERE `Nombre` = ? AND `Contraseña` = ?";
$stmt = $conn->prepare($sql);
$Nombre =  $_POST['username'];

if ($stmt) {
    // Asignar valores a los parámetros de la consulta
    $stmt->bind_param("ss", $_SESSION['username'], $_SESSION['password']);
    
    // Ejecutar la consulta
    $stmt->execute();
    
    // Obtener el resultado de la consulta
    $result = $stmt->get_result();
    
    if ($result->num_rows == 1) {
        header("Location: main.php");
        exit;
    } else {
        // Las credenciales son incorrectas, muestra un mensaje de error
        echo "Inicio de sesión fallido. Por favor, verifica tus credenciales.";
    }
    $stmt->close();
} else {
    // Hubo un error en la preparación de la consulta
    echo "Error en la consulta SQL: " . $conn->error;
}

// Cerrar la conexión
$conn->close();
?>
