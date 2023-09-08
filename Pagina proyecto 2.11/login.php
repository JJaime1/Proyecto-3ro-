<?php
$usuarios = array(
    array("username" => "Admin", "password" => "1234", "rol" => "Administrador"),
    array("username" => "persona", "password" => "1234", "rol" => "Administrativo General")
);

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'];
    $password = $_POST['password'];
    
    if (strlen($username) > 16 || strlen($password) > 16) {
        $error = "Los datos no pueden tener más de 16 caracteres";
        header("Location: index.php?error=" . urlencode($error));
        exit();
    }
    
    $autenticado = false;
    
    foreach ($usuarios as $usuario) {
        if (strcasecmp($usuario["username"], $username) == 0 && strcasecmp($usuario["password"], $password) == 0) {
            header("Location: main.php?username=" . urlencode($username) . "&password=" . urlencode($password) . "&rol=" . urlencode($usuario['rol']));
            $autenticado = true;
            break;
        }
    }
    
    if (!$autenticado) {
        $error = "Datos incorrectos";
        header("Location: index.php?error=" . urlencode($error));
        exit();
    }
}
?>