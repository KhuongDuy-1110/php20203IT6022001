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
                    <div class="col-md-2">Tên sản phẩm:</div>
                    <div class="col-md-10">
                        <input type="text" value="<?php echo isset($record->name)?$record->name:""; ?>" name="name" class="form-control" required>
                    </div>
                </div>
                <!-- end rows -->
                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Categories</div>
                    <div class="col-md-10">
                        <select name="category_id" class="form-control" style="width: 300px;">
                            <option value="0"></option>
                            <?php
                                $data = $this->modelListCategories();
                            ?>
                            <?php foreach($data as $rows): ?>
                                <option <?php if (isset($record->category_id) && $record->category_id == $rows->id) : "" ?> selected <?php endif; ?> value="<?php echo $rows->id; ?>"> <?php echo $rows->name; ?> </option>
                                <?php $dataSub = $this->modelReadCategorySub($rows->id); ?>
                                <?php foreach($dataSub as $rowsSub): ?>
                                    <option <?php if (isset($record->category_id) && $record->category_id == $rowsSub->id) : "" ?> selected <?php endif; ?> value="<?php echo $rowsSub->id; ?>"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <?php echo $rowsSub->name; ?> </option>
                                <?php endforeach; ?>
                            <?php endforeach; ?>
                        </select>
                    </div>
                </div>
                <!-- end rows -->
                <div class="form-group">
                	
                </div>
                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Time_in:</div>
                    <div class="col-md-10">
                        <input type="date" value="<?php echo isset($record->time_in)?$record->time_in:""; ?>" name="time_in" class="form-control" required>
                    </div>
                </div>
                <!-- end rows -->
                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Estimate_out:</div>
                    <div class="col-md-10">
                        <input type="date" value="<?php echo isset($record->estimate_out)?$record->estimate_out:""; ?>" name="estimate_out" class="form-control" required>
                    </div>
                </div>
                <!-- end rows -->
                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Expired_at:</div>
                    <div class="col-md-10">
                        <input type="date" value="<?php echo isset($record->expired_at)?$record->expired_at:""; ?>" name="expired_at" class="form-control" required>
                    </div>
                </div>
                <!-- end rows -->
                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Mã định danh:</div>
                    <div class="col-md-10">
                        <input type="text" value="<?php echo isset($record->sku)?$record->sku:"0"; ?>" name="sku" class="form-control" required>
                    </div>
                </div>
                <!-- end rows -->
                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Số lượng:</div>
                    <div class="col-md-10">
                        <input type="number" value="<?php echo isset($record->stock)?$record->stock:"0"; ?>" name="stock" class="form-control" required>
                    </div>
                </div>
                <!-- end rows -->
                 <!-- rows -->
                 <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Photo</div>
                    <div class="col-md-10">
                        <input type="file" name="photo">
                    </div>
                </div>
                <!-- end rows -->
                <?php if(isset($record->image)&&file_exists("./assets/upload/inventory/".$record->image)): ?>
                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2"></div>
                    <div class="col-md-10">
                        <img src="./assets/upload/inventory/<?php echo $record->image; ?>" style="width: 100px;">
                    </div>
                </div>
                <!-- end rows -->
                <?php endif; ?>
                <!-- rows -->
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