let g = $(document);
d.ready(inicializarEventos);
let viajes = $("#viajes");
let vehiculos = $("#vehiculos");
let listaNegra = $("#listaNegra");
let movimientos = $("#movimientos");
let administracion = $("#administracion");
let cerrarSesion = $("#cerrarSesion");

function inicializarEventos() {
viajes.click(error);
vehiculos.click(error);
listaNegra.click(error);
movimientos.click(error);
administracion.click(error);
cerrarSesion.click(error);

}
function error () {
    console.log("mensaje de error");
    window.open('construccion.php','_self');
}