<?php 

require_once '../../database/database.php';

                $queryPerm = "SELECT permission_name, permission_nb FROM `permissions`";
                $listPerm = $db->prepare($queryPerm);
                $listPerm->execute();
                $perms = $listPerm->fetchAll();   