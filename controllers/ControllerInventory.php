<?php
// include file model
    include "models/ModelInventory.php";
    class ControllerInventory extends Controller{
        // ke thua class model
        use ModelInventory;
        public function index(){
            // quy dinh so ban ghi tren mot trang
            $recordPerPage = 40;
            // tinh so trang
            $numPage = ceil($this->modelTotalRecord()/$recordPerPage);
            // lay du lieu tu model
            $data = $this->modelRead($recordPerPage);
            // goi view, truyen du lieu ra view
            $this->loadView("ViewInventory.php",array("data"=>$data,"numPage"=>$numPage));
        }
        public function update(){
            $id = isset($_GET["id"])&&$_GET["id"] > 0 ? $_GET["id"] : 0;
            // lay mot ban ghi 
            $record = $this->modelGetRecord();
            // tao bien action de biet duoc khi an nut submit se dan den dau
            $action = "index.php?controller=inventory&action=updatePost&id=$id";
            // goi view, truyen du lieu ra view
            $this->loadView("ViewFormInventory.php",array("record"=>$record,"action"=>$action));
        }
        public function updatePost(){
            $id = isset($_GET["id"])&&$_GET["id"] > 0 ? $_GET["id"] : 0;
            // goi ham modelUpdate de update ban ghi
            $this->modelUpdate();
            // quay tro lai trang inventory
            header("location:index.php?controller=inventory");
        }
        public function create(){
            $action = "index.php?controller=inventory&action=createPost";
            // goi view, truyen du lieu ra view
            $this->loadView("ViewFormInventory.php",array("action"=>$action));
        }
        public function createPost(){
            // goi ham modelCreate de create ban ghi
            $this->modelCreate();
            // quay tro lai trang inventory
            header("location:index.php?controller=inventory");
        }
        public function delete(){
            $this->modelDelete();
            header("location:index.php?controller=inventory");
        }
    }
?>