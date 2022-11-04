<?php

$queryPerm = "SELECT `perm1`,`perm2`,`perm3`,`perm4`,`perm5`,`perm6`,`perm7` FROM `grant_permissions` WHERE `user_name` = '$user_name'";
$listPerm = $db->prepare($queryPerm);
$listPerm->execute();
$perms = $listPerm->fetch(PDO::FETCH_ASSOC);  

$stringPerm = null;
foreach ($perms as $key1 => $value1) {
   if ($value1 == true) {
   $stringPerm .= "'".$key1."', ";
   }
};

$stringPerm = substr($stringPerm, 0, -2);
$queryNamePermActive = "SELECT `permission_name` FROM `permissions` WHERE permission_nb IN ($stringPerm)";
$permActive = $db->prepare($queryNamePermActive);
$permActive->execute();
$displayPerm = $permActive->fetchAll(PDO::FETCH_ASSOC);

$displayFinale = null;

foreach($displayPerm as $key => $value) {
    foreach ($value as $key2 => $value2) { 
   $displayFinale .= $value2.'<br/>';
    };
};