<!-- load file layout chung -->
<?php $this->fileLayout = "Layout.php"; ?>
<div class="col-md-12">
    <div style="margin-bottom:5px;">
        <input onclick="history.go(-1);" type="button" value="Back" class="btn btn-danger">
    </div>    
    <div class="panel panel-primary">
        <div class="panel-heading">Orders detail</div>
        <div class="panel-body">
            <!-- thong tin don hang -->
            <?php 
                $order = $this->modelGetOrders($id);
                $customer = $this->modelGetCustomers($order->customer_id);
             ?>
            <table class="table">
                <tr>
                    <th style="width: 100px;">Họ tên</th>
                    <td><?php echo $customer->name; ?></td>
                </tr>
                <tr>
                    <th style="width: 100px;">Địa chỉ</th>
                    <td><?php echo $customer->address; ?></td>
                </tr>
                <tr>
                    <th style="width: 100px;">Điện thoại</th>
                    <td><?php echo $customer->phone; ?></td>
                </tr>
                <tr>
                    <th style="width: 100px;">Tổng giá</th>
                    <td><?php echo number_format($order->price); ?></td>
                </tr>
                <tr>
                    <th style="width: 100px;">Ngày đặt</th>
                    <td><?php echo $order->date; ?></td>
                </tr>
                <tr>
                    <th style="width: 100px;">Trạng thái</th>
                    <td>
                        <?php if($order->status == 0): ?>
                            <span class="label label-danger">Chưa giao hàng</span>
                        <?php else: ?>
                            <span class="label label-primary">Đã giao hàng</span>
                        <?php endif; ?>
                    </td>
                </tr>
            </table>
            <!-- /thong tin -->
            <table class="table table-bordered table-hover">
                <tr>
                    <th style="width: 100px;">Photo</th>
                    <th>Name</th>
                    <th>Price</th>
                    <th>Number</th>
                </tr>
                <?php foreach($data as $rows): ?>
                    <?php 
                        //lay ban ghi product tuong ung voi product_id
                        $product = $this->modelGetProducts($rows->product_id);
                     ?>
                <tr>
                    <td style="text-align: center;"><img src="../Assets/Upload/Products/<?php echo $product->photo; ?>" style="width:100px;"></td>
                    <td><?php echo $product->name; ?></td>
                    <td style="text-align: center;"><?php echo number_format($rows->price); ?></td>
                    <td style="text-align: center;"><?php echo $rows->quantity; ?></td>
                </tr>
                <?php endforeach; ?>
            </table>            
        </div>
    </div>
</div>