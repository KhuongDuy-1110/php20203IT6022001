<?php
    // lay layout
    $this->fileLayout = "Layout.php";
?>
<div class="col-md-12">
    <div class="panel panel-primary">
        <div class="panel-heading">Thông tin khách hàng</div>
        <div class="panel-body">
            <form method="post" enctype="multipart/form-data" action="<?php echo $action; ?>">
                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Ho tên:</div>
                    <div class="col-md-10">
                        <input type="text" value="<?php echo isset($record->name)?$record->name:""; ?>" name="name" class="form-control" required>
                    </div>
                </div>
                <!-- end rows -->
                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Email</div>
                    <div class="col-md-10">
                        <input type="text" value="<?php echo isset($record->email)?$record->email:""; ?>" name="email" class="form-control" required>
                    </div>
                </div>
                <!-- end rows -->
                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Ngày sinh</div>
                    <div class="col-md-3">
                        <input type="text" value="<?php echo isset($record->dateOfBirth)?$record->dateOfBirth:""; ?>" name="dateOfBirth" class="form-control" id="dateText" required>
                    </div>
                    <div class="col-md-3"><input type="date" name="datePicker" id="datePicker" onchange="loadDate()"></div>
                </div>
                <!-- end rows -->
                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Giới tính</div>
                    <div class="col-md-10" >
                        <input type="checkbox" checked="<?php echo isset($record->gender) ?>" name="gender" required>
                        <label>Nam</label>
                    </div>
                </div>
                <!-- end rows -->
                 <!-- rows -->
                 <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Điện thoại</div>
                    <div class="col-md-10">
                        <input type="text" value="<?php echo isset($record->phone)?$record->phone:""; ?>" name="phone" class="form-control" required>
                    </div>
                </div>
                <!-- end rows -->
                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Địa chỉ</div>
                    <div class="col-md-10">
                        <input type="text" value="<?php echo isset($record->address)?$record->address:""; ?>" name="address" class="form-control" required>
                    </div>
                </div>
                <!-- end rows -->
                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Ghi chú</div>
                    <div class="col-md-10">
                        <textarea class="col-md-12" name="note"><?php echo isset($record->note)?$record->note:""; ?></textarea>
                    </div>
                </div>
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2"></div>
                    <div class="col-md-10">
                        <input type="submit" value="Process" class="btn btn-primary">
                    </div>
                </div>
                <!-- end rows -->
            </form>
        </div>
    </div>
</div>
<script>
    function loadDate(){
        var date = document.getElementById("datePicker").value;
        document.getElementById("dateText").value  = date;
    }
</script>