<?php
    // lay layout
    $this->fileLayout = "Layout.php";
?>
<div class="col-md-12">
    <div class="panel panel-primary">
        <div class="panel-heading">Lập báo cáo doanh thu</div>
        <div class="panel-body">
            <form method="post" enctype="multipart/form-data" action="<?php echo $action; ?>">
                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Ngày lập báo cáo</div>
                    <div class="col-md-3">
                        <input type="text" name="date" value="<?php echo isset($date)?$date:""; ?>" class="form-control" required>
                    </div>
                    <div class="col-md-3"><input type="date" name="datePicker" id="datePicker" onchange="loadData()"></div>
                </div>
                <!-- end rows -->
                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Số lượng hóa đơn</div>
                    <div class="col-md-10">
                        <input type="text" value="<?php echo isset($numberOfBill)?$numberOfBill:""; ?>" name="numberOfBill" class="form-control" required>
                    </div>
                </div>
                <!-- end rows -->
                
                 <!-- rows -->
                 <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Số lượng khách hàng</div>
                    <div class="col-md-10">
                        <input type="text" value="<?php echo isset($numberOfCustomer)?$numberOfCustomer:""; ?>" name="numberOfCustomer" class="form-control" required>
                    </div>
                </div>
                <!-- end rows -->
                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Tổng doanh thu ước tính</div>
                    <div class="col-md-10">
                        <input type="text" value="<?php echo isset($total)?$total:""; ?>" name="total" class="form-control" required>
                    </div>
                </div>
                <!-- end rows -->
                
                <!-- Nút thực hiện -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2"></div>
                    <div class="col-md-10">
                        <input type="submit" value="Process" class="btn btn-primary">
                    </div>
                </div>
                
            </form>
        </div>
    </div>
</div>
<script>
    function loadData(){
        var date = document.getElementById("datePicker").value;
        console.log(date);
        location.href="index.php?controller=reportRevenues&date="+date+"&action=loadDataForDate";
    }
</script>