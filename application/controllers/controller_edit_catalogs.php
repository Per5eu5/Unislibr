<?php

class Controller_Edit_Catalogs extends Controller
{
    function __construct()
    {
        $this->model = new Model_Edit_Catalogs();
        $this->view = new View();
    }

    function action_index()
    {
        $data = $this->model->groups();
        $data2 = $this->model->institutes();
        $this->view->generate('edit_catalogs_view.php', 'template_view.php', $data, $data2);
    }

    function action_edit_group(){
        $this->model->edit_group();
    }

    function action_edit_institute(){
        $this->model->edit_institute();
    }

    function action_delete_group(){
        $this->model->delete_group();
    }

    function action_delete_institute(){
        $this->model->delete_institute();
    }

    function action_add_institute(){
        $this->model->add_institute();
    }
}