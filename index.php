<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Votación</title>
</head>
<body>
    <div class="container">
        <h1 class="display-3 mb-5">Formulario de Votación</h1>
        <form>
            <div class="row mb-3">
                <div class="col-6 mx-auto form-floating">
                    <input type="text" class="form-control" id="nombre" placeholder="Nombre y Apellido" required>
                    <label for="nombre" class="form-label"  style="margin-left: 10px;">Nombre y Apellido</label>
                </div>
                <div class="col-6 mx-auto form-floating">
                    <input type="text" class="form-control" id="alias" placeholder="Alias">
                    <label for="alias" class="form-label" style="margin-left: 10px;">Alias</label>
                </div>
            </div>

            <div class="row mb-3">
                <div class="col-6 mx-auto form-floating">
                    <input type="text" class="form-control" id="rut" placeholder="Rut" maxlength="10">
                    <label for="rut" class="form-label" style="margin-left: 10px;">RUT (ej. 12345678-9)</label>
                </div>
                <div class="col-6 mx-auto form-floating">
                    <input type="email" class="form-control" id="email" placeholder="Email">
                    <label for="email" class="form-label" style="margin-left: 10px;">Email</label>
                </div>
            </div>

            <div class="row mb-3">
                <div class="col-6 mx-auto form-floating">
                    <select class="form-select" aria-label="region" id="region" onchange="mostrar_comunas()">
                        
                    </select>
                    <label for="region" class="form-label" style="margin-left: 10px;">Región</label>
                </div>
                <div class="col-6 mx-auto form-floating">
                    <select class="form-select" aria-label="comuna" id="comuna">

                    </select>
                    <label for="comuna" class="form-label" style="margin-left: 10px;">Comuna</label>
                </div>
            </div>

            <div class="row mb-3">
                <div class="col-6 mx-auto form-floating">
                    <select class="form-select" aria-label="candidato" id="candidato">

                    </select>
                    <label for="candidato" class="form-label" style="margin-left: 10px;">Candidato</label>
                </div>
            </div>

            <legend class="col-form-label col-sm-2 pt-0">Cómo se enteró de nosotros</legend>

            <div class="row mb-3" style="margin-left: 0px; width: 50%">
                <div class="col-3 mx-auto form-check form-switch">
                    
                    <input class="form-check-input" type="checkbox" id="Web">
                    <label class="form-check-label" for="Web">Web</label>
                </div>

                <div class="col-3 mx-auto form-check form-switch">
                    <label class="form-check-label" for="TV">TV</label>
                    <input class="form-check-input" type="checkbox" id="TV">
                </div>

                <div class="col-3 mx-auto form-check form-switch">
                    <label class="form-check-label" for="RRSS">RRSS</label>
                    <input class="form-check-input" type="checkbox" id="RRSS">
                </div>

                <div class="col-3 mx-auto form-check form-switch">
                    <label class="form-check-label" for="Amigo">Amigo</label>
                    <input class="form-check-input" type="checkbox" id="Amigo">
                </div>
            </div>
            <button type="button" class="btn btn-primary mt-5" id="votar">Ingresar Votación</button>
        </form>
    </div>
    <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="procesa_formulario.js"></script>
</body>
</html>