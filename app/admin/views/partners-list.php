<?php
require_once '../../database/security.php';
require_once '../../database/database.php';

 
$queryPartner = "SELECT `user_id`, `user_name`, user_email, user_active FROM jim_users WHERE `user_id` > 1 AND user_role='partner'";
$listPartner = $db->prepare($queryPartner);
$listPartner->execute();
$partners = $listPartner->fetchAll();  

echo '<table id="table-partner"><tbody id="body-table">';

foreach($partners as $partner) {
    
    $_GET['user_name'] = $partner['user_name'];

    require '../views/partners-perms.php';

    echo '<tr class="card">
    <td><p class="user_name">'.$partner['user_name'].'</p></td>
    <td class="user_email"><a href="mailto:'.$partner['user_email'].'"><img class="svg-email" src="../../../public/assets/img/email.png" alt="" title="contacter"/></a></td>
    <td class="perm-info">'.$displayFinale.'</td>
    <td class="user_delete"><a href="./query/deletePartnerReq.php?user_id='.$partner['user_id'].'" onclick="javascript:confirmationDelete($(this));return false;"><img class="svg-delete" src="../../../public/assets/img/delete.png" alt="" title="supprimer"/></a></td>';
    if($partner['user_active']=="1"){ echo '<td class="user_active"><a onclick="javascript:confirmationDisable($(this));return false;" href=./query/deactivatePartner.php?user_id='.$partner['user_id'].'><img class="svg-switch" src="../../../public/assets/img/switch-on.png" alt="" title="franchise active"/></a></td></tr>';
    } else { echo '<td class="user_active"><a onclick="javascript:confirmationEnable($(this));return false;" href=./query/activatePartner.php?user_id='.$partner['user_id'].'><img class="svg-switch" src="../../../public/assets/img/switch-off.png" alt="" title="franchise inactive"/></a></td></tr>';};
};

echo '</tbody></table>';

