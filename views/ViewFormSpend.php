<?php
    // lay layout
    $this->fileLayout = "Layout.php";
?>
<div class="col-md-12">
    <div class="panel panel-primary">
        <div class="panel-heading" style="text-align:center;">Add edit inventory</div>
        <div class="panel-body">
<!--            muon upload anh thi trong the form phai co thuoc tinh sau: enctype="multipart/form-data"-->
            <form method="post" enctype="multipart/form-data" action="<?php echo $action; ?>">
                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Title:</div>
                    <div class="col-md-10">
                        <input type="text" value="<?php echo isset($record->title)?$record->title:""; ?>" name="title" class="form-control" required>
                    </div>
                </div>
                <!-- end rows --> 
                 <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Description:</div>
                    <div class="col-md-10">
                        <textarea name="description"><?php echo isset($record->description)?$record->description:""; ?></textarea>
                        <script type="text/javascript">CKEDITOR.replace("description");</script>
                    </div>
                </div>
                <!-- end rows -->
                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Date:</div>
                    <div class="col-md-10">
                        <input type="date" value="<?php echo isset($record->date)?$record->date:""; ?>" name="date" class="form-control" required>
                    </div>
                </div>
                <!-- end rows -->
                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Số tiền:</div>
                    <div class="col-md-10">
                        <input type="number" value="<?php echo isset($record->price)?$record->price:"0"; ?>" name="price" class="form-control" required>
                    </div>
                </div>
                <!-- end rows -->
                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Reason:</div>
                    <div class="col-md-10">
                        <input type="text" value="<?php echo isset($record->reason)?$record->reason:""; ?>" name="reason" class="form-control" required>
                    </div>
                </div>
                <!-- end rows -->
                
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