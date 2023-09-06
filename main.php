<?php
session_start();
// Verificar si el usuario ha iniciado sesión, si no lo hace se redrige al inicio de sesion
if (!isset($_SESSION['username']) || empty($_SESSION['username'])) {
    header("Location: login.php");
    exit;
}
?>
<!DOCTYPE html>
<html>

<head>
    <title>Remises Remillas</title>
    <link rel="stylesheet" href="css/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <meta charset="utf-8">
</head>

<body>
    <div class="logo">
        <img src="IMG/Logo.png" alt="">
    </div>
    <div class="dropdown">
        <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false"
            id="drop">
            Mostrar mas
        </button>
        <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#" title="Clientes" id="cli" >Clientes</a></li>
            <li><a class="dropdown-item" href="#" title="Viajes">Viajes</a></li>
            <li><a class="dropdown-item" href="#" title="Vehiculos" >Vehiculos</a></li>
            <li><a class="dropdown-item" href="#" title="Choferes" id="cho" >Choferes</a></li>
            <li><a class="dropdown-item" href="#" title="Lista negra" >Lista negra</a></li>
            <li><a class="dropdown-item" href="#" title="Movimientos" >Movimientos</a></li>
            <li><a class="dropdown-item" href="#" title="Administracion" >Adminstración</a></li>
            <li><a class="dropdown-item" href="#" title="Cerrar Sesión" >Cerrar Sesión</a></li>
        </ul>
    </div>
    <div class="container-fluid main">
        <div class="menu">
            <ul id="opciones-menu">
                <li><a href="#" title="Clientes" id="clientes">Clientes</a></li>
                <li><a href="#" title="Viajes" id="viajes">Viajes</a></li>
                <li><a href="#" title="Vehiculos" id="vehiculos">Vehiculos</a></li>
                <li><a href="#" title="Choferes" id="choferes">Choferes</a></li>
                <li><a href="#" title="Lista negra" id="listaNegra">Lista negra</a></li>
                <li><a href="#" title="Movimientos" id="movimientos">Movimientos</a></li>
                <li><a href="#" title="Administracion" id="administracion">Adminstración</a></li>
                <li><a href="#" title="Cerrar Sesión" id="cerrarSesion">Cerrar Sesión</a></li>
            </ul>

        </div>
        <div class="bienvenida"> 
<!-- Mostrar info-->	<iframe class="oculto" id="mostrarTablaClientes" src="clientesTabla.php"></iframe> <!-- Al darle a un boton para mostrar informacion de algo, cambiar clase a "Mostrar"-->
<!-- Movimientos-->     <iframe class="oculto" id="mostrarTablaMovimientos" src="movimientos.php"></iframe> 
                        <iframe class="oculto" id="mostrarTablaChoferes" src="choferesTabla.php"></iframe>
						<iframe class="oculto" id="mostrarAgregarCliente" src="agregarCliente.php"></iframe> 
		   <h1 id="bienvenida"></h1> <!-- Tambien darle la clase "Oculto" a este h1 para que quede mas bonito -->
        </div>
    </div>


    <script src="js/mostrarPerfil.js"></script>
    <script src="js/ocultarMenu.js"></script>
    <script src="js/abrirTablas.js"></script>
    <script src="js/construccion.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
        crossorigin="anonymous"></script>
</body>

</html>