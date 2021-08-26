<?php
    /**
     * Created by: Vu Xuan Khanh
     */
    include "models/ModelCustomers.php";
    class ControllerCustomers extends Controller{
        // ke thua class model
        use ModelCustomers;
        public function index(){
            // Quy định số bản ghi trên 1 trang là 40
            $recordPerPage = 40;
            // Tính số trang hiệ tại
            $numPage = ceil($this->modelTotalRecord()/$recordPerPage);
            // Lấy dữ liệu từ model
            $data = $this->modelRead($recordPerPage);
            // Gọi view và truyền dữ liệu ra view
            $this->loadView("ViewCustomers.php",array("data"=>$data,"numPage"=>$numPage));
        }
        //Lấy dữ liệu của khách hàng cần sửa đưa vào form sửa
        public function update(){
            //Lấy id của khách hàng
            $id = isset($_GET["id"])&&$_GET["id"] > 0 ? $_GET["id"] : 0;
            //Lấy thông tin khách hàng theo id;
            $record = $this->modelGetRecord();
            // Biến action để biết lúc nào nhấn nút submit
            $action = "index.php?controller=customers&action=updatePost&id=$id";
            // Hiển thị form sửa thông tin khách hàng 
            $this->loadView("ViewFormCustomers.php",array("record"=>$record,"action"=>$action));
        }
        //Thực thiện cập nhât dữ liêu
        public function updatePost(){
            $id = isset($_GET["id"])&&$_GET["id"] > 0 ? $_GET["id"] : 0;
            // Gọi hàm update để cập nhật thông tin vào db
            $this->modelUpdate();
            //Quay lại trang chính ql khách hàng
            header("location:index.php?controller=customers");
        }

        //Hiển thị form thêm khách hàng
        public function create(){
            $action = "index.php?controller=customers&action=createPost";
            // Gọi view form thêm khách hàng
            $this->loadView("ViewFormCustomers.php",array("action"=>$action));
        }
        //Thực hiện thêm khách hàng
        public function createPost(){
            // Gọi hàm thêm 
            $this->modelCreate();
            // Quay lại trang chính
            header("location:index.php?controller=customers");
        }
        //Xóa khách hàng
        public function delete(){
            $this->modelDelete();
            header("location:index.php?controller=customers");
        }

        public function search(){
            $key = isset($_GET["key"])?$_GET["key"]:"";
            $data = $this->searchCustomer($key);
            $this->loadView("ViewCustomerSearch.php",array("data"=>$data));
            
            
        }
        
        

    }
?>