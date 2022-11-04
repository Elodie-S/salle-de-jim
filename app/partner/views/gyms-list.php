<?php
require_once '../../database/security.php';
require_once '../../database/database.php';

$user_owner = $_SESSION['user_name'];

$queryGym = "SELECT tj.user_id, tj.user_name, tj.user_email, tj.user_active, tg.gym_manager, tg.gym_address FROM gym AS TG INNER JOIN jim_users AS TJ ON tg.`user_name` = tj.`user_name` WHERE gym_owner='".$user_owner."'";

$listGym = $db->prepare($queryGym);
$listGym->execute();
$gyms = $listGym->fetchAll(PDO::FETCH_ASSOC);  

echo '<table id="table-partner"><tbody id="body-table">';

foreach($gyms as $gym) {

    $user_name = $gym['user_name'];

    require '../views/gyms-perms.php';

    echo '<tr class="card">
    <td><p class="user_name">'.$gym['user_name'].'<br/>Manager:'.$gym['gym_manager'].'<br/>Adresse:'.$gym['gym_address'].'</p></td>
    <td class="user_email"><a href="mailto:'.$gym['user_email'].'"><img class="svg-email" src="../../../public/assets/img/email.png" alt="" title="contacter"/></a></td>
    <td class="perm-info">'.$displayFinale.'</td>
    <td class="user_delete"><a href="./query/deleteGymReq.php?user_id='.$gym['user_id'].'" onclick="javascript:confirmationDelete($(this));return false;"><img class="svg-delete" src="../../../public/assets/img/delete.png" alt="" title="supprimer"/></a></td>';
    if($gym['user_active']=="1"){ echo '<td class="user_active"><a onclick="javascript:confirmationDisable($(this));return false;" href=./query/deactivateGym.php?user_id='.$gym['user_id'].'><img class="svg-switch" src="../../../public/assets/img/on.png" alt="" title="salle active"/></a></td></tr>';
    } else { echo '<td class="user_active"><a onclick="javascript:confirmationEnable($(this));return false;" href=./query/activateGym.php?user_id='.$gym['user_id'].'><img class="svg-switch" src="../../../public/assets/img/off.png" alt="" title="salle inactive"/></a></td></tr>';};
};

echo '</tbody></table>';