<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Backup extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('Common_model');
         $this->load->model('Authentication_model');
        $this->load->model('User_model');
        $this->Common_model->setDefaultTimezone();
        $this->load->library('form_validation');
        
        if (!$this->session->has_userdata('user_id')) {
            redirect('Authentication/index');
        }
        $getAccessURL = $this->uri->segment(1);
        if (!in_array($getAccessURL, $this->session->userdata('menu_access'))) {
            redirect('Authentication/userProfile');
        }
    }
    public function create($id = '') {
        $company_id = $this->session->userdata('company_id');

        if (isset($_POST['btn'])) {
           
            ini_set('max_execution_time', 300);
                $file = $this->input->post('file');
               
                    $templine = '';
                    $lines = file($_FILES["file"]["tmp_name"]); 
                    
                    foreach ($lines as $line)
                    {
                        // Skip it if it's a comment
                        if (substr($line, 0, 2) == '--' || $line == '' || $line == '#')
                        continue;
                
                        // Add this line to the current templine we are creating
                        $templine .= $line;
                
                        // If it has a semicolon at the end, it's the end of the query so can process this templine
                        if (substr(trim($line), -1, 1) == ';')
                        {
                        // Perform the query
                        $this->db->query($templine);
                
                        // Reset temp variable to empty
                        $templine = '';
                        }
                    }
                    $this->session->set_flashdata('exception', lang('import_success'));
                    redirect('Backup/create');
                
            
               
             
            
        }

        $data = array();
        $data['setting_information'] = $this->Authentication_model->getSettingInformation($company_id);
        $data['time_zones'] = $this->Common_model->getAllForDropdown("tbl_time_zone");
        $data['currencies'] = $this->Common_model->getAllForDropdown("tbl_admin_currencies");
        $data['main_content'] = $this->load->view('authentication/backup', $data, TRUE);
        $this->load->view('userHome', $data);





    }
    public function create_backup($id = '') {
        $this->load->dbutil();
        $filename = "db-" . date("Y-m-d_H-i-s") . ".sql";
            $this->load->dbutil();
            $prefs = array(
                'ignore' => array(),
                'format' => 'txt',
                'filename' => 'mybackup.sql',
                'add_drop' => TRUE,
                'add_insert' => TRUE,
                'newline' => "\n"
            );
            $backup =& $this->dbutil->backup($prefs);
            $this->load->helper('file');
            write_file('./assets/database_backup/' . $filename, $backup);
            $this->load->helper('download');
            force_download($filename, $backup);
            redirect(base_url() . 'Backup/create', 'refresh');
    }














    
}
