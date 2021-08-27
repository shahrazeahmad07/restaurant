<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Order_History extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('Authentication_model');
        $this->load->model('Common_model');
        $this->load->model('Sale_model');
        $this->load->model('Kitchen_model');
        $this->load->model('Bar_model');
        $this->load->model('Waiter_model');
        $this->load->model('Master_model');
        $this->load->library('form_validation');
        $this->Common_model->setDefaultTimezone();
        
        if (!$this->session->has_userdata('user_id')) {
            redirect('Authentication/index');
        }

    }

    /* ----------------------Order History Start-------------------------- */
public function index(){
    $outlet_id = $this->session->userdata('outlet_id');
    $data = array();
    $data['lists'] = $this->Sale_model->gethistory($outlet_id);
    $data['main_content'] = $this->load->view('sale/order_history', $data, TRUE);
    $this->load->view('userHome', $data);
}



    public function sales() {
        /* print('<Pre>');
          print_r($this->session->userdata());exit; */
        $outlet_id = $this->session->userdata('outlet_id');
        $data = array();
        $data['lists'] = $this->Sale_model->getSaleList($outlet_id);
        $data['main_content'] = $this->load->view('sale/sales', $data, TRUE);
        $this->load->view('userHome', $data);
    }

   
    

    
    /* ----------------------order history End-------------------------- */
}
