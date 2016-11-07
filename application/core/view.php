<?php
/**
 * Created by PhpStorm.
 * User: User
 * Date: 03.12.2015
 * Time: 10:45
 */

class View
{
    //public $template_view; // здесь можно указать общий вид по умолчанию.

    function generate($content_view, $template_view, $data = null, $data2 = null, $data3 = null)
    {
/*
        if(is_array($data)) {
            // преобразуем элементы массива в переменные
            extract($data);
        }*/


        include 'application/views/'.$template_view;
    }
}