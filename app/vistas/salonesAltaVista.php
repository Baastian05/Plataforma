<?php include_once("encabezado.php"); ?>
  <form enctype="multipart/form-data" action="<?php print RUTA; ?>salones/alta/" method="POST">

    <div class="form-group text-left">
      <label for="clave">Clave:</label>
      <input type="text" name="clave" id="clave" class="form-control" required 
      value="<?php print isset($datos['data']['clave'])?$datos['data']['clave']:'';?>"
      <?php if (isset($datos["baja"])) { print " disabled "; } ?> >
    </div>

    <div class="form-group text-left">
      <label for="descripcion">* Descripción:</label>
      <input type="text" name="descripcion" id="descripcion" class="form-control"
      placeholder="Escribe la descripción del salón." required  
      value="<?php print isset($datos['data']['descripcion'])?$datos['data']['descripcion']:''; ?>"
      <?php if (isset($datos["baja"])) { print " disabled "; } ?> >
    </div>

    <div class="form-group text-left">
      <label for="nota">Nota:</label>
      <input type="text" name="nota" id="nota" class="form-control"
      placeholder="Escribe una nota sobre el salón." required  
      value="<?php print isset($datos['data']['nota'])?$datos['data']['nota']:''; ?>"
      <?php if (isset($datos["baja"])) { print " disabled "; } ?> >
    </div>

    <div class="form-group text-left">
      <input type="hidden" name="id" id="id" value="<?php if (isset($datos['data']['id'])) { print $datos['data']['id']; } else { print ""; }?>">

      <?php
      if (isset($datos["baja"])) { ?>
        <a href="<?php print RUTA; ?>salones/bajaLogica/<?php print $datos['data']['id']; ?>" class="btn btn-danger">Borrar</a>
        <a href="<?php print RUTA; ?>salones" class="btn btn-danger">Regresar</a>
        <p><b>Advertencia: una vez borrado el registro, no podrá recuperar la información</b></p>
      <?php } else { ?> 
      <input type="submit" value="Enviar" class="btn btn-success">
      <a href="<?php print RUTA; ?>salones" class="btn btn-info">Regresar</a>
    <?php } ?> 
    </div>
  </form>
<?php include_once("piepagina.php"); ?>