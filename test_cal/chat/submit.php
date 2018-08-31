<?php
	session_start();
        require_once("config.php");
	require_once("inc/chatClass.php");

	$chattext = strip_tags( $_GET['chattext'] );
	$user_id = strip_tags( $_GET['user_id'] );
	$opponenet_id = strip_tags( $_GET['opponenet_id'] );
	$room_id = strip_tags( $_GET['room_id'] );
	chatClass::setChatLines($chattext,$_SESSION['usrname'],$_SESSION['color'],$user_id,$opponenet_id,$room_id);
?>