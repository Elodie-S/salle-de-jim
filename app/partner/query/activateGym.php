<?php

require_once '../../database/database.php';

    if (isset($_GET['user_id'])){
  
        $user_id=$_GET['user_id'];
        $queryActive = $db->prepare("UPDATE `jim_users` SET `user_active`=1 WHERE `user_id`='$user_id'");
        $queryActive->execute();
    }
  
    header('Location: ../dashboard-partner.php');