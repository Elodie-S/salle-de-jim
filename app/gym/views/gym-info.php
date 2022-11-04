<?php
require_once '../../database/security.php';
require_once '../../database/database.php';

$user_name = $_SESSION['user_name'];

$queryGym = "SELECT * FROM gym WHERE `user_name`='".$user_name."'";

$listGym = $db->prepare($queryGym);
$listGym->execute();
$gym = $listGym->fetch(PDO::FETCH_ASSOC);  


echo '<table id="table-partner"><tbody id="body-table">';
echo '<tr class="card">
<td><p class="user_name">'.$gym['user_name'].'</p></td><td></td><td><p>Adresse:'.$gym['gym_address'].'</p></td><td><p>Manager:'.$gym['gym_manager'].'</p></td></tbody></table>';