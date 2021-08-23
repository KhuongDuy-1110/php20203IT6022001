<?php
    trait ModelInventory{
        // lay ve danh sach cac ban ghi
        public function modelRead($recordPerPage){
            // lay bien page truyen tu url
            $page = isset($_GET["page"])&&$_GET["page"]>0 ? $_GET["page"]-1 : 0;
            // lay tu ban ghi nao 
            $from = $page * $recordPerPage;
            $conn = Connection::getInstance();
            // thuc hien truy van
            $query = $conn->query("select * from inventory order by id desc limit $from, $recordPerPage");
            // tra ve nhieu ban ghi
            return $query->fetchAll();
        }
        // tinh tong so ban ghi
        public function modelTotalRecord(){
            $conn = Connection::getInstance();
            // thuc hien truy van
            $query = $conn->query("select id from inventory");
            // tra ve so ban ghi
            return $query->rowCount();
        }
        // lay mot ban ghi tuong ung voi id truyen vao
        public function modelGetRecord(){
            $id = isset($_GET["id"])&&$_GET["id"] > 0 ? $_GET["id"] : 0;
            $conn = Connection::getInstance();
            // thuc hien truy van
            $query = $conn->query("select * from inventory where id=$id");
            // tra ve mot ban ghi
            return $query->fetch();
        }
        public function modelUpdate(){
            $id = isset($_GET["id"])&&$_GET["id"] > 0 ? $_GET["id"] : 0;
            $name = $_POST["name"];
            $category_id = $_POST["category_id"];
            $time_in = $_POST["time_in"];
            $estimate_out = $_POST["estimate_out"];
            $expired_at = $_POST["expired_at"];
            $sku = $_POST["sku"];
            $stock = $_POST["stock"];
            $conn = Connection::getInstance();
            $query = $conn->prepare("update inventory set name=:var_name, category_id=:var_category_id, time_in=:var_time_in, estimate_out=:var_estimate_out, expired_at=:var_expired_at, sku=:var_sku, stock=:var_stock where id=$id");
            $query->execute(array("var_name"=>$name, "var_category_id"=>$category_id,
                "var_time_in"=>$time_in, "var_estimate_out"=>$estimate_out, "var_expired_at"=>$expired_at, "var_sku"=>$sku, "var_stock"=>$stock));
//            neu user upload anh thi thuc hien upload
            $photo = "";
            if ($_FILES["photo"]["name"] != ""){
                //--
                // lay anh cu de xoa
                $oldPhoto = $conn->query("select image from inventory where id=$id");
                if ($oldPhoto){
                    $record = $oldPhoto->fetch();
//                xoa anh
                    if ($record->image != ""&&file_exists("assets/upload/inventory/".$record->image))
                        unlink("assets/upload/inventory/".$record->image);
                }
                $photo = time()."_".$_FILES["photo"]["name"];
                move_uploaded_file($_FILES["photo"]["tmp_name"],"assets/upload/inventory/$photo");
                $query = $conn->prepare("update inventory set image=:var_photo where id=$id");
                $query->execute(array("var_photo"=>$photo));
            }
        }
        public function modelCreate(){
            $name = $_POST["name"];
            $category_id = $_POST["category_id"];
            $time_in = $_POST["time_in"];
            $estimate_out = $_POST["estimate_out"];
            $expired_at = $_POST["expired_at"];
            $sku = $_POST["sku"];
            $stock = $_POST["stock"];
            
            $photo = "";
            if ($_FILES["photo"]["name"] != ""){
                $photo = time()."_".$_FILES["photo"]["name"];
                move_uploaded_file($_FILES["photo"]["tmp_name"],"assets/upload/inventory/$photo");
            }
            $conn = Connection::getInstance();
            $query = $conn->prepare("insert inventory set name=:var_name, category_id=:var_category_id, time_in=:var_time_in, estimate_out=:var_estimate_out, expired_at=:var_expired_at, sku=:var_sku, stock=:var_stock, image=:var_image");
            $query->execute(array("var_name"=>$name, "var_category_id"=>$category_id,
                "var_time_in"=>$time_in, "var_estimate_out"=>$estimate_out, "var_expired_at"=>$expired_at, "var_sku"=>$sku,"var_stock"=>$stock, "var_image"=>$photo));
        }
        public function modelDelete(){
            $id = isset($_GET["id"])&&$_GET["id"] > 0 ? $_GET["id"] : 0;
            $conn = Connection::getInstance();
            //--
            // lay anh cu de xoa
            $oldPhoto = $conn->query("select image from inventory where id=$id");
            if ($oldPhoto){
                $record = $oldPhoto->fetch();
//                xoa anh
                if ($record->image != ""&&file_exists("assets/upload/inventory/".$record->image))
                    unlink("assets/upload/inventory/".$record->image);
            }
            $conn->query("delete from inventory where id=$id");
        }
        public function modelReadCategorySub($inventory_id){
            $conn = Connection::getInstance();
            $query = $conn->query("select * from categories where parent_id = $inventory_id");
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