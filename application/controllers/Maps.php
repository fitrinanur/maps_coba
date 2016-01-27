<?php

class Maps extends CI_Controller {
    function __construct() {
        parent::__construct();
    }

    public function index() {
        $config['center'] = '-7.569125, 110.829693';
        $config['zoom'] = '13';
        $this->googlemaps->initialize($config);
        $markers = $this->map_model->get_marker();
        /*print_r($markers);exit;*/
        foreach ($markers as $marker) {
            $set_marker = array(
                'position' => $marker['lokasi'],
                'icon' => base_url() . "/assets/img/" . $marker['icon'],
                'infowindow_content' => $marker['info']
            );
            /*print_r($set_marker);*/
            $this->googlemaps->add_marker($set_marker);   /**/

        }


        /* $marker = array();
         $marker['position'] = '-7.563880, 110.619663';
         $marker['infowindow_content'] = 'Kebun Binatang Jurug';
         $marker['icon'] = 'http://chart.apis.google.com/chart?chst=d_map_pin_letter&chld=A|9999FF|000000';*/


        $data['map'] = $this->googlemaps->create_map();
        $this->template->load('map', 'page/page_map', $data);
    }

    public function home() {
        $config['center'] = '-7.569125, 110.829693';
        $config['zoom'] = '13';
        $this->googlemaps->initialize($config);
        $markers = $this->map_model->get_marker();
        /*print_r($markers);exit;*/
        foreach ($markers as $marker) {
            $set_marker = array(
                'position' => $marker['lokasi'],
                'icon' => base_url() . "/assets/img" . $marker['icon'],
                'infowindow_content' => $marker['info']
            );
            /*print_r($set_marker);*/
            $this->googlemaps->add_marker($set_marker);   /**/

        }


        /* $marker = array();
         $marker['position'] = '-7.563880, 110.619663';
         $marker['infowindow_content'] = 'Kebun Binatang Jurug';
         $marker['icon'] = 'http://chart.apis.google.com/chart?chst=d_map_pin_letter&chld=A|9999FF|000000';*/


        $data['map'] = $this->googlemaps->create_map();
        $this->template->load('map', 'page/page_map', $data);
    }

    public function about() {
        $data = array();
        $this->template->load('map', 'page/page_about', $data);
    }

    
    public function login() {
        $data = array();
        $this->template->load('map', 'page/page_login', $data);
    }

    public function dologin() {
        $username = $this->input->post('username');
        $password = $this->input->post('password');
        $logged = $this->userauth->login_user($username, $password);
        if ($logged == TRUE) {
            echo "
            <script type='text/javascript'>
            setTimeout(function () {
                window.location.href = '" . site_url("dashboard") . "';
            }, 2000);
            </script>             
            ";
        }
        else {
            echo "error";

        }

    }

    public function logout() {
        $this->session->unset_userdata('logged_in');
        session_destroy();
        redirect('maps/index', 'refresh');
    }
}