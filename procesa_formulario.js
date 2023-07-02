$(document).ready(function(){
    //cargarRegiones();
    $.ajax({
        url         :   'cargar_regiones.php',
        type        :   'POST',
        success     :   function(data){
            $("#region").html(data);
        }
    })

    $.ajax({
        url         :   'cargar_candidatos.php',
        type        :   'post',
        success     :   function(data){
            $("#candidato").html(data);
        }
    })

    $("#votar").click(function(){

        //Obtener datos del formulario
        var nombre    = $("#nombre").val();
        var alias     = $("#alias").val();
        var rut       = $("#rut").val();
        var email     = $("#email").val();
        var region    = $("#region :selected").val();
        var comuna    = $("#comuna :selected").val();
        var candidato = $("#candidato :selected").val();

        var web   = $("#Web").prop("checked");
        var TV    = $("#TV").prop("checked");
        var RRSS  = $("#RRSS").prop("checked");
        var Amigo = $("#Amigo").prop("checked");
        var conocer = 0;

        if (web == true)    { conocer++; web=1;}
        if (TV == true)     { conocer++; TV=1;}
        if (RRSS == true)   { conocer++; RRSS=1;}
        if (Amigo == true)  { conocer++; Amigo=1;}

        console.log(web);
        console.log(TV);
        console.log(RRSS);
        console.log(Amigo);

        //Obtener datos adicionales
        const largoAlias= alias.length;         //Se obtiene el largo del campo Alias
        const nrosAlias = tieneNumeros(alias);  //Se obtiene la cantidad de numeros del campo Alias
        const letsAlias = tieneLetras(alias);   //Se obtiene la cantidad de letras del campo Alias
        const diffAlias = parseInt(largoAlias) - parseInt(nrosAlias) - parseInt(letsAlias); //Al largo del Alias se le resta la cantidad de numeros y letras para saber si existen o no otros caracteres
        const rutValido = validarRut(rut);
        const evalemail = validarEmail(email);  //Booleano que indica si correo es valido o no

        //Condición para que nombre no sea vacío
        if (nombre == '') { 
            $("#nombre").focus();
            Swal.fire({ icon: 'error', title: 'Error', html: 'Debes ingresar tu <strong>Nombre</strong!' }) 
        }
        //Condición para que alias no sea vacío
        else if (alias == '') { 
            $("#alias").focus();
            Swal.fire({ icon: 'error', title: 'Error', html: 'Debes ingresar tu <strong>Alias</strong>!' }) 
        }
        //Condición para que largo de alias sea mayor de 5
        else if (largoAlias <= 5) { 
            $("#alias").focus();
            Swal.fire({ icon: 'error', title: 'Error', html: 'Tu <strong>Alias</strong> debe tener <strong>más de 5</strong> caracteres!' }) 
        }
        //Condición que el Alias tenga números
        else if (nrosAlias <= 0 ) { 
            $("#alias").focus();
            Swal.fire({ icon: 'error', title: 'Error', html: 'Tu <strong>Alias</strong> debe contener al menos <strong>1 número</strong>!' }) 
        }
        //Condición que el Alias tenga letras
        else if (letsAlias <= 0) { 
            $("#alias").focus();
            Swal.fire({ icon: 'error', title: 'Error', html: 'Tu <strong>Alias</strong> debe contener al menos <strong>1 letra</strong>!' }) 
        }
        //Condición que el Alias no tenga caracteres especiales
        else if (diffAlias != 0) { 
            $("#alias").focus();
            Swal.fire({ icon: 'error', title: 'Error', html: 'Tu <strong>Alias</strong> debe contener <strong>solo letra y números</strong>!' }) 
        }
        //Condición de rut válido
        else if (rutValido == false) { 
            $("#rut").focus();
            Swal.fire({ icon: 'error', title: 'Error', html: 'Ingresa un <strong>Rut válido</strong>!' }) 
        }
        //Condición de email estándar válido
        else if (evalemail == false) { 
            $("#email").focus();
            Swal.fire({ icon: 'error', title: 'Error', html: 'Ingresa un <strong>Email válido</strong>!' }) 
        }
        //Condición de Región no vacío
        else if (region == '') {
            $("#region").focus();
            Swal.fire({ icon: 'error', title: 'Error', html: 'Ingresa tu <strong>Región</strong>!' }) 
        }
        //Condición de Comuna no vacía
        else if (comuna == '') {
            $("#comuna").focus();
            Swal.fire({ icon: 'error', title: 'Error', html: 'Ingresa tu <strong>Comuna</strong>!' }) 
        }
        //Condición de Candidato no vacío
        else if (candidato == '') {
            $("#candidato").focus();
            Swal.fire({ icon: 'error', title: 'Error', html: 'Ingresa el <strong>Candidato</strong> de tu elección!' }) 
        }
        else if (conocer < 2) {
            Swal.fire({ icon: 'error', title: 'Error', html: 'Debes elegir al menos dos opciones de <br><strong>como se enteró de nosotros</strong><br>Web - TV - RRSS - Amigo' }) 
        }
        else{
            $.ajax({
                url     :   "guardarVoto.php",
                type    :   "POST",
                data    :   { nom:nombre, ali:alias, rut:rut, ema:email, reg:region, com:comuna, can:candidato, web:web, tv:TV, rs:RRSS, ami:Amigo },
                success: function(data){
                    if (data == 1) {
                        Swal.fire({
                            icon    : 'success',
                            title   : 'Registro guardado',
                            text    : 'Tu registro se ha guardado correctamente!'
                        })
                    }
                    else{
                        Swal.fire({
                            icon    : 'error',
                            title   : 'Error',
                            text    : 'No se ha podido guardar el registro. Inténtalo nuevamente!'
                        })
                    }
                }
            })
        }
    })
})



//Función que valida correo electrónico
function validarEmail(email) {
    var regex = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
        return regex.test(email) ? true : false;
}



//Función que valida si variable pasada por parámetros tiene números
function tieneNumeros(alias) {
    var numeros="0123456789";
    var contador = 0;
    for(i=0; i<alias.length; i++){
        if (numeros.indexOf(alias.charAt(i),0)!=-1){
            contador++;
        }
    }
    return contador;
}



//Función que valida si variable pasada por parámetros tiene letras
function tieneLetras(alias) {
    var letras="abcdefghyjklmnñopqrstuvwxyz";
    alias = alias.toLowerCase();
    var contador = 0;
    for(i=0; i<alias.length; i++){
        if (letras.indexOf(alias.charAt(i),0)!=-1){
            contador++;
        }
    }
    return contador;
}



//Función que valida si rut pasado por parámetro es valido
function validarRut(rut){
    
    var suma = 0;
    var validador = '32765432';
    if (rut == '') { return false; }

    //Tiene puntos
    if(rut.includes(".")){ return false; }
    //No tiene guión
    if(!rut.includes("-")){ return false; }
    
    var tmp 	= rut.split('-');       //Se divide el array rut antes del "-" y después
	var crut 	= tmp[0];               //Parte inicial del rut
    var valido = tieneNumeros(crut);    //Se valida que los los dígitos del rut sean números

    //No tiene sólo números 
    if (valido != crut.length) { return false; }

    var digv	= tmp[1];               //Dígito verificador
    var dvval   = tieneNumeros(digv);   //Se valida que sea número

    //El dígito verificador no es número ni K
    if (dvval != 1){ if (digv != 'k' && digv != 'K') { return false; } }

    //Se valida que tenga 7 u 8 dígitos
    if (crut.length != 7 && crut.length != 8) { return false; }
    
    //Se valida que el dígito verificador sea un caracter
    if (digv.length != 1) { return false; }

    //Para Rut menores a 10 millones
    if(crut.length == 7){ validador = '2765432'; }

    for (var index = validador.length-1; index >= 0; index--) {
        suma = parseInt(suma) + ( parseInt(rut[index]) * parseInt(validador[index]));
    }
    //Formula para obtener el dígito verificador
    var dv = 11 - suma%11;
    if (digv == 'k') { digv = 'K'; }
    if (dv == 10) { dv = 'K'; }
    else if (dv == 11){ dv = 0; }

    //Retorna Verdadero o falso dependiendo si el rut es o no válido
    if (dv == digv) { return true; }
    else{ return false; }
}



function mostrar_comunas(){
    var region_sel = $("#region :selected").text();

    $.ajax({
        url: 'cargar_comunas.php',
        type:'post',
        data:{ region: region_sel },
        success:function(data){
            $("#comuna").html(data);
        }
    })
}