<?php
//Include the event calendar functions file
include_once('functions.php');
?>
<style type="text/css">
	.col-lg-12 h2 {
    text-align: center;
}
h2{font-family: Verdana, sans-serif;color:#383838;font-size: 20px;font-weight: bold;}
h2 span{color:#FB4314;}
h2 span span{color:#1CA86F;}
</style>
<!DOCTYPE html>
<html lang="en-US">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>PHP Event Calendar by CodexWorld</title>
    <!-- Include the stylesheet -->
    <link type="text/css" rel="stylesheet" href="style.css"/>
    <link type="text/css" rel="stylesheet" href="styles.css"/>
    <link type="text/css" rel="stylesheet" href="bootstrap.css"/>

    <!-- Include the jQuery library -->
    <!-- <script src="jquery.min.js"></script> -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
     	        <script src="http://demos.codexworld.com/includes/js/bootstrap.js"></script>
        <!-- Place this tag in your head or just before your close body tag. -->
        <script src="https://apis.google.com/js/platform.js" async defer></script>
</head>
<body>
    <!-- Display event calendar -->
    <div id="calendar_div">
        <?php echo getCalender(); ?>
    </div>
</body>
</html>