<?php

class Controller_Registration_Reader extends Controller
{
    function __construct()
    {
        $this->model = new Model_Registration_Reader();
        $this->view = new View();
    }

    function action_index()
    {
        $data = $this->model->groups();
        $this->view->generate('registration_reader_view.php', 'template_view.php', $data);
    }

    public function action_reg() {
        $this->model->reg();
    }
}