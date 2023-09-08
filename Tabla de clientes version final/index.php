<html lang="en">

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
</head>

<body>
    <div>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>CI</th>
						<th>Nombre</th>
						<th><button id="agregarCliente">Agregar cliente</button></th>
					</tr>
				</thead>
				<tbody id="clientes"></tbody>
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
    <div id="mostrar"></div>
    
    <div id="myModal" class="modal">
        <div class="modal-content">
            <span class="close">&times;</span>
            <form action="agregarCliente.php" method="POST" id="agregarClienteForm"> 
             <label for="nombre"> nombre</label>
            <input type="text" name="nombre" id="nombre">
            <label for="Apellido">Apellido</label>
            <input type="text" name="apellido" id="apellido">
            <label for="ci">CI</label>
            <input type="number" name="ci" id="ci">
            <label for="celular">Celular</label>
            <input type="tel" name="celular" id="celular">
            <label for="direccion">Direccion</label>
            <input type="text" name="direccion" id="direccion">
            <label for="email">Correo electronico</label>
            <input type="email" name="email" id="email">
            <input type="submit" value="Agregar" class="submit-button">
            </form>
             </div>
             
    </div>
    <script src="js/clientes.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>

</body>

</html>