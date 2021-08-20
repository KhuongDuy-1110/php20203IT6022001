<?php
    class Controller{
        public $fileName = NULL;
        public $fileLayout = NULL;
        public $view = NULL;
        public function loadView($fileName,$data=NULL){
            if($data != NULL)
                extract($data);
            if(file_exists("views/$fileName")){
                $this->fileName = $fileName;
                // doc nd cua $filename gan vao mot bien
                ob_start();
                    include "views/$fileName";
                    $this->view = ob_get_contents();
                ob_end_clean();
                if($this->fileLayout != NULL){
                    include "views/$this->fileLayout";
                }
                else
                    echo $this->view;
            }
        }
        // kiem tra dang nhap
        public function authentication(){
            if(isset($_SESSION["email"])==false)
                header("location:index.php?controller=login");
        }
    }
?>