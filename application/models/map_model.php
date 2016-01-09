<?php

class Map_model extends CI_model
{
	function add_marker($data)
	{
		$this->db->insert('pariwisata', $data);
		return;
	}
	function get_marker()
	{
		$query = $this->db->get('pariwisata');
    	return $query->result_array();
	}

}

?>