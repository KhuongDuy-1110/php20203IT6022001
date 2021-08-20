<?php
    trait ModelCategories{
        // lay ve danh sach cac ban ghi
        public function modelRead($recordPerPage){
            // lay bien page truyen tu url
            $page = isset($_GET["page"])&&$_GET["page"]>0 ? $_GET["page"]-1 : 0;
            // lay tu ban ghi nao 
            $from = $page * $recordPerPage;
            $conn = Connection::getInstance();
            // thuc hien truy van
            $query = $conn->query("select * from categories where parent_id = 0 order by id desc limit $from, $recordPerPage");
            // tra ve nhieu ban ghi
            return $query->fetchAll();
        }
        // tinh tong so ban ghi
        public function modelTotalRecord(){
            $conn = Connection::getInstance();
            // thuc hien truy van
            $query = $conn->query("select id from categories where parent_id = 0");
            // tra ve so ban ghi
            return $query->rowCount();
        }
        // lay mot ban ghi tuong ung voi id truyen vao
        public function modelGetRecord(){
            $id = isset($_GET["id"])&&$_GET["id"] > 0 ? $_GET["id"] : 0;
            $conn = Connection::getInstance();
            // thuc hien truy van
            $query = $conn->query("select * from categories where id=$id");
            // tra ve mot ban ghi
            return $query->fetch();
        }
        public function modelUpdate($id){
//            $id = isset($_GET["id"])&&$_GET["id"] > 0 ? $_GET["id"] : 0;
            $name = $_POST["name"];
            $parent_id = $_POST["parent_id"];
            // $password = $_POST["password"];
            // update name
            $conn = Connection::getInstance();
            $query = $conn->prepare("update categories set name=:var_name, parent_id=:var_parent_id where id=$id");
            $query->execute(array("var_name"=>$name, "parent_id"=>$parent_id));
            // neu password khong rong thi update password
            // if($password != ""){
            //     // ma hoa password
            //     $password = md5($password);
            //     $query = $conn->prepare("update categories set password=:var_password where id=$id");
            //     $query->execute(array("var_password"=>$password));
            // }
        }
        public function modelCreate(){
            $name = $_POST["name"];
            $email = $_POST["email"];
            $parent_id = $_POST["parent_id"];
            // $password = $_POST["password"];
            // ma hoa password
            // $password = md5($password);
            // lay bien ket noi csdl
            $conn = Connection::getInstance();
            $query = $conn->prepare("insert into categories set name=:var_name, parent_id=:var_parent_id");
            $query->execute(array("var_name"=>$name,"var_parent_id"=>$parent_id));
        }
        public function modelDelete(){
            $id = isset($_GET["id"])&&$_GET["id"] > 0 ? $_GET["id"] : 0;
            $conn = Connection::getInstance();
            $conn->query("delete from categories where id=$id or parent_id = $id");
        }
        public function modelReadSub($categories_id){
            $conn = Connection::getInstance();
            $query = $conn->query("select * from categories where parent_id = $categories_id");
            return $query->fetchAll();
        }
        public function modelListCategories(){
            $conn = Connection::getInstance();
            $query = $conn->query("select * from categories where parent_id = 0 order by id desc");
            return $query->fetchAll();
        }
    }
?>