<?php
/**
 * Created by PhpStorm.
 * User: User
 * Date: 03.12.2015
 * Time: 10:45
 */

class Controller {

    public $model;
    public $view;

    function __construct()
    {
        $this->view = new View();
    }

    function action_index()
    {
    }
}