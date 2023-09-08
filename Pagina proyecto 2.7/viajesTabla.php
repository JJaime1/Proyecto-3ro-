<html lang="en">

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/styleTablas.css">
	<link rel="stylesheet" href="css/style2.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
</head>

<body class="BgAzul" style="overflow-y: hidden;">
    <div class="table-container">
			<table>
				<thead class="BgAzul">
					<tr class="LetraA">
						<th>Chofer</th>
						<th>Cliente</th>
						<th>Hora Inicio</th>
						<th><button id="agregarViaje" class="btnAgr">Agregar Viaje</button></th>
					</tr>
				</thead>
				<tbody id="viajes" class="LetraB"></tbody>
			</table>
            <nav aria-label="Page navigation example" class="flechitas">
  <ul class="pagination paginas" style="margin-left: 50%;">
    <li class="page-item">
      <a class="page-link" href="#" aria-label="Previous" id="prev">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
     <li class="page-item">
      <a class="page-link" href="#" aria-label="Next" id="next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>
</nav>



    </div>
	
	
<div id="mostrar" ></div>
 
    <div id="myModal" class="modal" style="overflow-y: hidden;">
        <div class="modal-content" style="font-size:24px; hsla(230, 80%, 53%, 0.9) !important;width: 80%;height: 80%;  top: 50%; left: 50%; transform: translate(-50%, -50%); ">
            <span class="close">&times;</span>
			 <form action="agregarViaje.php" method="POST" id="agregarViajeForm" style="height: 85%;"> 
            <table class="tableStyle">
			
    <tr class="trStyle">
        <td class="tdStyle textStyle"><label for="cliente">Cliente</label></td>
        <td>
            <select id="cliente">
                <!-- Opciones de cliente -->
            </select>
        </td>
    </tr>

    <tr class="trStyle">
        <td class="tdStyle textStyle"><label for="chofer">Chofer</label></td>
        <td>
            <select id="chofer">
			<option value="particular">Particular</option>
                <!-- Opciones de chofer -->
            </select>
        </td>
    </tr>

    <tr class="trStyle">
        <td class="tdStyle textStyle" for="origen">Origen</td>
        <td><input type="text" name="origen" id="origen" class="inputStyle" placeholder="Ingrese origen del viaje..."></td>
    </tr>

    <tr class="trStyle">
        <td class="tdStyle textStyle" for="destino">Destino</td>
        <td><input type="text" name="destino" id="destino" class="inputStyle" placeholder="Ingrese destino del viaje..."></td>
    </tr>

    <tr class="trStyle">
        <td class="tdStyle textStyle"><label for="metodo">Método de Pago</label></td>
        <td>
            <select id="metodo">
                <option value="contado">Contado</option>
                <option value="cuentaCorriente">Cuenta Corriente</option>
                <option value="transferencia">Transferencia</option>
                <option value="tarjeta">Tarjeta</option>
            </select>
        </td>
    </tr>

    <tr class="trStyle">
        <td class="tdStyle textStyle"><label for="fecha">Fecha:</label></td>
        <td><input type="date" id="fecha" name="fecha"></td>
    </tr>

    <tr class="trStyle">
        <td class="tdStyle textStyle"><label for="hora">Selecciona una hora:</label></td>
        <td><input type="time" id="hora" name="hora"></td>
    </tr>

    <tr class="trStyle">
        <td class="tdStyle textStyle" for="comentario">Comentario</td>
        <td><input type="text" name="comentario" id="comentario" class="inputStyle" placeholder="Ingrese comentario del viaje..."></td>
    </tr>
	
	<tr>
	<td colspan="2" style="text-align: right;"><input type="submit" value="Agregar" class="submit-button"></td>
	</tr>
</table>
	
            </form>
        </div>
</div>

    <script src="js/viajes.js"></script> <!-- Falta realizar el script-->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>

</body>

</html>
	
	