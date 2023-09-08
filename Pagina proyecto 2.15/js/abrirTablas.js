let d = $(document);
d.ready(inicializarEventos);
let clientes = $("#clientes");
let cli = $("#cli")
let choferes = $("#choferes");
let cho = $("#cho");
let tablaC = $("#mostrarTablaClientes");
let tablaCh = $("#mostrarTablaChoferes");
let bienvenida = $("#bienvenida");

function inicializarEventos() {
    clientes.click(mostrarTablaClientes);
	cli.click(mostrarTablaClientes);
    choferes.click(mostrarTablaChoferes);
	cho.click(mostrarTablaChoferes);
}
function mostrarTablaClientes() {
    bienvenida.hide();
    tablaCh.hide();
    tablaC.css("display", "block");
    tablaC.css("margin-top", "1.5%");
    tablaC.css("width", "70%");
    tablaC.css("height", "70vh");
    tablaC.css("position", "absolute");
}
function mostrarTablaChoferes() {
    bienvenida.hide();
    tablaC.hide();
    tablaCh.css("display", "block");
    tablaCh.css("margin-top", "1.5%");
    tablaCh.css("width", "70%");
    tablaCh.css("height", "70vh");
    tablaCh.css("position", "absolute");
}