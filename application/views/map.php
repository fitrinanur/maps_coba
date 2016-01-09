<html>
<head>
    <link rel="stylesheet" type="text/css"
          href="<?php echo base_url("assets/css") ?>/bootstrap.css">
    <link rel="stylesheet" type="text/css"
          href="<?php echo base_url("assets/css") ?>/bootstrap-theme.css">
    <link rel="stylesheet" type="text/css"
          href="<?php echo base_url("assets/css") ?>/style.css">
    <script src="<?php echo base_url('assets/js') ?>/jquery-2.1.1.js"></script>
    <script src="<?php echo base_url(); ?>assets/js/background.js"></script>
    <script src="<?php echo base_url('assets/js') ?>/bootstrap.min.js"></script>


    <!-- <?php echo $map['js']; ?> -->

</head>
<body>
<div id="background_cycler">
    <script type="text/javascript">
        $('#background_cycler').hide();//hide the background while the images load, ready to fade in later
    </script>
    <img class="active"
         src="<?php echo base_url(); ?>assets//img/accounting.jpg" alt=""/>
    <img class="active"
         src="<?php echo base_url(); ?>assets/img/Accounting2.jpg" alt=""/>
    <img class="active"
         src="<?php echo base_url(); ?>assets/img/Accounting3.jpg" alt=""/>
</div>
<div class="container">

    <h1>
        <center>MAP PARIWISATA SOLO</center>
    </h1>
    <ul class="nav nav-tabs">
        <li class=""><a href="<?php echo site_url("maps/home") ?>">Home</a></li>
        <li><a href="<?php echo site_url("maps/about") ?>">Wisata Solo</a></li>
        <li class="navbar-right"><a href="<?php echo site_url("maps/login") ?>">Login</a>
        </li>
    </ul>
    <div class="brown"></div>
    <div>
        <?php echo $contents; ?>
        <!-- <?php echo $map['html']; ?> --></div>
    <!--  <button type="" class="btn btn-primer" ></button> -->
</div>
</body>
<script>
    google.maps.event.addListener(iw_map, 'domready', function () {
        // Reference to the DIV that wraps the bottom of infowindow
        var iwOuter = $('.gm-style-iw');

        /* Since this div is in a position prior to .gm-div style-iw.
         * We use jQuery and create a iwBackground variable,
         * and took advantage of the existing reference .gm-style-iw for the previous div with .prev().
         */
        var iwBackground = iwOuter.prev();

        // Removes background shadow DIV
        iwBackground.children(':nth-child(2)').css({'display': 'none'});

        // Removes white background DIV
        iwBackground.children(':nth-child(4)').css({'display': 'none'});

        // Moves the infowindow 115px to the right.
        iwOuter.parent().parent().css({left: '115px'});

        // Moves the shadow of the arrow 76px to the left margin.
        iwBackground.children(':nth-child(1)').attr('style', function (i, s) {
            return s + 'left: 76px !important;'
        });

        // Moves the arrow 76px to the left margin.
        iwBackground.children(':nth-child(3)').attr('style', function (i, s) {
            return s + 'left: 76px !important;'
        });

        // Changes the desired tail shadow color.
        iwBackground.children(':nth-child(3)').find('div').children().css({
            'box-shadow': 'rgba(72, 181, 233, 0.6) 0px 1px 6px',
            'z-index': '1'
        });

        // Reference to the div that groups the close button elements.
        var iwCloseBtn = iwOuter.next();

        // Apply the desired effect to the close button
        iwCloseBtn.css({
            opacity: '1',
            right: '38px',
            top: '3px',
            width: '28px',
            height: '28px',
            border: '7px solid #48b5e9',
            'border-radius': '13px',
            'box-shadow': '0 0 5px #3990B9'
        });

        // If the content of infowindow not exceed the set maximum height, then the gradient is removed.
        if ($('.iw-content').height() < 140) {
            $('.iw-bottom-gradient').css({display: 'none'});
        }

        // The API automatically applies 0.7 opacity to the button after the mouseout event. This function reverses this event to the desired value.
        iwCloseBtn.mouseout(function () {
            $(this).css({opacity: '1'});
        });
    });
</script>
</html>