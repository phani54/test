<?php

  class chatClass
  {
    public static function getRestChatLines($id)
    {
      $arr = array();
      $jsonData = '{"results":[';
      $db_connection = new mysqli( mysqlServer, mysqlUser, mysqlPass, mysqlDB);
      $db_connection->query( "SET NAMES 'UTF8'" );
      $statement = $db_connection->prepare( "SELECT id, user_id, opponenet_id, room_id, usrname, color, chattext, chattime FROM chat WHERE id > ? and chattime >= DATE_SUB(NOW(), INTERVAL 1 HOUR)");
      $statement->bind_param( 'i', $id);
      $statement->execute();
      $statement->bind_result( $id, $user_id, $opponenet_id, $room_id, $usrname, $color, $chattext, $chattime);
      $line = new stdClass;
      while ($statement->fetch()) {
        $line->id = $id;
        $line->user_id = $user_id;
        $line->opponenet_id = $opponenet_id;
        $line->room_id = $room_id;
        $line->usrname = $usrname;
        $line->color = $color;
        $line->chattext = $chattext;
        $line->chattime = date('H:i:s', strtotime($chattime));
        $arr[] = json_encode($line);
      }
      $statement->close();
      $db_connection->close();
      $jsonData .= implode(",", $arr);
      $jsonData .= ']}';
      return $jsonData;
    }
    
    public static function setChatLines( $chattext, $usrname, $color,$user_id,$opponenet_id,$room_id) 
    {
        $db_connection = new mysqli( mysqlServer, mysqlUser, mysqlPass, mysqlDB);
          $db_connection->query( "SET NAMES 'UTF8'" );
          if($room_id == 0)
          {
            $room_id = rand(pow(10, 4), pow(10, 5)-1);
          }

          $statement = $db_connection->prepare( "INSERT INTO chat( user_id,opponenet_id,room_id,usrname, color, chattext) VALUES(?,?,?,?,?,?)");
          $statement->bind_param( 'ssssss',$user_id,$opponenet_id,$room_id,$usrname, $color, $chattext);
          $statement->execute();
          $statement->close();
          $db_connection->close();
    }
  }
?>