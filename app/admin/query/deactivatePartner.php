<?php
require_once '../../database/database.php';

if (isset($_GET['user_id'])){

    $user_id=$_GET['user_id'];
    $queryNotActive = $db->prepare("UPDATE `jim_users` SET `user_active`= '0' WHERE `user_id`=$user_id");
    $queryNotActive->execute();
}

header('Location: ../dashboard-admin.php');