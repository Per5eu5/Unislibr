<?php
class Controller_Reader extends Controller
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

        $this->model = new Model_Reader();
    }

    public function action_logout() {
        Session::destroy();
        header('Location:/login');
        exit();
    }

    function action_index()
    {
        $data = $this->model->subscription();
        $this->view->generate('reader_view.php', 'template_view.php',$data);
    }

    function action_show_debts(){
        $data = $this->model->show_debts();
        $this->view->generate('reader_view.php', 'template_view.php',$data);
    }
}