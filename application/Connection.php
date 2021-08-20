<?php
    // class ket noi csdl
    class Connection
    {
        // ket noi csdl, tra ket qua ve bien ket noi
        public static function getInstance()
        {
            $conn = new PDO("mysql:host=localhost; dbname=phoxinh15;","root","");
            $conn -> setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE,PDO::FETCH_OBJ);
            $conn->exec("set names utf8");
            return $conn;
        }
    }
?>