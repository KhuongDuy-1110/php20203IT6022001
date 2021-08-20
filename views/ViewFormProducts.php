<?php
    // lay layout
    $this->fileLayout = "Layout.php";
?>
<div class="col-md-12">
    <div class="panel panel-primary">
        <div class="panel-heading">Add edit products</div>
        <div class="panel-body">
<!--            muon upload anh thi trong the form phai co thuoc tinh sau: enctype="multipart/form-data"-->
            <form method="post" enctype="multipart/form-data" action="<?php echo $action; ?>">
                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Name</div>
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
                                <option <?php if (isset($record->category_id) && $record->category_id == $rows->id) : "" ?> select <?php endif; ?> value="<?php echo $rows->id; ?>"> <?php echo $rows->name; ?> </option>
                                <?php $dataSub = $this->modelReadCategorySub($rows->id); ?>
                                <?php foreach($dataSub as $rowsSub): ?>
                                    <option <?php if (isset($record->category_id) && $record->category_id == $rowsSub->id) : "" ?> select <?php endif; ?> value="<?php echo $rowsSub->id; ?>"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <?php echo $rowsSub->name; ?> </option>
                                <?php endforeach; ?>
                            <?php endforeach; ?>
                        </select>
                    </div>
                </div>
                <!-- end rows -->
                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Discount</div>
                    <div class="col-md-10">
                        <input type="number" value="<?php echo isset($record->discount)?$record->discount:"0"; ?>" name="discount" class="form-control" required>
                    </div>
                </div>
                <!-- end rows -->
                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Price</div>
                    <div class="col-md-10">
                        <input type="number" value="<?php echo isset($record->price)?$record->price:"0"; ?>" name="price" class="form-control" required>
                    </div>
                </div>
                <!-- end rows -->
                 <!-- rows -->
                 <div class="row" style="margin-top:5px;">
                    <div class="col-md-2"></div>
                    <div class="col-md-10">
                        <input type="checkbox" <?php if(isset($record->hot)&&$record->hot==1): ?> checked <?php endif; ?> name="hot" id="hot"> <label for="hot">&nbsp;&nbsp;Hot products</label>
                    </div>
                </div>
                <!-- end rows -->
                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Description</div>
                    <div class="col-md-10">
                        <textarea name="description"><?php echo isset($record->description)?$record->description:""; ?></textarea>
                        <script type="text/javascript">CKEDITOR.replace("description");</script>
                    </div>
                </div>
                <!-- end rows -->
                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Detail</div>
                    <div class="col-md-10">
                        <textarea name="content"><?php echo isset($record->content)?$record->content:""; ?></textarea>
                        <script type="text/javascript">CKEDITOR.replace("content");</script>
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
                <?php if(isset($record->photo)&&file_exists("../assets/upload/products".$record->photo)): ?>
                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2"></div>
                    <div class="col-md-10">
                        <img src="../assets/upload/products/<?php echo $record->photo; ?>" style="width: 100px;">
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