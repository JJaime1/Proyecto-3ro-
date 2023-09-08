<?php
$conn = mysqli_connect('localhost', 'root', '', 'pruebas');

// Verificar la conexión
if ($conn->connect_error) {
    die("Error en la conexión a la base de datos: " . $conn->connect_error);
}

// Obtener datos del formulario y asignarlos a las variables de sesión
session_start();
$_SESSION['username'] = $_POST['username'];
$_SESSION['password'] = $_POST['password'];

// Escapar las variables de sesión para evitar inyección SQL (mejor práctica)
$username = mysqli_real_escape_string($conn, $_SESSION['username']);
$password = mysqli_real_escape_string($conn, $_SESSION['password']);

// Consulta SQL preparada para verificar las credenciales del usuario
$sql = "SELECT * FROM Usuario WHERE Nombre = '$username' AND Contraseña = '$password'";
$result = $conn->query($sql);

if ($result->num_rows == 1) {
    header("Location: main.php");
    exit;
} else {
    // Las credenciales son incorrectas, muestra un mensaje de error
    echo "Inicio de sesión fallido. Por favor, verifica tus credenciales.";
}

$conn->close();

?>
