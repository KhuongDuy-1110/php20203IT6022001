<?php 
	trait ModelSearch{
		public function modelSearch($recordPerPage, $key){
			$page = isset($_GET["page"])&&$_GET["page"]>0 ? $_GET["page"]-1 : 0;
            // lay tu ban ghi nao 
            $from = $page * $recordPerPage;
			$conn = Connection::getInstance();
			$query = $conn->query("select * from inventory where name like '%$key%' order by id desc limit $from, $recordPerPage");
			return $query->fetchAll();
		}
		
		//tinh tong so ban ghi
		public function modelTotalRecord($key){
			$conn = Connection::getInstance();
			$query = $conn->query("select * from inventory where name like '%$key%'");
			return $query->rowCount();
		}
	}
 ?>