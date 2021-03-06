<?php
    // lay layout
$this->fileLayout = "Layout.php";
?>
<!-- previewProduct -->
<div class="card" id="preview">
    <div class="main-preview">
        <div class="card-header" style="display: flex;">
            <div class="go-back" id="#preview" onclick="GoBack();"><i class="fa fa-times-circle fa-2x" aria-hidden="true"></i>
            </div>
        </div>
        <div>
            <img style="width:350px; height:250px;" id="img_preview" src="">
        </div>
    </div>
</div>

<div style="margin-bottom:5px;">
    <div class="col-md-12 col-md-6">
        <a href="index.php?controller=inventory&action=create" class="btn btn-primary">Add inventory</a>
    </div>
    <form action="index.php?controller=search" method="post"> 
        <div style="display: flex;" lass="col-md-12 col-md-6" class="input-group">
            <div class="form-outline">
                <input type="text" name="key" id="form1" placeholder="Search" class="form-control" />
            </div>
            <button type="submit" class="btn btn-primary">Tìm</button>
        </div>
    </form>
    
</div>
<div class="panel panel-primary">
    <div class="panel-heading">List Inventories</div>
    <div class="panel-body">
        <table class="table table-bordered table-hover">
            <tr>
                <th>Name</th>
                <th>Category</th>
                <th>Time_in</th>
                <th>Estimate_out</th>
                <th>Expired_at</th>
                <th>Định danh sp</th>
                <th>Số lượng</th>
                <th>Photo</th>
                <th></th>
            </tr>
            <?php foreach($data as $rows):?>
                <tr>
                    <td>
                        <?php echo $rows->name; ?>
                    </td>
                    <td>
                     <?php
                     $category = $this->modelGetCategory($rows->category_id);
                     echo isset($category->name)?$category->name:"";
                     ?>
                 </td>
                 <td>
                    <?php echo $rows->time_in; ?>
                </td>
                <td style="text-align: center;">
                    <?php echo $rows->estimate_out; ?>
                </td>
                <td style="text-align: center;">
                    <?php echo $rows->expired_at; ?>
                </td>
                <td style="text-align: center;">
                    <?php echo $rows->sku; ?>
                </td>
                <td style="text-align: center;">
                    <?php echo $rows->stock; ?>
                </td>
                <td style="text-align: center;">
                    <button id="photo" onclick="Open(<?php echo $rows->id; ?>);">Xem</button>
                    <img id="img_inventory<?php echo $rows->id; ?>" style="display:none;" src="assets/upload/inventory/<?php echo $rows->image; ?>">
                </td>
                <td style="text-align:center;">
                    <a href="index.php?controller=inventory&action=update&id=<?php echo $rows->id; ?>">Edit</a>&nbsp;
                    <a href="index.php?controller=inventory&action=delete&id=<?php echo $rows->id; ?>" onclick="return window.confirm('Are you sure?');">Delete</a>
                </td>
            </tr>
        <?php endforeach; ?>
    </table>
    <style type="text/css">
    .pagination {
        padding: 0px;
        margin: 0px;
    }
</style>
<ul class="pagination">
    <li class="page-item"><a href="#" class="page-link">Trang</a></li>
    <?php for($i = 1; $i <= $numPage; $i++): ?>
        <li class="page-item"><a href="index.php?controller=inventory&page=<?php echo $i; ?>" class="page-link"><?php echo $i; ?></a></li>
    <?php endfor; ?>
</ul>
</div>
</div>
</div>