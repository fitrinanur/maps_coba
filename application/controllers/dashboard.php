<?php 

/**
* 
*/
session_start();
class Dashboard extends CI_Controller
{
	function __construct()
     {
          // Call the Model constructor
          parent::__construct();
           $this->load->model('login_model');
           $this->load->library('form_validation');
     }
	function index(){
    $this->template->load('main_template','page/dashboard_view');
  }

}