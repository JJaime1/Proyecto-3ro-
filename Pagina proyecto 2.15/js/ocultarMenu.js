let x = $(document);
var drop = $("#drop");
var opciones =  $("#opciones-menu");
var menu = $(".menu");
drop.hide();

function cambioResolucion() {
    var width = $(window).width();
    var height = $(window).height();

    if (width < 700 || height < 670) {
        drop.show();
        opciones.hide();
        menu.hide();

    } else {
        drop.hide();
        opciones.show();
        menu.show();
    }
    console.log("width: " + width);
}

$(window).on('resize', cambioResolucion);

cambioResolucion();
