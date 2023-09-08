// Obtener lo que se pasó por la URL (username, password y rol)
var params = new URLSearchParams(window.location.search);
var username = params.get('username');
var password = params.get('password');
var rol = params.get('rol');
var bienvenido = params.get('bienvenido');

// Mostrar información del usuario
document.write(username + " " + password + " " + rol);

// Mostrar mensaje de bienvenida en un div
var div = document.getElementById("bienvenida");
div.innerHTML = ("Bienvenido") + " " + rol;
