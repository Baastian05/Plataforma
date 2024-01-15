<?php include("encabezado.php"); ?>
  <table class="table table-striped" width="100%">
  <thead>
  <tr>
    <th>id</th>
    <th>Clave</th>
    <th>Tipo</th>
    <th>Descripción</th>
    <th>Modificar</th>
    <th>Borrar</th>
  </tr>
  </thead>
  <tbody>
    <?php
    for($i=0; $i<count($datos['data']); $i++){
      print "<tr>";
      print "<td class='text-left'>".$datos["data"][$i]["id"]."</td>";
      print "<td class='text-left'>".$datos["data"][$i]["clave"]."</td>";
      print "<td class='text-left'>".$datos["data"][$i]["tipoMaterial"]."</td>";
      print "<td class='text-left'>".$datos["data"][$i]["descripcion"]."</td>";
      //
      print "<td><a href='".RUTA."materiales/modificar/".$datos["data"][$i]["id"]."' class='btn btn-info'>Modificar</a></td>";
      print "<td><a href='".RUTA."materiales/borrar/".$datos["data"][$i]["id"]."' class='btn btn-danger'>Borrar</a></td>";
      print "</tr>";
    }
    ?>
  </tbody>
  </table>
  <?php include("paginacion.php"); ?>
<a href="<?php print RUTA; ?>materiales/alta" class="btn btn-success">
  Dar de alta un material</a>
<?php include("piepagina.php"); ?>