<?php
    // lay layout
    $this->fileLayout = "Layout.php";
?>
<div class="col-md-12">
    <div style="margin-bottom:5px;">
        <a href="index.php?controller=spend&action=create" class="btn btn-primary">Add spend</a>
    </div>
    <div class="panel panel-primary">
        <div class="panel-heading">List Spend</div>
        <div class="panel-body">
            <table class="table table-bordered table-hover">
                <tr>
                    <th>Title</th>
                    <th>Description</th>
                    <th>Price</th>
                    <th>Reason</th>
                    <th>Date</th>
                    <th>Chức năng</th>
                </tr>
                <?php foreach($data as $rows):?>
                <tr>
                    <td>
                        <?php echo $rows->title; ?>
                    </td>
                    <td>
                        <?php echo $rows->description; ?>
                    </td>
                    <td>
                        <?php echo  number_format($rows->price); ?>
                    </td>
                    <td>
                        <?php echo $rows->reason; ?>
                    </td>
                    <td>
                        <?php echo $rows->date; ?>
                    </td> 
                    <td style="text-align:center;">
                        <a href="index.php?controller=spend&action=update&id=<?php echo $rows->id; ?>">Edit</a>&nbsp;
                        <a href="index.php?controller=spend&action=delete&id=<?php echo $rows->id; ?>" onclick="return window.confirm('Are you sure?');">Delete</a>
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
                <li class="page-item"><a href="index.php?controller=spend&page=<?php echo $i; ?>" class="page-link"><?php echo $i; ?></a></li>
                <?php endfor; ?>
            </ul>
        </div>
    </div>
</div>