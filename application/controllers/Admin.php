<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

require APPPATH . '/libraries/BaseController.php';

class Admin extends BaseController
{
    /**
     * This is default constructor of the class
     */
    public function __construct()
    {
        parent::__construct();
        $this->load->model('admin_model');
        $this->isLoggedIn();
    }

    public function request_permission_view()
    {
      $this->global['pageTitle'] = 'HumanRex: Request Permission ';
      $this->loadViews("admin/request_permission_view",$this->global,NULL,NULL);
    }
    //view all altered time from the altered time table
    public function view_altered_time()
    {
      $this->global['pageTitle'] = 'HumanRex: View Altered Time';
      $res=$this->admin_model->view_altered_time();
      if($res!=false)
      {
        $result['datas']=$res;
      }
      else {
        $result['datas']="No records found!";
      }
      $this->loadViews("admin/altered_time_view",$this->global,$result,NULL);
    }


    //add or edit altered time view
    public function add_edit_altered_time($date=NULL,$cadre=NULL)
    {
      $this->global['pageTitle'] = 'HumanRex: View Altered Time';

      if($date==NULL &&$cadre==NULL)
      {

          $this->loadViews("admin/add_altered_time",$this->global,NULL,NULL);
      }
      else {
        $res['data']=$this->admin_model->add_edit_altered_time($date,$cadre);
          $this->loadViews("admin/edit_altered_time",$this->global,$res,NULL);
      }

    }

    public function add_altered_time()
    {
      $this->global['pageTitle'] = 'HumanRex: Add Altered Time';
      $date=$this->input->post('date');
      $in_time=$this->input->post('in_time');
      $out_time=$this->input->post('out_time');
      $cadre=$this->input->post('cadre');
      $half_wrk=$this->input->post('half_wrk');
      $full_wrk=$this->input->post('full_wrk');

      $datas=array('date'=>$date,'in_time'=>$in_time,'out_time'=>$out_time,'cadre'=>$cadre,'half_wrk'=>$half_wrk,'full_wrk'=>$full_wrk);
      $this->admin_model->add_altered_time($datas);
      redirect('view-altered-time');
    }

    //update altered time
    public function update_altered_time()
    {
      $this->global['pageTitle'] = 'HumanRex: Add Altered Time';
      $date=$this->input->post('date');
      $in_time=$this->input->post('in_time');
      $out_time=$this->input->post('out_time');
      $cadre=$this->input->post('cadre');
      $half_wrk=$this->input->post('half_wrk');
      $full_wrk=$this->input->post('full_wrk');

      $datas=array('date'=>$date,'in_time'=>$in_time,'out_time'=>$out_time,'cadre'=>$cadre,'half_wrk'=>$half_wrk,'full_wrk'=>$full_wrk);
      $this->admin_model->update_altered_time($datas,$date,$cadre);
      redirect('view-altered-time');
    }

    //delete the altered time
    public function delete_altered_time($date,$cadre)
    {
      $this->global['pageTitle'] = 'HumanRex: Altered Time deleted';
      $data=array('date'=>$date,'cadre'=>$cadre);
      $this->admin_model->delete_altered_time($data);
      //$this->view_altered_time();
      redirect('view-altered-time');
    }

}