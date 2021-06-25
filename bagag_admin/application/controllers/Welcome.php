<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

        function __construct(){
            parent::__construct();
            $this->load->model(array('admin_model'));
        }
        
        function index(){
            if($this->session->userdata('logged')){
                $this->load->view('header');
                $this->load->view('navbar');
                $this->load->view('admin');
                $this->load->view('footer-login');
            } else{
                redirect('welcome/login');
            }
        }

        function site_info(){
            if($this->session->userdata('logged')){
                $info['site_info'] = $this->admin_model->site_info();
                $this->load->view('header');
                $this->load->view('navbar');
                $this->load->view('site_info', $info);
                $this->load->view('footer-login');
            } else{
                redirect('welcome/login');
            }
        }

        function site_info_update(){
            if($this->session->userdata('logged')){
                $id = $this->input->post('id');
                $data = [
                    'shop'      => $this->input->post('shop'),
                    'reason'    => $this->input->post('reason')
                ];
                $update = $this->admin_model->site_info_up($id, $data);
                redirect('welcome/site_info');
            } else{
                redirect('welcme/login');
            }
        }
        
        function login(){
            if(!$this->session->userdata('logged')){
                $this->load->view('header');
                $this->load->view('login');
                $this->load->view('footer');
            } else{
                redirect('welcome/index');
            }
        }
        
        function check_login(){
            $this->form_validation->set_rules('email', 'email', 'trim|required');
			$this->form_validation->set_rules('password', 'password', 'trim|required|min_length[5]');
			
			if($this->form_validation->run() == true){
				$email = $this->input->post('email');
				$password = $this->input->post('password');

				$user = $this->admin_model->get($email, $password);
				
				if($user){
					$this->session->set_userdata('logged', $user[0]->name);
					$this->session->set_userdata('user', $user[0]->id);
					
					redirect('welcome/index');
				} else{
					$this->session->set_flashdata('invalid', 'Invalid User Information');
					redirect('welcome/login');
				}
			} else{
				$this->load->view('header');
                $this->load->view('login');
                $this->load->view('footer');
			}
        }
        
        function logout(){
            $this->session->unset_userdata('logged');
			$this->session->sess_destroy();
			redirect('welcome/login');
        }
        
        function piazzaleroma(){
            if($this->session->userdata('logged')){
                $piazzaleroma['data'] = $this->admin_model->piazzaleroma();
                $this->load->view('header');
                $this->load->view('navbar');
                $this->load->view('piazzaleroma_payments', $piazzaleroma);
                $this->load->view('footer');
            } else{
                redirect('welcome/login');
            }
            
        }
        
        function santalucia(){
            if($this->session->userdata('logged')){
                $santalucia['data'] = $this->admin_model->santalucia();
                $this->load->view('header');
                $this->load->view('navbar');
                $this->load->view('santalucia_payments', $santalucia);
                $this->load->view('footer');
            } else{
                redirect('welcome/login');
            }
            
        }
        
        function all_payments(){
            if($this->session->userdata('logged')){
                $payments['data'] = $this->admin_model->payments();
                $this->load->view('header');
                $this->load->view('navbar');
                $this->load->view('payments', $payments);
                $this->load->view('footer');
            } else{
                redirect('welcome/login');
            }
            
        }
        
        function filter(){
            if($this->session->userdata('logged')){
                $month = $this->input->post('month');
            $year = $this->input->post('year');
            $filter['data'] = $this->admin_model->getTableInfo($year, $month);
            if($filter){
                $this->load->view('header');
                $this->load->view('navbar');
                $this->load->view('filter', $filter);
                $this->load->view('footer');
            } else{
                echo "Invalid Date";
            }
        } else{
            redirect('welcome/login');
        }
            }
            
}
