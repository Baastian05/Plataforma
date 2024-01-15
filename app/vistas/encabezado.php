<!DOCTYPE html>
<html>
<head>
	<script src="//code.tidio.co/soyd2aibcer6729twfrkwbfa8mvosrnn.js" async></script>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Facultad de Ingeniería en Sistemas, Electrónica e Industrial: Entrar al sitio</title>
    <link rel="icon" href="https://sistemaseducaciononline.uta.edu.ec/pluginfile.php/1/theme_adaptable/favicon/1702489518/sistemas.png" />
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</head>
<body>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
		<?php
		print '<a href="'.RUTA;
		if (isset($datos["admon"]) && $datos["admon"]==ADMON) {
			print 'tablero"';
		} elseif (isset($datos["admon"]) && $datos["admon"]==PROFESOR) {
			print 'profesores"';
		} elseif (isset($datos["admon"]) && $datos["admon"]==ESTUDIANTE) {
			print 'estudiantes"';
		}
		print ' class="navbar-brand"><img src="'.RUTA.'public/img/logo.png" width="40" alt="Inicio"/></a>';

		if (isset($datos["menu"]) && $datos["menu"]==true) {
			if (isset($datos["admon"]) && $datos["admon"]==ADMON) {
				print "<ul class='navbar-nav mr-auto mt-2 mt-lg-0'>";
				print "<li class='nav-item'>";
				print "<a href='".RUTA."carreras' class='nav-link ";
				if(isset($datos["activo"]) && $datos["activo"]=="carreras") print "active";
				print "'>Carreras</a>";
				print "</li>";
				//
				print "<li class='nav-item'>";
				print "<a href='".RUTA."materias' class='nav-link ";
				if(isset($datos["activo"]) && $datos["activo"]=="materias") print "active";
				print "'>Materias</a>";
				print "</li>";
				//
				print "<li class='nav-item'>";
				print "<a href='".RUTA."usuarios' class='nav-link ";
				if(isset($datos["activo"]) && $datos["activo"]=="usuarios") print "active";
				print "'>Usuarios</a>";
				print "</li>";
				//
				print "<li class='nav-item'>";
				print "<a href='".RUTA."salones' class='nav-link ";
				if(isset($datos["activo"]) && $datos["activo"]=="salones") print "active";
				print "'>Salones</a>";
				print "</li>";
				//
				print "<li class='nav-item'>";
				print "<a href='".RUTA."cursos' class='nav-link ";
				if(isset($datos["activo"]) && $datos["activo"]=="cursos") print "active";
				print "'>Cursos</a>";
				print "</li>";
				//
				print "<li class='nav-item'>";
				print "<a href='".RUTA."materiales' class='nav-link ";
				if(isset($datos["activo"]) && $datos["activo"]=="materiales") print "active";
				print "'>Materiales</a>";
				print "</li>";
				//
				print "<li class='nav-item'>";
				print "<a href='".RUTA."catalogos' class='nav-link ";
				if(isset($datos["activo"]) && $datos["activo"]=="catalogos") print "active";
				print "'>Catálogos</a>";
				print "</li>";
				//
				print "</ul>";
			}
	      //
	      print "<ul class='nav navbar-nav ms-auto'>";
	      //
	      print "<li class='nav-item'>";
	      print "<a href='".RUTA."tablero/perfil' class='nav-link'>";
	      if (isset($datos["data"]["foto"]) && $datos["data"]["foto"]!="") {
	       	print "<img src='".RUTA."public/fotos/".$datos["data"]["foto"]."' width='40'/>";
	       } else {
			print '<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-square" viewBox="0 0 16 16">
			<path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0"/>
			<path d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2zm12 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1v-1c0-1-1-4-6-4s-6 3-6 4v1a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1z"/>
		  </svg>';
	       }
	      print "</a>";
	      print "</li>";
	      print "<li class='nav-item'>";
	      print "<a href='".RUTA."tablero/logout' class='nav-link'>";
		  print'<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-right" viewBox="0 0 16 16">
		   <path fill-rule="evenodd" d="M10 12.5a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v2a.5.5 0 0 0 1 0v-2A1.5 1.5 0 0 0 9.5 2h-8A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-2a.5.5 0 0 0-1 0z"/>
		   <path fill-rule="evenodd" d="M15.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 0 0-.708.708L14.293 7.5H5.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708z"/>
		  </svg>';
	      print "</a></li>";
	      print "</ul>";
	    }  
	?>
	</nav>
	<div class="container-fluid">
		<div class="row content">
			<div class="col-sm-1"></div>
			<div class="col-sm-10">
				<?php 
				if (isset($datos["errores"])) {
					if (count($datos["errores"])>0) {
						print "<div class='alert alert-danger mt-3'>";
						foreach ($datos["errores"] as $valor) {
							print "<strong>* ".$valor."</strong><br>";
						}
						print "</div>";
					}
				}
				?>
				<div class="card p-4 mt-3 text-primary-emphasis bg-primary-subtle border border-primary-subtle rounded-3">
					<div class="card-header text-center">
						<h2><?php print $datos["subtitulo"]; ?></h2>
					</div>
					<div class="card-body">
