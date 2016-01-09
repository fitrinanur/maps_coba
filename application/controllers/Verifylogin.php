<?php if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class VerifyLogin extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->load->model('login_model', '', TRUE);
    }

    function index() {
        //Aksi untuk melakukan validasi
        $this->load->library('form_validation');

        $this->form_validation->set_rules('username', 'Username', 'trim|required|xss_clean');
        $this->form_validation->set_rules('password', 'Password', 'trim|required|xss_clean|callback_check_database');

        if ($this->form_validation->run() == FALSE) {
            //Jika validasi gagal user akan diarahkan kembali ke halaman login
            $this->template->load('home_template', 'page/login_home');
        }
        else {
            //Jika berhasil user akan di arahkan ke private area
            redirect('dashboard', 'refresh');
        }
    }

    function check_database($password) {
        //validasi field terhadap database
        $username = $this->input->post('username');

        //query ke database
        $result = $this->user->login($username, $password);

        if ($result) {
            $sess_array = array();
            foreach ($result as $row) {
                $sess_array = array(
                    'id' => $row->id,
                    'username' => $row->username
                );
                $this->session->set_userdata('logged_in', $sess_array);
            }
            return TRUE;
        }
        else {
            $this->form_validation->set_message('check_database', 'Invalid username or password');
            return FALSE;
        }
    }
}