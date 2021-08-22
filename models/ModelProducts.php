<?php
    trait ModelProducts{
        // lay ve danh sach cac ban ghi
        public function modelRead($recordPerPage){
            // lay bien page truyen tu url
            $page = isset($_GET["page"])&&$_GET["page"]>0 ? $_GET["page"]-1 : 0;
            // lay tu ban ghi nao 
            $from = $page * $recordPerPage;
            $conn = Connection::getInstance();
            // thuc hien truy van
            $query = $conn->query("select * from products order by id desc limit $from, $recordPerPage");
            // tra ve nhieu ban ghi
            return $query->fetchAll();
        }
        // tinh tong so ban ghi
        public function modelTotalRecord(){
            $conn = Connection::getInstance();
            // thuc hien truy van
            $query = $conn->query("select id from products");
            // tra ve so ban ghi
            return $query->rowCount();
        }
        // lay mot ban ghi tuong ung voi id truyen vao
        public function modelGetRecord(){
            $id = isset($_GET["id"])&&$_GET["id"] > 0 ? $_GET["id"] : 0;
            $conn = Connection::getInstance();
            // thuc hien truy van
            $query = $conn->query("select * from products where id=$id");
            // tra ve mot ban ghi
            return $query->fetch();
        }
        public function modelUpdate(){
            $id = isset($_GET["id"])&&$_GET["id"] > 0 ? $_GET["id"] : 0;
            $name = $_POST["name"];
            $category_id = $_POST["category_id"];
            $discount = $_POST["discount"];
            $price = $_POST["price"];
            $description = $_POST["description"];
            $content = $_POST["content"];
            $hot = isset($_POST["hot"]) ? 1 : 0;
            $conn = Connection::getInstance();
            $query = $conn->prepare("update products set name=:var_name, category_id=:var_category_id, 
                    discount=:var_discount, price=:var_price, description=:var_description, content=:var_content, hot=:var_hot where id=$id");
            $query->execute(array("var_name"=>$name, "var_category_id"=>$category_id,
                "var_discount"=>$discount, "var_price"=>$price, "var_description"=>$description, "var_content"=>$content, "var_hot"=>$hot));
//            neu user upload anh thi thuc hien upload
            $photo = "";
            if ($_FILES["photo"]["name"] != ""){
                //--
                // lay anh cu de xoa
                $oldPhoto = $conn->query("select photo from products where id=$id");
                if ($oldPhoto->rowCount() > 0){
                    $record = $oldPhoto->fetch();
//                xoa anh
                    if ($record->photo != ""&&file_exists("assets/upload/products/".$record->photo))
                        unlink("assets/upload/products/".$record->photo);
                }
                $photo = time()."_".$_FILES["photo"]["name"];
                move_uploaded_file($_FILES["photo"]["tmp_name"],"assets/upload/products/$photo");
                $query = $conn->prepare("update products set photo=:var_photo where id=$id");
                $query->execute(array("var_photo"=>$photo));
            }
        }
        public function modelCreate(){
            $id = isset($_GET["id"])&&$_GET["id"] > 0 ? $_GET["id"] : 0;
            $name = $_POST["name"];
            $category_id = $_POST["category_id"];
            $discount = $_POST["discount"];
            $price = $_POST["price"];
            $description = $_POST["description"];
            $content = $_POST["content"];
            $hot = isset($_POST["hot"]) ? 1 : 0;
            $photo = "";
            if ($_FILES["photo"]["name"] != ""){
                $photo = time()."_".$_FILES["photo"]["name"];
                move_uploaded_file($_FILES["photo"]["tmp_name"],"assets/upload/products/$photo");
            }
            $conn = Connection::getInstance();
            $query = $conn->prepare("insert products set name=:var_name, category_id=:var_category_id, 
                    discount=:var_discount, price=:var_price, description=:var_description, content=:var_content, hot=:var_hot,photo=:var_photo");
            $query->execute(array("var_name"=>$name, "var_category_id"=>$category_id,
                "var_discount"=>$discount, "var_price"=>$price, "var_description"=>$description, "var_content"=>$content, "var_hot"=>$hot,"var_photo"=>$photo));
        }
        public function modelDelete(){
            $id = isset($_GET["id"])&&$_GET["id"] > 0 ? $_GET["id"] : 0;
            $conn = Connection::getInstance();
            //--
            // lay anh cu de xoa
            $oldPhoto = $conn->query("select photo from products where id=$id");
            if ($oldPhoto->rowCount() > 0){
                $record = $oldPhoto->fetch();
//                xoa anh
                if ($record->photo != ""&&file_exists("assets/upload/products/".$record->photo))
                    unlink("assets/upload/products/".$record->photo);
            }
            $conn->query("delete from products where id=$id");
        }
        public function modelReadCategorySub($products_id){
            $conn = Connection::getInstance();
            $query = $conn->query("select * from categories where parent_id = $products_id");
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
    }
?>