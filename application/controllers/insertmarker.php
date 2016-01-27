<?php

class Insertmarker extends CI_Controller {

    private $upload_path;

    function __construct() {
        parent::__construct();
    }

    function index() {
        $message = $this->input->get("message");
        $status = ($message) ? "upload berhasil" : "";
        $data = array(
            "status" => $status
        );
        $this->template->load('main_template', 'page/insertmarker_view', $data);
    }

    function add_marker() {
        $this->upload_path = realpath(APPPATH . '../assets/img');
        $data = array(
            'lokasi' => $this->input->post('lokasi'),
            'nama_lokasi' => $this->input->post('nama_lokasi'),
            'subtitle'=> $this->input->post('subtitle'),
            'alamat'=> $this->input->post('alamat'),
            'nomer_tlp'=> $this->input->post('nomer_tlp'),
            'info' => $this->input->post('info')

        );
        $config = array(
            'allowed_types' => 'jpg|jpeg|gif|png',
            'upload_path' => $this->upload_path,
            'max_size' => 2000
        );
        $this->load->library('upload', $config);
        $icon = $this->upload->do_upload("icon");

        $error = [];
        $upload = [];
        if ( !$icon ){
            $error["icon"] = $this->upload->display_errors();
        }else{
            $upload["icon"] = $this->upload->data();
            $data['icon'] = $upload['icon']['file_name'];
        }

        $image = $this->upload->do_upload("image");
        if ( !$image ){
            $error["image"] = $this->upload->display_errors();
        }else{
            $upload["image"] = $this->upload->data();
            $data['image'] = $upload['image']['file_name'];
        }

        if(count($error) > 0){
            $this->template->load('main_template', 'page/insertmarker_view', $error);
        }else{
            $data['info'] = $this->prepare_template($data);
            unset($data['image']);
            $this->map_model->add_marker($data);
            redirect("insertmarker?message=true");
        }
    }

    private function prepare_template($data)
    {
        $template = "<div id='iw-container'><div class='iw-title'>$data[nama_lokasi]</div><div class='iw-content'><div class='iw-subTitle'>$data[subtitle]</div><img src='".base_url()."/assets/img/$data[image]' height='115' width='83'><p>$data[info]</p><div class='iw-subTitle'>Contact</div><p><b>$data[nama_lokasi]</b><br>$data[alamat] </p><br/><p> Phone. $data[nomer_tlp]<br/>Jawa Tengah</p></div><div class='iw-bottom-gradient'></div></div>";
        return $template;
    }
}