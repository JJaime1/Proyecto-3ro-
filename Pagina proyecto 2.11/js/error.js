 //todo este script es en caso de error al ingresar uno de los datos
        //parámetros de la URL
        const params = new URLSearchParams(window.location.search);
        const error = params.get('error');

        // esta parte es para que el mensaje no aparesca a no ser que haya un error
        if (error && error.length > 0) {
            const errorMessage = document.createElement('p');
            errorMessage.textContent = error;
            document.getElementById("msgError").appendChild(errorMessage);
        }