<?php
    // lay layout
    $this->fileLayout = "Layout.php";
?>
<div class="col-md-12">
    <div style="margin-bottom:5px;">
        <a href="index.php?controller=reportRevenues&action=create" class="btn btn-primary">Lập báo cáo</a>
    </div>
    <div class="panel panel-primary">
        <div class="panel-heading">Danh sách báo cáo khoản thu</div>
        <div class="panel-body">
            <table class="table table-bordered table-hover">
                <tr>
                    <th style="width: 200px;">Ngày lập</th>
                    <th style="width: 150px;">Số lượng hóa đơn</th>
                    <th style="width: 150px;">Số lượng khách hàng</th>
                    <th style="width: 200px;">Tổng doanh thu</th>
                    <th style="width:100px;"></th>
                </tr>
                <?php foreach($data as $rows):?>
                <tr>
                    <td style="text-align: center;">
                        <?php echo $rows->date; ?>
                    </td>
                    <td>
                        <?php echo $rows->numberOfBill; ?>
                    </td>
                    <td>
                        <?php echo $rows->numberOfCustomer; ?>
                    </td>
                    <td>
                        <?php echo $rows->total; ?>
                    </td>
                    <td style="text-align:center;">
                        <a href="index.php?controller=reportRevenues&action=delete&id=<?php echo $rows->id; ?>" onclick="return window.confirm('Are you sure?');">Delete</a>
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
                <li class="page-item"><a href="index.php?controller=products&page=<?php echo $i; ?>" class="page-link"><?php echo $i; ?></a></li>
                <?php endfor; ?>
            </ul>
        </div>
    </div>
</div>