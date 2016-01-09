<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title> Dashboard </title>
    <link href="<?php echo base_url(); ?>assets/css/bootstrap.min.css"
          rel="stylesheet" media="screen"/>
    <link rel="stylesheet"
          href="<?php echo base_url(); ?>assets/css/style.css"/>
    <script src="<?php echo base_url(); ?>assets/js/jquery-2.1.1.js"></script>
    <script src="<?php echo base_url(); ?>assets/js/bootstrap.min.js"></script>
    <!--//<script src="<?php echo base_url(); ?>assets/js/jquery.dataTables.min.js"></script>-->
</head>
<body>
<div class="container">
<!-------------------------------------NAVBAR---------------------------------------------------------------->
<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#"> Sistem Informasi Pemetaan Pariwisata </a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Master
                        Data <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="<?php echo site_url("insertmarker") ?>">Insert Data Pariwisata </a></li>
                    </ul>
                </li>

            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle"
                       data-toggle="dropdown"><span
                            class="glyphicon glyphicon-user"> Admin<b
                                class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="<?php echo site_url("maps/logout"); ?>">
                                <span
                                    class="glyphicon glyphicon-off"> Logout</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<div class="container">
    <div class="span12">
        <div class="row-fluid" id="main-content">
            <div id="detail-content">
                <?php echo $contents; ?>
            </div>
        </div>
    </div>
</div>
</body>
<!----------------------------------------------------------------------------------------------------- -->
</div>
</html>