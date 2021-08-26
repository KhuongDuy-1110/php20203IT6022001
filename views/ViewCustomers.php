<?php
    // lay layout
    $this->fileLayout = "Layout.php";
?>
<style>
    .topBar{
        font-family: Arial;
        display: flex;
        justify-content: space-between;
        align-items: center;
    }   
    .rightBox{
        margin: 0px;
        padding-right: 12px;
    }
    .rightBox input{
        line-height: 30px;
        border-radius: 4px;
        border: 1px solid #dddddd;
        padding: 0px 12px;
    }
    #btnSearch{
        line-height: 30px;
        background-color: blueviolet;
        color: #ffffff;
    }
</style>
<div class="col-md-12">
    <div style="margin-bottom:5px;" class="topBar">
        <a href="index.php?controller=customers&action=create" class="btn btn-primary">Thêm khách hàng</a>
        <div class="rightBox">
            <input type="text" name="search" placeholder="Tìm kiếm..." id="search" onkeyup="search()">
            <input type="button" value="Tìm kiếm" id="btnSearch">
        </div>
    </div>
    <div class="panel panel-primary">
        <div class="panel-heading">Danh sách khách hàng</div>
        <div class="panel-body" id="grid">
            <table class="table table-bordered table-hover" >
                <tr>
                    <th style="width: 200px;">Tên khách hàng</th>
                    <th style="width: 70px;">Giới tính</th>
                    <th style="width: 120px;">Ngày sinh</th>
                    <th style="width: 200px;">Email</th>
                    <th style="width: 150px;">Số điện thoại</th>
                    <th style="width: 250px;">Địa chỉ</th>
                    <th style="width: 250px;">Ghi chú</th>
                    <th style="width:100px;"></th>
                </tr>
                <!-- $data được truyền từ Contoller qua dưới dạng mảng -->
                <?php foreach($data as $rows):?>
                <tr>
                    <td><?php echo $rows->name; ?></td>
                    <td style="text-align: center;">
                        <?php
                            // $category = $this->modelGetCategory($rows->category_id);
                            // echo isset($category->name)?$category->name:"";
                            if($rows->gender == 0)
                                echo "Nữ";
                            else
                                echo "Nam";
                        ?>
                    </td>
                    <td>
                        <?php echo $rows->dateOfBirth; ?>
                    </td>
                    <td>
                        <?php echo $rows->email; ?>
                    </td>
                    <td>
                        <?php echo $rows->phone; ?>
                    </td>
                    <td>
                        <?php echo $rows->address; ?>
                    </td>
                    <td>
                        <?php echo $rows->note; ?>
                    </td>
                    <td style="text-align:center;">
                        <a href="index.php?controller=customers&action=update&id=<?php echo $rows->id; ?>">Edit</a>&nbsp;
                        <a href="index.php?controller=customers&action=delete&id=<?php echo $rows->id; ?>" onclick="return window.confirm('Are you sure?');">Delete</a>
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
                <li class="page-item"><a href="index.php?controller=customers&page=<?php echo $i; ?>" class="page-link"><?php echo $i; ?></a></li>
                <?php endfor; ?>
            </ul>
        </div>
    </div>
</div>
<script>
    // $(document).ready(function(){
    function search(){
        var key = document.getElementById('search').value;
        
        $.ajax({
            url: 'index.php?controller=customers&action=search&key='+key,
            type: 'POST',
            dataType: 'html',
            data: {
            }
        }).done(function(result) {
            console.log(result);
            $('#grid').html(result);
        });
        }
    //});
    
</script>