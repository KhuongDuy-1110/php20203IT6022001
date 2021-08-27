<?php 
	include "models/ModelSearch.php";
	class ControllerSearch extends Controller{
		use ModelSearch;
		public function index(){
			$key = $_POST["key"];
			$recordPerPage = 40;
            // tinh so trang
            $numPage = ceil($this->modelTotalRecord($key)/$recordPerPage);
			$data = $this->modelSearch($recordPerPage,$key);
			// quy dinh so ban ghi tren mot trang
			$this->loadView("ViewInventory.php",array("data"=>$data,"numPage"=>$numPage));
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