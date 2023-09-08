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

<body class="BgAzul">
    <div>
			<table class="BgAzul" >
				<thead>
					<tr class="LetraA">
						<th>ci</th>
						<th>Nombre</th>
						<th><button id="agregarChofer">Agregar chofer</button></th>
					</tr>
				</thead>
				<tbody id="choferes" class="LetraB"></tbody>
			</table>
            <nav aria-label="Page navigation example">
  <ul class="pagination paginas">
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
 <div id="mostrar" class="tableStyle">
    <div id="myModal" class="modal">
        <div class="modal-content" style="background-color: hsla(230, 100%, 48%, 0.8) !important;width: 80%;height: 80%;  top: 50%; left: 50%; transform: translate(-50%, -50%); ">
            <span class="close">&times;</span>
			 <form action="agregarCliente.php" method="POST" id="agregarClienteForm" style="height: 85%;"> 
            <table class="tableStyle">
    <tr class="trStyle">
        <td class="tdStyle textStyle" for="ci">ci</td>
        <td><input type="number" name="ci" id="ci" class="inputStyle" placeholder="Ingrese Cedula..."></td>
    </tr>
    <tr class="trStyle">
        <td class="tdStyle textStyle" for="nombre">Nombre</td>
        <td><input type="text" name="nombre" id="nombre" class="inputStyle" placeholder="Ingrese Nombre..."></td>
    </tr>
    <tr class="trStyle">
        <td class="tdStyle textStyle" for="apellido">Apellido</td>
        <td><input type="text" name="apellido" id="apellido" class="inputStyle" placeholder="Ingrese Apellido..."></td>
    </tr>
    <tr class="trStyle">
        <td class="tdStyle textStyle" for="vencimientoDeLibreta">vencimiento de libreta</td>
        <td><input type="text" name="vencimientoDeLibreta" id="vencimientoDeLibreta" class="inputStyle" placeholder="Ingrese el vencimiento de la libreta..."></td>
    </tr>
    <tr class="trStyle">
        <td class="tdStyle textStyle" for="direccion">direccion</td>
        <td><input type="tel" name="direccion" id="direccion" class="inputStyle" placeholder="Ingrese Direccion..."></td>
    </tr>
</table>
	<input type="submit" value="Agregar" class="submit-button">
	
            </form>
        </div>
    </div>
</div>
    <script src="js/choferes.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>

</body>

</html>