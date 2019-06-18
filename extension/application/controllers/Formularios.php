<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Formularios extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('asistente_model');
	}

	public function nuevoIngreso()
	{    
        
        $data['paises'] = $this->asistente_model->paises();

		if(!logged_in()) redirect('auth/login');
		
        $cargado = false;
        $this->form_validation->set_message('required', 'El campo %s es obligatorio');

		$this->form_validation->set_rules('dni', 'DNI', 'required');
		$this->form_validation->set_rules('titulo', 'Título', 'required');
		$this->form_validation->set_rules('resumen', 'Resumen', 'required');
		$this->form_validation->set_rules('eje', 'Eje', 'required');
		$this->form_validation->set_rules('nombre', 'Nombres', 'required');
		$this->form_validation->set_rules('apellido', 'Apellidos', 'required');
		$this->form_validation->set_rules('cuit', 'Cuit', 'required');
		$this->form_validation->set_rules('nacimiento', 'Nacimiento', 'required');
		$this->form_validation->set_rules('direccion', 'Dirección', 'required');
		$this->form_validation->set_rules('telefono', 'Teléfono', 'required');
		$this->form_validation->set_rules('email', 'Email', 'required|valid_email'); 
		$this->form_validation->set_rules('pais', 'Pais', 'required');
		$this->form_validation->set_rules('provincia', 'Provincia', 'required');

		if($this->form_validation->run()){
            $asistentes = array(
            	    "dni" => set_value('dni'),
                    "titulo" => set_value('titulo'),
					"resumen" => set_value('resumen'),
					"eje" => set_value('eje'),
					"nombres" => set_value('nombre'),
					"apellidos" => set_value('apellido'),
					"cuit" => set_value('cuit'),
					"nacimiento" => set_value('nacimiento'),
					"direccion" => set_value('direccion'),
					"telefono" => set_value('telefono'),
					"mail" => set_value('email'),
					"pais" => set_value('pais'),
					"provincia" => set_value('provincia')
				);

			$datos1 = $this->asistente_model->addAsistente($asistentes);

            if($datos1)
            {
                echo '<script type="text/javascript">alert("Datos cargados correctamente");</script>';
                $cargado = true;
            }
            else
            {
               	echo '<script type="text/javascript">alert("Por favor inténtelo nuevamente más tarde...");</script>';
               	$cargado = false;
            }
		}

		if($cargado == false)
		{
			$data['content'] = '/formularios/nuevo_ingreso';
		}
		else
		{
            $data['content'] = 'auth/dash';
		}

		$this->load->view('/includes/template', $data);

	}
}