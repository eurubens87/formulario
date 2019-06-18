	<?php
	class Asistente_model extends CI_Model { 
	   		public function __construct() {
	      	parent::__construct();
	   }

	   public function addAsistente($datos)
	   {
	   	   $this->db->insert('asistente', $datos);
		   return true;
	   }

	   public function paises()
	   {
           $query = $this->db
           ->select("*")
           ->from("paises")
           ->order_by('nombre')
           ->get();
           return $query->result();
	   }
       
	   public function provincias($pais){
           $query = $this->db
           ->select("*")
           ->from("provincias")
           ->where('id_pais', $pais)
           ->order_by('nombre')
           ->get();
           return $query->result();
	   }

	}