<?php
    trait ModelUsers{
        // lay ve danh sach cac ban ghi
        public function modelRead($recordPerPage){
            // lay bien page truyen tu url
            $page = isset($_GET["page"])&&$_GET["page"]>0 ? $_GET["page"]-1 : 0;
            // lay tu ban ghi nao 
            $from = $page * $recordPerPage;
            $conn = Connection::getInstance();
            // thuc hien truy van
            $query = $conn->query("select * from users order by id desc limit $from, $recordPerPage");
            // tra ve nhieu ban ghi
            return $query->fetchAll();
        }
        // tinh tong so ban ghi
        public function modelTotalRecord(){
            $conn = Connection::getInstance();
            // thuc hien truy van
            $query = $conn->query("select id from users");
            // tra ve so ban ghi
            return $query->rowCount();
        }
        // lay mot ban ghi tuong ung voi id truyen vao
        public function modelGetRecord(){
            $id = isset($_GET["id"])&&$_GET["id"] > 0 ? $_GET["id"] : 0;
            $conn = Connection::getInstance();
            // thuc hien truy van
            $query = $conn->query("select * from users where id=$id");
            // tra ve mot ban ghi
            return $query->fetch();
        }
        public function modelUpdate(){
            $id = isset($_GET["id"])&&$_GET["id"] > 0 ? $_GET["id"] : 0;
            $name = $_POST["name"];
            $password = $_POST["password"];
            // update name
            $conn = Connection::getInstance();
            $query = $conn->prepare("update users set name=:var_name where id=$id");
            $query->execute(array("var_name"=>$name));
            // neu password khong rong thi update password
            if($password != ""){
                // ma hoa password
                $password = md5($password);
                $query = $conn->prepare("update users set password=:var_password where id=$id");
                $query->execute(array("var_password"=>$password));
            }
        }
        public function modelCreate(){
            $name = $_POST["name"];
            $email = $_POST["email"];
            $password = $_POST["password"];
            // ma hoa password
            $password = md5($password);
            // lay bien ket noi csdl
            $conn = Connection::getInstance();
            $query = $conn->prepare("insert into users set name=:var_name, email=:var_email, password=:var_password");
            $query->execute(array("var_name"=>$name, "var_email"=>$email, "var_password"=>$password));
        }
        public function modelDelete(){
            $id = isset($_GET["id"])&&$_GET["id"] > 0 ? $_GET["id"] : 0;
            $conn = Connection::getInstance();
            $conn->query("delete from users where id=$id");
        }
    }
?>