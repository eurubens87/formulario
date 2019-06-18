<script type="text/javascript">
    function palabra(var1, var2, e) {
       tecla = (document.all) ? e.keyCode : e.which;
       if (tecla==8) return;
       minPalabras = 300;
       maxPalabras = 500;
       txt = var1.value.split(' ');
       aux = txt.length;
       if(var1.value=="")
       {
          aux = 0;
       }
       cantidad.value = aux;

       if(txt.length<minPalabras)
       {
          var2.disabled = "true";
       }
       else
       {
          if(txt.length>maxPalabras)
          {
            alert("El Resumen debe contener 500 palabras como máximo");
            document.getElementById('boton').disabled=true;
          }
          else
          {
            document.getElementById('boton').disabled=false;
          }
       }
    }

    function deshabilita()
    {
       maxPalabras = 500;
       txt = resumen.value.split(' ');
       if(txt.length>maxPalabras)
       {
          return false;
       }
    }

    function muestra()
    {
       document.getElementById('resultado').value = document.getElementById('pais').value;
    }

</script>



<?php echo form_open('formularios/nuevoIngreso',array('class' => "needs-validation"));?> 

<div class="row">
    <div class="col-12 themed-grid-col">
      <h3 style="text-align: center; font-size: 16px;"> CONGRESO LATINOAMERICANO </h3>
      <h3 style="text-align: center; font-size: 14px;"> "El rol social de la Educación Superior en América Latina: desafios, escenarios, y prácticas innovadoras" </h3>
    </div>
</div>

<div class="row mb-3">
    <div class="col-12 themed-grid-col">
      <h3 style="text-align: left; font-size: 14px;"> Área responsable: Secretaría de Cooperación y Servicios Públicos </h3>
    </div>
</div>

<div>
    <h6 style="color: red; font-size: 12px;"><b>Completar los siguientes campos obligatorios para registrar su trabajo</b></h6>
</div>

<div class="row mb-3">
    <div class="col-12 themed-grid-col">
      <h3 style="text-align: center;">DATOS PERSONALES</h3>
      <div class="row">
          <div class="col-md-6 mb-3" style="text-align: center;">
              <label for="apellido" style="color: red; font-size: 14px;"><b> Apellidos </b></label>
              <input type="text" style="text-align: center;" name="apellido" class="form-control" id="apellido" placeholder="">
              <p><?php echo form_error('apellido');?> </p>
          </div>
          <div class="col-md-6 mb-3" style="text-align: center;">
              <label for="nombre" style="color: red; font-size: 14px;"><b> Nombres </b></label>
              <input type="text" style="text-align: center;" name="nombre" class="form-control" id="nombre" placeholder="">
              <p><?php echo form_error('nombre');?> </p>
          </div>
          <div class="col-md-6 mb-3" style="text-align: center;">
              <label for="dni" style="color: red; font-size: 14px;"><b> DNI </b>(Máximo 8 dígitos)</label>
              <input type="number" style="text-align: center;" maxlength="8" oninput="if(this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);" name="dni" class="form-control" id="dni" placeholder="">
              <p><?php echo form_error('dni');?> </p>
          </div>

          <div class="col-md-6 mb-3" style="text-align: center;">
              <label for="cuit" style="color: red; font-size: 14px;"><b> CUIT </b>(Máximo 11 dígitos)</label>
              <input type="number" style="text-align: center;" maxlength="11" oninput="if(this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);" name="cuit" class="form-control" id="cuit" placeholder="">
              <p><?php echo form_error('cuit');?> </p>
          </div>
          <div class="col-md-6 mb-3" style="text-align: center;">
              <label for="nacimiento" style="color: red; font-size: 14px;"><b> Fecha de Nacimiento </b></label>
              <input type="date" style="text-align: center;" name="nacimiento" class="form-control" id="nacimiento" placeholder="">
              <p><?php echo form_error('nacimiento');?> </p>
          </div>
          <div class="col-md-6 mb-3" style="text-align: center;">
              <label for="direccion" style="color: red; font-size: 14px;"><b> Dirección </b></label>
              <input type="text" style="text-align: center;" name="direccion" class="form-control" id="direccion" placeholder="">
              <p><?php echo form_error('direccion');?> </p>
          </div>
          <div class="col-md-6 mb-3" style="text-align: center;">
              <label for="telefono" style="color: red; font-size: 14px;"><b> Teléfono </b>(Ingrese sólo números)</label>
              <input type="number" style="text-align: center;" name="telefono" class="form-control" id="telefono" placeholder="">
              <p><?php echo form_error('telefono');?> </p>
          </div>
          <div class="col-md-6 mb-3" style="text-align: center;">
              <label for="email" style="color: red; font-size: 14px;"><b> E-mail </b></label>
              <input type="email" style="text-align: center;" name="email" class="form-control" id="email" placeholder="">
              <p><?php echo form_error('email');?> </p>
          </div>

          <div class="col-md-6 mb-3" style="text-align: center;">
              <label for="pais" style="color: red; font-size: 14px;"><b> País </b></label>
              <select style="text-align: center;" name="pais" class="form-control" onchange="muestra()" id="pais" placeholder="">
                <?php foreach($paises as $p){ ?>
                <option value="<?php echo $p->id_pais ?>"><?php echo $p->nombre ?></option>
                <?php } ?>
              </select>
              <p><?php echo form_error('pais');?> </p>
          </div>
          <div class="col-md-6 mb-3" style="text-align: center;">
              <label for="provincia" style="color: red; font-size: 14px;"><b> Provincia </b></label>
              <select style="text-align: center;" name="provincia" class="form-control" id="provincia" placeholder="">
                <?php foreach($provincias as $p){ ?>
                <option><?php echo $p->nombre ?></option>
                <?php } ?>
              </select>
              <p><?php echo form_error('provincia');?> </p>
          </div>
      </div>
    </div>
</div>

<div class="row mb-3">
    <div class="col-12 themed-grid-col">
      <h3 style="text-align: center;">DATOS DEL TRABAJO A PRESENTAR</h3>
      <div class="row">
          <div class="col-md-6 mb-3" style="text-align: center;">
              <label for="titulo" style="color: red; font-size: 14px;"><b> TÍTULO </b></label>
              <input type="text" style="text-align: center;" name="titulo" class="form-control" id="titulo" placeholder="">
              <p><?php echo form_error('titulo');?> </p>
          </div>
          <div class="col-md-6 mb-3" style="text-align: center;">
              <label for="eje" style="color: red; font-size: 14px;"><b> Eje </b></label>
              <input type="text" style="text-align: center;" maxlength="100" name="eje" class="form-control" id="eje" placeholder="">
              <p><?php echo form_error('eje');?> </p>
          </div>
          <div class="col-md-12 mb-3" style="text-align: center;">
              <label for="resumen" style="color: red; font-size: 14px;"><b> Resumen </b> (300 a 500 palabras) </label>
              <textarea type="text" style="resize: none;" onkeypress="return deshabilita()" oninput="palabra(this, boton, event)" name="resumen" class="form-control" id="resumen" placeholder=""></textarea>
              <p><?php echo form_error('resumen');?> </p>
              <p style="text-align: left;">La cantidad de palabras ingresadas es: <input style="text-align: center; width: 60px;" type="text" name="cantidad" id="cantidad" readonly="true"></p>
              <input type="text" name="resultado" id="resultado">
          </div>
      </div>
    </div>
</div>

<button class="btn btn-lg btn-primary btn-block" id="boton" name="boton" type="submit">Guardar</button>
<br>	
  <?php echo form_close(); ?> 