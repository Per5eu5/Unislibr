<?php
class Controller_Registration_Librarian extends Controller{

    function __construct()
    {
        $this->model = new Model_Registration_Librarian();
        $this->view = new View();
    }

    function action_index()
    {
        $this->view->generate('registration_librarian_view.php', 'template_view.php');
    }

    public function action_reg() {
        $this->model->reg();
    }
}