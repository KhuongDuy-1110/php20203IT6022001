<?php
    trait ModelSpend{
        // lay ve danh sach cac ban ghi
        public function modelRead($recordPerPage){
            // lay bien page truyen tu url
            $page = isset($_GET["page"])&&$_GET["page"]>0 ? $_GET["page"]-1 : 0;
            // lay tu ban ghi nao 
            $from = $page * $recordPerPage;
            $conn = Connection::getInstance();
            // thuc hien truy van
            $query = $conn->query("select * from spend order by id desc limit $from, $recordPerPage");
            // tra ve nhieu ban ghi
            return $query->fetchAll();
        }
        // tinh tong so ban ghi
        public function modelTotalRecord(){
            $conn = Connection::getInstance();
            // thuc hien truy van
            $query = $conn->query("select id from spend");
            // tra ve so ban ghi
            return $query->rowCount();
        }
        // lay mot ban ghi tuong ung voi id truyen vao
        public function modelGetRecord(){
            $id = isset($_GET["id"])&&$_GET["id"] > 0 ? $_GET["id"] : 0;
            $conn = Connection::getInstance();
            // thuc hien truy van
            $query = $conn->query("select * from spend where id=$id");
            // tra ve mot ban ghi
            return $query->fetch();
        }
        public function modelUpdate(){
            $id = isset($_GET["id"])&&$_GET["id"] > 0 ? $_GET["id"] : 0;
            $title = $_POST["title"];
            $description = $_POST["description"];
            $date = $_POST["date"];
            $price = $_POST["price"];
            $reason = $_POST["reason"];
            
            $conn = Connection::getInstance();
            $query = $conn->prepare("update spend set title=:var_title, description=:var_description, date=:var_date, price=:var_price, reason=:var_reason where id=$id");
            $query->execute(array("var_title"=>$title, "var_description"=>$description,
                "var_date"=>$date, "var_price"=>$price, "var_reason"=>$reason));
        }

        public function modelCreate(){
            $title = $_POST["title"];
            $description = $_POST["description"];
            $date = $_POST["date"];
            $price = $_POST["price"];
            $reason = $_POST["reason"];
            
            $conn = Connection::getInstance();
            $query = $conn->prepare("insert spend set title=:var_title, description=:var_description, date=:var_date, price=:var_price, reason=:var_reason");
            $query->execute(array("var_title"=>$title, "var_description"=>$description,
                "var_date"=>$date, "var_price"=>$price, "var_reason"=>$reason));
        }
        public function modelDelete(){
            $id = isset($_GET["id"])&&$_GET["id"] > 0 ? $_GET["id"] : 0;
            $conn = Connection::getInstance();
            //--
            // lay anh cu de xoa
            $oldPhoto = $conn->query("select image from spend where id=$id");
            if ($oldPhoto){
                $record = $oldPhoto->fetch();
//                xoa anh
                if ($record->image != ""&&file_exists("assets/upload/spend/".$record->image))
                    unlink("assets/upload/spend/".$record->image);
            }
            $conn->query("delete from spend where id=$id");
        }
        public function modelReadCategorySub($spend_id){
            $conn = Connection::getInstance();
            $query = $conn->query("select * from categories where parent_id = $spend_id");
            return $query->fetchAll();
        }
        public function modelListCategories(){
            $conn = Connection::getInstance();
            $query = $conn->query("select * from categories where parent_id = 0 order by id desc");
            return $query->fetchAll();
        }
        public function modelGetCategory($category_id){
            $conn = Connection::getInstance();
            $query = $conn->query("select * from categories where id = $category_id");
            return $query->fetch();
        }

        public function modelSearch($recordPerPage, $key){
            $page = isset($_GET["page"])&&$_GET["page"]>0 ? $_GET["page"]-1 : 0;
            // lay tu ban ghi nao 
            $from = $page * $recordPerPage;
            $conn = Connection::getInstance();
            $query = $conn->query("select * from spend where title like '%$key%' order by id desc limit $from, $recordPerPage");
            return $query->fetchAll();
        }
        
        //tinh tong so ban ghi
        public function modelTotalRecordSearch($key){
            $conn = Connection::getInstance();
            $query = $conn->query("select * from spend where title like '%$key%'");
            return $query->rowCount();
        }
    }
?>