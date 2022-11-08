<?php

require_once '../../database/database.php';

$user_id = strip_tags($_GET['user_id']);

$queryDelete = "DELETE FROM jim_users WHERE `user_id`='$user_id'";
$delete = $db->prepare($queryDelete);
$delete->execute();
header ('Location: ../../admin/dashboard-admin.php');

