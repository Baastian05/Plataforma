<?php  
/**
 * 
 */
class TableroModelo
{
	private $db = "";
	
	function __construct()
	{
		$this->db = new MySQLdb();
	}

	public function setUsuario($id, $nombres, $apellidoPaterno, $apellidoMaterno, $clave)
	{
		$sql = "UPDATE usuarios SET ";
		$sql.= "nombres='".$nombres."', ";
		$sql.= "apellidoMaterno='".$apellidoMaterno."', ";
		$sql.= "apellidoPaterno='".$apellidoPaterno."' ";
		if ($clave!="") {
			$clave = hash_hmac("sha512", $clave, CLAVE);
			$sql.= ", clave='".$clave."' ";
		}
		$sql.= "WHERE id=".$id;
		return $this->db->queryNoSelect($sql);
	}

	public function getUsuarioId($id='')
	{
		$sql = "SELECT * FROM usuarios WHERE id=".$id." AND baja=0";
		return $this->db->query($sql);
	}

	public function getCursos(){
		$sql = "SELECT * ";
		$sql.= "FROM cursos ";
		$sql.= "WHERE baja=0 ";
		$sql.= "ORDER BY fechaInicio ";
		$sql.= "LIMIT ".TAMANO_PAGINA;
		$data = $this->db->querySelect($sql);
		return $data;
	}
}
?>