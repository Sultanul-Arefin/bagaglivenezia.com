<?php

    class Admin_model extends CI_Model{
        
        public function get($email, $password){
			$this->db->select('*');
			$this->db->from('admin');
			$this->db->where('email', $email);
			// $this->db->where('password', md5($password));
			$this->db->where('password', $password);
			

			$query = $this->db->get();
			if($query->num_rows() == 1){
				return $query->result();
			} else{
				return false;
			}
		}
		
		public function piazzaleroma(){
		    $this->db->select('*');
		    $this->db->from('products');
		    $this->db->where('location', 'Piazzale Roma (Rio Tera SantAndrea, 468b, 30135 Venezia VE, Italy)' );
		    $this->db->order_by('id', 'DESC');
		    $query = $this->db->get();
		    return $query->result();
		}
		
		public function santalucia(){
		    $this->db->select('*');
		    $this->db->from('products');
		    $this->db->where('location', 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)' );
		    $this->db->order_by('id', 'DESC');
		    $query = $this->db->get();
		    return $query->result();
		}
		
		public function payments(){
		    $this->db->select('*');
		    $this->db->from('payments');
		    $this->db->order_by('payment_id', 'DESC');
		    $query = $this->db->get();
		    return $query->result();
		}
		
		public function getTableInfo($year, $month) {
            $this->db->select('*');
            $this->db->from("products");
            $this->db->where("DATE_FORMAT(order_created_at,'%Y')", $year);
            $this->db->where("DATE_FORMAT(order_created_at,'%m')", $month);
            $this->db->order_by('id', 'DESC');
            $q = $this->db->get();
            return $q->result();
}
    }

?>