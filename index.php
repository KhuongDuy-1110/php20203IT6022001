<?php
    session_start();
    // load file connection
    include "application/Connection.php";
    // load file controller
    include "application/Controller.php";
?>
<?php
    // // de MVC hoat dong thi include file Controller cua MVC do
    // include "controllers/ControllerPhongBan.php";
    // // khoi tao object cua class controller
    // $obj = new ControllerPhongBan();
    // // goi ham index trong class ControllerPhongBan
    // $obj->index();
    //----------
    // Lay bien controller truyen tu url
    $controller = isset($_GET["controller"])?$_GET["controller"]:"Home";
    $action = isset($_GET["action"])?$_GET["action"]:"index";
    // tao duong dan vat ly cua file controller trong MVC
    $controllerFile = "controllers/Controller".$controller.".php";
    if(file_exists($controllerFile)){
        include $controllerFile;
        $controllerClass = "Controller".$controller;
        // khoi tao obj cua class
        $obj = new $controllerClass();
        // goi den action
        $obj->$action();
    }else die("File controller không tồn tại");
?>