<?php

class Controller_Graph_Librgrades extends Controller
{
    function __construct()
    {
        parent::__construct();
        $this->model = new Model_Graph_Librgrades();
    }

    function action_index()
    {
        $data = $this->model->index();
        $this->view->generate('graph_librgrades_view.php', 'template_view.php', $data);
    }
}