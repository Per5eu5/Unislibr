<?php
class Controller_Guest_Book extends Controller
{
    function __construct()
    {
        parent::__construct();
        $this->model = new Model_Guest_Book();
    }

    public function action_new_message() {
        $this->model->new_message();
    }

    function action_index()
    {
        $data = $this->model->index();
        $this->view->generate('guest_book_view.php', 'template_view.php', $data);
    }
}