<?php
error_reporting(0);
class Insertmarker extends CI_Controller {
    function __construct() {
        parent::__construct();
        $icon_path;
        $icon_path_url;
    }


	function index(){
	 $this->template->load('main_template','page/insertmarker_view',$data);
	}
	function add_marker() {
		$this->icon_path = realpath (APPPATH . '../assets/img');
		$this->icon_path_url= base_url(). 'assets/img';
        $data = array(
            'lokasi' => $this->input->post('lokasi'),
            'nama_lokasi' => $this->input->post('nama_lokasi'),
            'info' => $this->input->post('info'),
            'icon' => $this->input->post('icon')
        );
        $config = array(
        	'allowed_types' => 'jpg|jpeg|gif|png',
        	'upload_path' =>$this->icon_path,
        	'max_size' => 2000
        	);
        $this->load->library('upload',$config);
        $this->upload->do_upload();


        $this->map_model->add_records($data);
        redirect("maps/index");
    }
   }
