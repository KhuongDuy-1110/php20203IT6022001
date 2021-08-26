<?php
    trait ModelCustomers{
        // Lấy danh sách khách hàng
        public function modelRead($recordPerPage){
            // Lấy danh sách truyền vào từ url
            $page = isset($_GET["page"])&&$_GET["page"]>0 ? $_GET["page"]-1 : 0;
            //vị trí bắt đầu lấy bản ghi
            $from = $page * $recordPerPage;
            //Số lượng bản ghi được lấy
            $conn = Connection::getInstance();
            //Truy vấn đề lấy bản ghi
            $query = $conn->query("select * from customers order by id desc limit $from, $recordPerPage");
            // tra 
            return $query->fetchAll();
        }
        // Hàm tính tổng số lượng khách hàng
        public function modelTotalRecord(){
            $conn = Connection::getInstance();
            //Lấy Danh sách id của khách hàng
            $query = $conn->query("select id from customers");
            // Trả về số lượng 
            return $query->rowCount();
        }
        // Lấy thông tin 1 khách hàng
        public function modelGetRecord(){
            //Lấy id của khách hàng
            $id = isset($_GET["id"]) && $_GET["id"] > 0 ? $_GET["id"] : 0;
            $conn = Connection::getInstance();
            // thuc hien truy van
            $query = $conn->query("select * from customers where id=$id");
            // tra ve mot ban ghi
            return $query->fetch();
        }

        //Cập nhật khách hàng
        public function modelUpdate(){
            $id = isset($_GET["id"])&&$_GET["id"] > 0 ? $_GET["id"] : 0;
            //Tên khách hàng
            $name = $_POST["name"];
            //email khách hàng
            $email = $_POST["email"];
            //ngày sinh
            $dateOfBirth = $_POST["dateOfBirth"];
            //Ghi chú
            $note = $_POST["note"];
            //Số điên thoại
            $phone = $_POST["phone"];
            //Địa chỉ 
            $address = $_POST["address"];
            //Giới tính 1 - Nam, 0 - Nữ
            $gender = isset($_POST["gender"]) ? 1 : 0;

            $conn = Connection::getInstance();
            $conn->query("update customers set name = '".$name."', email = '".$email."', dateOfBirth = '".$dateOfBirth."', gender = ".$gender.", phone = '".$phone."', address = '".$address."', note = '".$note."' where id = ".$id.";");
            
        }

        //Thêm khách hàng mới
        public function modelCreate(){
            $id = isset($_GET["id"])&&$_GET["id"] > 0 ? $_GET["id"] : 0;
            //Tên khách hàng
            $name = $_POST["name"];
            //email khách hàng
            $email = $_POST["email"];
            //ngày sinh
            $dateOfBirth = $_POST["dateOfBirth"];
            //Ghi chú
            $note = $_POST["note"];
            //Số điên thoại
            $phone = $_POST["phone"];
            //Địa chỉ 
            $address = $_POST["address"];
            //Giới tính 1 - Nam, 0 - Nữ
            $gender = isset($_POST["gender"]) ? 1 : 0;

            $conn = Connection::getInstance();
            $sql = "insert into customers(name, email, dateOfBirth, gender, phone, address, note) values('".$name."', '".$email."', '".$dateOfBirth."', ".$gender.", '".$phone."', '".$address."', '".$note."');";
            //echo $sql;
            //die();
            $conn->query($sql);
        }
        //Xóa khách hàng
        public function modelDelete(){
            $id = isset($_GET["id"])&&$_GET["id"] > 0 ? $_GET["id"] : 0;
            $conn = Connection::getInstance();
            $conn->query("delete from customers where id=$id");
        }
        
        public function searchCustomer($key){
            //$key = isset($_GET["key"])?$_GET["key"]:"";
            $sql = "select * from customers where name LIKE '%".$key."%';";
            $conn = Connection::getInstance();
            $query = $conn->query($sql);
            return $query->fetchAll();
        }
    }
?>