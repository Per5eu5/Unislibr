<?php
class Model_Edit_Catalogs extends Model
{
    public function __construct()
    {
        parent::__construct();
    }

    function groups(){
        $res = $this->database->prepare("SELECT * FROM groups ORDER BY Groups desc");
        $res->execute();
        return $res;
    }

    function institutes(){
        $res2 = $this->database->prepare("SELECT * FROM institute ORDER BY Institute desc");
        $res2->execute();
        return $res2;
    }

    function edit_group(){
    $old_name_group = $_POST['old_name_group'];
    $new_name_group = $_POST['new_name_group'];
    $group = $this->database->prepare("UPDATE groups SET Groups = '$new_name_group' WHERE Groups = '$old_name_group'");
    $group->execute();
    header('Location:/edit_catalogs');
}

    function edit_institute(){
        $old_name_inst = $_POST['old_name_inst'];
        $new_name_inst = $_POST['new_name_inst'];
        $inst = $this->database->prepare("UPDATE institute SET Institute = '$new_name_inst' WHERE Institute = '$old_name_inst'");
        $inst->execute();
        header('Location:/edit_catalogs');
    }

    function delete_group(){
        $id = $_GET['id'];
        $res = $this->database->prepare("DELETE FROM groups WHERE IDgroups='$id'");
        $res->execute();
        header('Location:/edit_catalogs');
    }

    function delete_institute(){
        $id = $_GET['id'];
        $res = $this->database->prepare("DELETE FROM institute WHERE IDinstitute='$id'");
        $res->execute();
        header('Location:/edit_catalogs');
    }

    function add_institute(){
        $add_name_inst = $_POST['add_name_inst'];
        $res = $this->database->prepare("INSERT INTO institute (Institute) VALUE ('$add_name_inst')");
        $res->execute();
        header('Location:/edit_catalogs');
    }

}
