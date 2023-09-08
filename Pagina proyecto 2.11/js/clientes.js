
let x = $(document);
x.ready(inicializarEventos);
let localOffset = 0; // Cambio de offset a localOffset
let next = $("#next");
let prev = $("#prev");
let clientes = [];
let verificar = 0;
let comprobar = 10;

function inicializarEventos() {
    let openModalBtn = $("#agregarCliente");
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
            url: 'clientes.php',
            type: 'POST',
            data: {
                res: 1,
                offset: nuevoLocalOffset,
                verificar: verificar
            },
            success: function (response) {
                let data = JSON.parse(response);
                let verificacion = data.verificacion;
                let nuevosClientes = data.datos;

                if (!arraysSonIguales(clientes, nuevosClientes)) {
                    // Solo si los arrays no son iguales
                    localOffset = nuevoLocalOffset; // Actualiza el localOffset
                    clientes = nuevosClientes; // Actualiza los datos
                }

                let ret = '';
                console.log(JSON.parse(response));
                console.log("verificacion: " + verificacion);

                clientes.forEach(res => {
                    ret += `
                    <tr cod="${res.id}">
                        <td>${res.id}</td>
                        <td>${res.nombre}</td>
                        <td id="botones">
                            <button class="mas btn btn-primary">Mostrar mas</button>
                            <button class="delete btn btn-danger">Eliminar</button>
                        </td>
                    </tr>`;
                    $('#clientes').html(ret);
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
            if (arr1[i].id !== arr2[i].id || arr1[i].nombre !== arr2[i].nombre) {
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
    let id = $(item).attr('cod');
    console.log(id);
    $.ajax({
        url: 'eliminarCliente.php',
        type: 'POST',
        data: {
            id: id
        },
        success: function (data) {
            getAll();
            swal({
                text: "El cliente fue eliminado!",
            });
        }
    });
})
$(document).on('click', '.mas', function () {
    let item = $(this)[0].parentElement.parentElement;
    let id = $(item).attr('cod');
    let ret = '';
    $.ajax({
        url: 'mostrarMasCliente.php',
        type: 'POST',
        data: {
            id: id
        },
        success: function (response) {
            let data = JSON.parse(response);
            let cliente = data.datos[0];
            console.log(cliente);

            id = cliente.id;
            $('#nombre').val(cliente.nombre);
            $('#apellido').val(cliente.apellido);
            $('#telefono').val(cliente.telefono);
            $('#direccion').val(cliente.direccion);
            $('#deuda').val(cliente.deuda);
            $('#viajes').val(cliente.viajes);
            $('#id').val(cliente.id);
            $('#comentario').val(cliente.comentario);
            ret += `
          <tr cod="${cliente.id}">S
            <td>${cliente.id}</td>
            <td>${cliente.nombre}</td>
			<td>${cliente.apellido}</td>
			<td>${cliente.telefono}</td>
			<td>${cliente.direccion}</td>
			<td>${cliente.deuda}</td>
			<td>${cliente.viajes}</td>
			<td>${cliente.comentario}</td>
          </tr>
		  `
            $('#mostrar').html(ret);
        }
    })
});
function getAll() {
    $.ajax({
        url: 'clientes.php',
        type: 'POST',
        data: {
            res: 1,
            offset: localOffset,
            verificar: verificar
        },
        success: function (response) {
            let data = JSON.parse(response);
            clientes = data.datos; // Actualiza los clientes
            let verificacion = data.verificacion;
            let ret = '';
            console.log(JSON.parse(response));

            clientes.forEach(res => {
                ret += `
                    <tr cod="${res.id}">
                        <td>${res.id}</td>
                        <td>${res.nombre}</td>
                        <td id="botones">
                            <button class="mas btn btn-primary">Mostrar mas</button>
                            <button class="delete btn btn-danger">Eliminar</button>
                        </td>
                    </tr>`;
                $('#clientes').html(ret);
            });

            console.log("verificacion: " + verificacion);
            console.log("localOffset: " + localOffset);
        }
    });
}