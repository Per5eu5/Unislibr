<?php
class Controller_Admin extends Controller
{
    public function __construct() {
        parent::__construct();
        Session::init();
        $logged = Session::get('loggedIn');
        if($logged == false) {
            Session::destroy();
            header('Location:/login');
            exit();
        }
        $this->model = new Model_Admin();
    }

    public function action_logout() {
        Session::destroy();
        header('Location:/');
        exit();
    }
    function action_index()
    {
        $data = $this->model->readers();
        $this->view->generate('admin_view.php', 'template_view.php',$data);
    }

    function action_reboot_pass(){
        $this->model->reboot_pass();
        header('Location:/admin');
    }

}