<?php
    /**
     * Created by: Vu Xuan Khanh
     * 
     */

    include "models/ModelReportRevenues.php";
    class ControllerReportRevenues extends Controller{
        // ke thua class model
        use ModelReportRevenues;
        public function index(){
            // Quy định số bản ghi trên 1 trang là 40
            $recordPerPage = 40;
            // Tính số trang hiện tại
            $numPage = ceil($this->modelTotalRecord()/$recordPerPage);
            // Lấy dữ liệu từ model
            $data = $this->modelRead($recordPerPage);
            // Gọi view và truyền dữ liệu ra view
            $this->loadView("ViewReportRevenues.php",array("data"=>$data,"numPage"=>$numPage));
        }
    
        //Hiển thị form lập báo cáo mới
        public function create(){
            $action = "";//"index.php?controller=reportRevenues&action=createPost";
            // Gọi view form thêm khách hàng
            $this->loadView("ViewFormReportRevenues.php",array("action"=>$action));
        }

        public function loadDataForDate(){
            $action = "index.php?controller=reportRevenues&action=createPost";
            if(isset($_GET["date"]) && $_GET["date"] != ""){
                $date = $_GET["date"];
                $numberOfBill = $this->countBillPerDay();
                $numberOfCustomer = $this->countCustomerPerDay();
                $total = $this->totalRevenue();
                $this->loadView("ViewFormReportRevenues.php",array("action"=>$action, "date"=>$date, "numberOfBill"=>$numberOfBill, "numberOfCustomer"=>$numberOfCustomer, "total"=>$total));
            }
        }
        //Thực hiện thêm dữ liệu báo cáo vào db
        public function createPost(){
            // Gọi hàm thêm 
            $this->modelCreate();
            // Quay lại trang chính
            header("location:index.php?controller=reportRevenues");
        }
        //Xóa báo cáo 
        public function delete(){
            $this->modelDelete();
            header("location:index.php?controller=reportRevenues");
        }
    }

?>