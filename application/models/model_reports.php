<?php
class Model_Reports extends Model
{
    public function __construct()
    {
        parent::__construct();
    }

    function new_readers_week(){
        $date1 = date('Y.m.d', strtotime('+1 days'));
        $date2 = date('Y.m.d', strtotime('-7 days'));

        $res = $this->database->prepare("SELECT Groups, FIO FROM groups JOIN reader ON groups.IDgroups = reader.IDgroups
                                            WHERE Date BETWEEN '$date2' AND '$date1'");
        $res->execute();
        //$res = $res->fetchAll();
        return $res;
    }

    function new_readers_month(){
        $date1 = date('Y.m.d', strtotime('+1 days'));
        $date2 = date('Y.m.d', strtotime('-30 days'));

        $res = $this->database->prepare("SELECT Groups, FIO FROM groups JOIN reader ON groups.IDgroups = reader.IDgroups
                                            WHERE Date BETWEEN '$date2' AND '$date1'");
        $res->execute();
        //$res = $res->fetchAll();
        return $res;
    }

    function questions_week(){
        $date1 = date('Y.m.d', strtotime('+1 days'));
        $date2 = date('Y.m.d', strtotime('-7 days'));

        $res = $this->database->prepare("SELECT Question, FIO FROM faq JOIN reader ON faq.IDreader = reader.IDreader
                                            WHERE faq.Date BETWEEN '$date2' AND '$date1'");
        $res->execute();
        //$res = $res->fetchAll();
        return $res;
    }

    function questions_month(){
        $date1 = date('Y.m.d', strtotime('+1 days'));
        $date2 = date('Y.m.d', strtotime('-30 days'));

        $res = $this->database->prepare("SELECT Question, FIO FROM faq JOIN reader ON faq.IDreader = reader.IDreader
                                            WHERE faq.Date BETWEEN '$date2' AND '$date1'");
        $res->execute();
        //$res = $res->fetchAll();
        return $res;
    }

    function answers_week(){
        $date1 = date('Y.m.d', strtotime('+1 days'));
        $date2 = date('Y.m.d', strtotime('-7 days'));

        $res = $this->database->prepare("SELECT login, Answer FROM faq JOIN librarians ON faq.IDlibrarian=librarians.id
                                            WHERE faq.Date BETWEEN '$date2' AND '$date1'");
        $res->execute();
        //$res = $res->fetchAll();
        return $res;
    }

    function answers_month(){
        $date1 = date('Y.m.d', strtotime('+1 days'));
        $date2 = date('Y.m.d', strtotime('-30 days'));

        $res = $this->database->prepare("SELECT login, Answer FROM faq JOIN librarians ON faq.IDlibrarian=librarians.id
                                            WHERE faq.Date BETWEEN '$date2' AND '$date1'");
        $res->execute();
        //$res = $res->fetchAll();
        return $res;
    }
}