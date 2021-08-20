<?php
// include file model
    include "models/Modelcategories.php";
    class ControllerCategories extends Controller{
        // ke thua class model
        use ModelCategories;
        public function index(){
            // quy dinh so ban ghi tren mot trang
            $recordPerPage = 40;
            // tinh so trang
            $numPage = ceil($this->modelTotalRecord()/$recordPerPage);
            // lay du lieu tu model
            $data = $this->modelRead($recordPerPage);
            // goi view, truyen du lieu ra view
            $this->loadView("ViewCategories.php",array("data"=>$data,"numPage"=>$numPage));
        }
        public function update(){
            $id = isset($_GET["id"])&&$_GET["id"] > 0 ? $_GET["id"] : 0;
            // lay mot ban ghi 
            $record = $this->modelGetRecord();
            // tao bien action de biet duoc khi an nut submit se dan den dau
            $action = "index.php?controller=categories&action=updatePost&id=$id";
            // goi view, truyen du lieu ra view
            $this->loadView("ViewFormCategories.php",array("record"=>$record,"action"=>$action));
        }
        public function updatePost(){
            $id = isset($_GET["id"])&&$_GET["id"] > 0 ? $_GET["id"] : 0;
            // goi ham modelUpdate de update ban ghi
            $this->modelUpdate($id);
            // quay tro lai trang categories
            header("location:index.php?controller=categories");
        }
        public function create(){
            $action = "index.php?controller=categories&action=createPost";
            // goi view, truyen du lieu ra view
            $this->loadView("ViewFormCategories.php",array("action"=>$action));
        }
        public function createPost(){
            // goi ham modelCreate de create ban ghi
            $this->modelCreate();
            // quay tro lai trang categories
            header("location:index.php?controller=categories");
        }
        public function delete(){
            $this->modelDelete();
            header("location:index.php?controller=categories");
        }
    }
?>