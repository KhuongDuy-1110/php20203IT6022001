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
    <?php /*if(isset($data))*/ foreach($data as $rows):?>
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