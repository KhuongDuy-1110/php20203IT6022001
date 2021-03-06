<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>PHO XINH | Dashboard</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="assets/admin/layout1/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="assets/admin/layout1/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/admin/layout1/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="assets/admin/layout1/css/_all-skins.min.css">
    <!-- Google Font -->
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    <!-- load file .js cua ckeditor -->
    <script type="text/javascript" src="assets/ckeditor/ckeditor.js"></script>
    <link rel="stylesheet" href="assets/admin/layout1/css/preview-image.css">
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

    <header class="main-header">
        <!-- Logo -->
        <a href="index2.html" class="logo" style="background-color: #222d32">
            <!-- mini logo for sidebar mini 50x50 pixels -->
            <span class="logo-mini"><b>N</b>15</span>
            <!-- logo for regular state and mobile devices -->
            <span class="logo-lg" ><b>Admin</b> - PhoXinh</span>
        </a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top" style="background-color: #152555;">
            <!-- Sidebar toggle button-->
            <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
                <span class="sr-only">Toggle navigation</span>
            </a>

            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                    <!-- User Account: style can be found in dropdown.less -->
                    <li class="dropdown user user-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="assets/admin/layout1/images/user2-160x160.jpg" class="user-image" alt="User Image">
                            <span class="hidden-xs">Welcome</span>
                        </a>
                        <ul class="dropdown-menu">
                            <!-- User image -->
                            <li class="user-header">
                                <img src="assets/admin/layout1/images/user2-160x160.jpg" class="img-circle" alt="User Image">

                                <p>
                                    Your profile
                                    <small>Web developer</small>
                                </p>
                            </li>
                            <!-- Menu Footer-->
                            <li class="user-footer">
                                <div class="pull-left">
                                    <a href="#" class="btn btn-default btn-flat">Profile</a>
                                </div>
                                <div class="pull-right">
                                    <a href="#" class="btn btn-default btn-flat">Sign out</a>
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
    <!-- Left side column. contains the logo and sidebar -->
    <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
            <!-- Sidebar user panel -->
            <div class="user-panel">
                <div class="pull-left image">
                    <img src="assets/admin/layout1/images/user2-160x160.jpg" class="img-circle" alt="User Image">
                </div>
                <div class="pull-left info">
                    <p>PHO XINH</p>
                    <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                </div>
            </div>
            <!-- sidebar menu: : style can be found in sidebar.less -->
            <ul class="sidebar-menu" data-widget="tree">
                <li class="header" style="background-color: #ffffff; color: black;">ADMIN</li>

                <li>
                    <a href="index.php?controller=categories">
                        <i class="fa fa-th"></i> <span>Danh m???c</span>
                    </a>
                </li>
                <li>
                    <a href="index.php?controller=products">
                        <i class="fa fa-th"></i> <span>S???n ph???m</span>
                    </a>
                </li>
                <li>
                    <a href="index.php?controller=orders">
                        <i class="fa fa-th"></i> <span>Danh s??ch ????n h??ng</span>
                    </a>
                </li>
                
                <li>
                    <a href="index.php?controller=inventory">
                        <i class="fa fa-code"></i> <span>Qu???n l?? h??ng t???n</span></span>
                    </a>
                </li>
                <li>
                    <a href="index.php?controller=customers">
                        <i class="fa fa-code"></i> <span>Kh??ch h??ng</span>
                    </a>
                </li>
                <li>
                    <a href="index.php?controller=reportRevenues">
                        <i class="fa fa-code"></i> <span>B??o c??o kho???n thu</span>
                    </a>
                </li>
                <li>
                    <a href="index.php?controller=spend">
                        <i class="fa fa-code"></i> <span>Qu???n l?? chi ti??u</span>
                    </a>
                </li>
            </span>
                    </a>
                </li>
                <li>
                    <a href="index.php?controller=login&action=logout">
                        <i class="fa fa-code"></i> <span>????ng xu???t</span>
            </span>
                    </a>
                </li>
            </ul>
        </section>
        <!-- /.sidebar -->
    </aside>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->

        <!-- Main content -->
        <section class="content">
                <?php echo $this->view; ?>

        </section>
        <!-- /.content -->
    </div>
    <footer class="main-footer">
        <div class="pull-right hidden-xs">
            <b>Nhom</b> 15
        </div>
        <strong>Made by <a href="#">Nhom 15</a>.</strong>
    </footer>
    <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

<!-- jQuery 3 -->
<script src="assets/admin/layout1/js/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="assets/admin/layout1/js/jquery-ui.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="assets/admin/layout1/js/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="assets/admin/layout1/js/adminlte.min.js"></script>
<script type="text/javascript" src="assets/admin/layout1/js/preview-image.js"></script>
</body>
</html>
