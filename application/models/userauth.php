<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Userauth extends CI_Model{
    
    var $CI = NULL;
    function __construct(){
        // Call the Model constructor
        parent::__construct();
        $this->CI =& get_instance();
 
    }
    
    function login_user($username,$password){
        $log_user = $this->CI->db->query("SELECT * FROM user
        WHERE username = '$username' AND password ='$password'");
            if($log_user->num_rows() == 1 ){
            foreach ($log_user->result() as $row){
                $id     = $row->id;
                $username   = $row->username;
                
            }
          
            $user_ses = array(
            'userid' => $id,
            'username' => $username
            );
            $this->CI->session->set_userdata($user_ses);
            return true;
           
        }else{
            return false;
        }
    }
    
    
    function logout(){
        $this->session->sess_destroy(); 
        redirect('map');
    }
    
    function is_logged_in(){
    if($this->CI->session->userdata('userid') == ''){
         return false;
      }
      return true;
    }

   function restrict()
   {
      if($this->is_logged_in() == false)
      {
         redirect('login');
      }
   }
    
    function gotomenu(){
        redirect('dashboard');   
    }
    
    function checkmenu($url="",$action=""){
        $checkurl = ($url=="")?$this->uri->rsegment(1):$url;
        $arraymenu = $this->session->userdata("menu");
        if(array_key_exists("$checkurl",$arraymenu)){
          if($arraymenu[$checkurl]['view']=="y"){
            $edit = ($arraymenu[$checkurl]['update']=="y") ? "y" : "n";
            $del = ($arraymenu[$checkurl]['delete']=="y") ? "y" : "n";
            $print = ($arraymenu[$checkurl]['print']=="y") ? "y" : "n";
            $create = ($arraymenu[$checkurl]['create']=="y") ? "y" : "n";
            return array(
              "P"=>$print,
              "D"=>$del,
              "U"=>$edit,
              "C"=>$create
            );
          }else{
            redirect('map');    
          }    
        }else{
          redirect('map');
        }
        
        
    }
    
    function getdatauser(){
        $data=array(
            'userid' => $this->session->userdata("userid"),
            'username'  => $this->session->userdata("username"),
        );
        return $data;
    }
    
    
    function generate_menu($user_type){
        $menu='';
        $listmenu = array();
        $this->db->select('*,modul_cat.id as modulcatid');
        $this->db->from('auth_user');
        $this->db->join('modul', 'modul.id = auth_user.modul_id','LEFT');
        $this->db->join('modul_cat', 'modul_cat.id = modul.modul_catid','LEFT');
        $this->db->where('auth_user.user_typeid',$user_type);
        $this->db->where('auth_user.view',"y");
        $this->db->group_by("modul_catid"); 
        
        $qmodul_cat = $this->db->get();
        $cmodul = $qmodul_cat->num_rows();
        $modul_cats = $qmodul_cat->result();

        foreach($modul_cats as $modul_cat){
            $menu.= '<li class="dropdown">
                 <a class="dropdown-toggle" data-toggle="dropdown" href="#">'.$modul_cat->modul_cat.'<b class="caret"></b></a>
                 <ul class="dropdown-menu">';
            $this->db->select('*');
            $this->db->from('auth_user');
            $this->db->where('auth_user.user_typeid',$user_type);
            $this->db->join('modul', 'modul.id = auth_user.modul_id','LEFT');
            $this->db->where('modul.modul_catid',$modul_cat->modulcatid);
            $this->db->where('view',"y");
            $this->db->order_by('modul.id asc'); 
            $qmodul = $this->db->get();
            $moduls = $qmodul->result();
            
            $no=0;
            foreach($moduls as $modul){
                $no++;
                $list ="$modul->url";
                $menu.=" <li><a href='".base_url($modul->url)."'><i class='$modul->icon'></i> $modul->modul_name</a></li>";
                $listmenu[$list] = array(
                  "url"=> $modul->url,
                  "view"=> $modul->view,
                  "create"=> $modul->create,
                  "update"=> $modul->update,
                  "delete" => $modul->delete,
                  "print" => $modul->print
                ) ;

            }
            $menu.="</ul></li>";
         }
         $menulist = array(
            "menu"=>$listmenu
         );
         $this->session->set_userdata($menulist);
         if($cmodul > 0){
            return $menu;
         }else return ' ';
    }
}