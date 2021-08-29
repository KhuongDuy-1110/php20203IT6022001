<?php
    trait ModelReportRevenues{
        // Lấy danh sách báo cáo 
        public function modelRead($recordPerPage){
            // Lấy danh sách truyền vào từ url
            $page = isset($_GET["page"])&&$_GET["page"]>0 ? $_GET["page"]-1 : 0;
            //vị trí bắt đầu lấy bản ghi
            $from = $page * $recordPerPage;
            //Số lượng bản ghi được lấy
            $conn = Connection::getInstance();
            //Truy vấn đề lấy bản ghi
            $query = $conn->query("select * from report_revenues order by id desc limit $from, $recordPerPage");
            // tra 
            return $query->fetchAll();
        }
        // Hàm tính tổng số lượng báo cáo đã lập
        public function modelTotalRecord(){
            $conn = Connection::getInstance();
            //Lấy Danh sách id của khách hàng
            $query = $conn->query("select id from report_revenues");
            // Trả về số lượng 
            return $query->rowCount();
        }
        // Lấy thông tin 1 báo cáo 1
        public function modelGetRecord(){
            //Lấy id của khách hàng
            $id = isset($_GET["id"]) && $_GET["id"] > 0 ? $_GET["id"] : 0;
            $conn = Connection::getInstance();
            // thuc hien truy van
            $query = $conn->query("select * from report_revenues where id=$id");
            // tra ve mot ban ghi
            return $query->fetch();
        }

       

        //Lâp báo cáo mới
        public function modelCreate(){
            $id = isset($_GET["id"])&&$_GET["id"] > 0 ? $_GET["id"] : 0;
            //Ngày lập báo cáo
            $date = $_POST["date"];
            //Số lượng hóa đơn trong ngày
            $numberOfBill = $_POST["numberOfBill"];
            //Số lượng khách hàng trong ngày
            $numberOfCustomer = $_POST["numberOfCustomer"];
            //Tổng doanh thu ước tính
            $total = $_POST["total"];
            $conn = Connection::getInstance();
            $sql = "insert into report_revenues(date, numberOfBill, numberOfCustomer, total) values('".$date."', ".$numberOfBill.", ".$numberOfCustomer.", ".$total.");";
            //echo $sql;
            //die();
            $conn->query($sql);
        }

        //Xóa báo cáo 
        public function modelDelete(){
            $id = isset($_GET["id"])&&$_GET["id"] > 0 ? $_GET["id"] : 0;
            $conn = Connection::getInstance();
            $conn->query("delete from report_revenues where id=$id");
        }
        
        //Lấy số lượng hóa đơn theo ngày lập hóa đơn
        public function countBillPerDay(){
            if(isset($_GET["date"]) ){
                $date = $_GET["date"];
                $conn = Connection::getInstance();
                $query = $conn->query("select * from orders where date =  '".$date."';");
                //Tạo biến mảng static để sử dụng cho hàm dưới
                $GLOBALS["billQuery"] = $query->fetchAll();
                //Trả về số lượng hóa đơn
                return $query->rowCount();
            }else
                return 0;
        }

        //Hàm đếm số lượng khách hàng trong ngày 
        public function countCustomerPerDay(){
            $count = 0;

            $arrBill = array(-1);
            foreach($GLOBALS["billQuery"] as $item){
                //Lặp tìm tên khách hàng trùng
                $check = true;
                for($i = 0 ; $i < count($arrBill) ; $i++){
                    // echo $item->customer_id;
                    // die();
                    if($item->customer_id == (int)$arrBill[$i]){
                        $check = false;
                    }
                }
                //Nếu tên chưa có trong mảng thì thêm vào mảng
                if($check){
                    $count++;
                    $arrBill[$count] = $item->customer_id;
                }
            }
            //Kết thúc vòng lặp trả về số lượng khách hàng 
            return $count;
        }
        
        //Hàm tính tổng doanh thu 
        public function totalRevenue(){ 
            $total = 0;
            foreach($GLOBALS["billQuery"] as $item){
                $total = $total + (float)$item->price;
            }
            return $total;
        }
    }
?>