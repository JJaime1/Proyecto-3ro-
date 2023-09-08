
let x = $(document);
x.ready(inicializarEventos);
let localOffset = 0; // Cambio de offset a localOffset
let next = $("#next");
let prev = $("#prev");
let choferes = [];
let verificar = 0;
let comprobar = 10;

function inicializarEventos() {
    let openModalBtn = $("#agregarChofer");
    let modal = $("#myModal");
    let closeBtn = $(".close");
    closeBtn.click(cerrar);
    openModalBtn.click(abrir);
    next.click(siguiente);
    prev.click(previo);
    getAll();

    function abrir() {
        modal.css("display", "block");
    }

    function cerrar() {
        modal.css("display", "none");
    }

    window.addEventListener("click", (event) => {
        if (event.target === modal) {
            modal.style.display = "none";
        }
    });
    function siguiente() {
        let nuevoLocalOffset = localOffset + 5; // Calcula el nuevo localOffset

        $.ajax({
            url: 'choferes.php',
            type: 'POST',
            data: {
                res: 1,
                offset: nuevoLocalOffset,
                verificar: verificar
            },
            success: function (response) {
                let data = JSON.parse(response);
                let verificacion = data.verificacion;
                let nuevosChoferes = data.datos;

                if (!arraysSonIguales(choferes, nuevosChoferes)) {
                    // Solo si los arrays no son iguales
                    localOffset = nuevoLocalOffset; // Actualiza el localOffset
                    choferes = nuevosChoferes; // Actualiza los datos
                }

                let ret = '';
                console.log(JSON.parse(response));
                console.log("verificacion: " + verificacion);

                choferes.forEach(res => {
                    ret += `
                    <tr cod="${res.ci}">
                        <td>${res.ci}</td>
                        <td>${res.nombre}</td>
                        <td ci="botones">
                            <button class="mas btn btn-primary">Mostrar mas</button>
                            <button class="delete btn btn-danger">Eliminar</button>
                        </td>
                    </tr>`;
                    $('#choferes').html(ret);
                });

                console.log("localOffset: " + localOffset);
            }
        });
    }

    function arraysSonIguales(arr1, arr2) {
        if (arr1.length !== arr2.length) {
            return false;
        }

        for (let i = 0; i < arr1.length; i++) {
            if (arr1[i].ci !== arr2[i].ci || arr1[i].nombre !== arr2[i].nombre) {
                return false;
            }
        }

        return true;
    }

    function previo() {
        if (localOffset >= 5) {
            localOffset -= 5;
            getAll(); // Actualiza la lista con el nuevo localOffset
        }
    }
}

$(document).on('click', '.delete', function () {
    let item = $(this)[0].parentElement.parentElement;
    let ci = $(item).attr('cod');
    console.log(ci);
    $.ajax({
        url: 'eliminarChofer.php',
        type: 'POST',
        data: {
            ci: ci
        },
        success: function (data) {
            getAll();
            swal({
                text: "El chofer fue eliminado!",
            });
        }
    });
})
$(document).on('click', '.mas', function () {
    let item = $(this)[0].parentElement.parentElement;
    let ci = $(item).attr('cod');
    let ret = '';
    $.ajax({
        url: 'mostrarMasChofer.php',
        type: 'POST',
        data: {
            ci: ci
        },
        success: function (response) {
            let data = JSON.parse(response);
            let chofer = data.datos[0];
            console.log(chofer);

            ci = chofer.ci;
            $('#nombre').val(chofer.nombre);
            $('#apellido').val(chofer.apellido);
            $('#direccion').val(chofer.direccion);
            $('#vencimientoDeLibreta').val(chofer.vencimientoDeLibreta);
            ret += `
          <tr cod="${chofer.ci}">S
            <td>${chofer.ci}</td>
            <td>${chofer.nombre}</td>
			<td>${chofer.apellido}</td>
			<td>${chofer.direccion}</td>
			<td>${chofer.vencimientoDeLibreta}</td>
                      </tr>
		  `
            $('#mostrar').html(ret);
        }
    })
});
function getAll() {
    $.ajax({
        url: 'choferes.php',
        type: 'POST',
        data: {
            res: 1,
            offset: localOffset,
            verificar: verificar
        },
        success: function (response) {
            let data = JSON.parse(response);
            choferes = data.datos; // Actualiza los choferes
            let verificacion = data.verificacion;
            let ret = '';
            console.log(JSON.parse(response));

            choferes.forEach(res => {
                ret += `
                    <tr cod="${res.ci}">
                        <td>${res.ci}</td>
                        <td>${res.nombre}</td>
                        <td ci="botones">
                            <button class="mas btn btn-primary">Mostrar mas</button>
                            <button class="delete btn btn-danger">Eliminar</button>
                        </td>
                    </tr>`;
                $('#choferes').html(ret);
            });

            console.log("verificacion: " + verificacion);
            console.log("localOffset: " + localOffset);
        }
    });
}