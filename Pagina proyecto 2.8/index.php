<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Remillas</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
        <div class="logo"><img src="img/logo.png" alt="" ></div>
    <div class="container">
        <div class="login-form">
            <form action="login.php" method="POST">
                <h2 class="form-title">Iniciar Sesión</h2>
                <label for="username" class="label">Usuario:</label>
                <input type="text" name="username" required class="input-field">
                <label for="password" class="label">Contraseña:</label>
                <input type="password" name="password" required class="input-field">
                <input type="submit" value="Ingresar" class="submit-button">
            </form>
        </div>
    </div>
</body>
</html>
