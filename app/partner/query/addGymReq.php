<?php
require_once '../../database/database.php';
require_once '../../database/security.php';

if(isset($_POST)){

    if(!empty( $_POST['user_name']) AND !empty($_POST['user_email']) AND !empty($_POST['user_pwd'])){
        
        $user_name = htmlspecialchars($_POST['user_name']);
        $user_email = htmlspecialchars($_POST['user_email']);
        $user_pwd = htmlspecialchars($_POST['user_pwd']);
        
        $checkIfPartnerExists = $db->prepare('SELECT * FROM jim_users WHERE user_name = ?');
        $checkIfPartnerExists->execute(array($user_name));
        $partnerInfos = $checkIfPartnerExists->fetch();
        $row = $checkIfPartnerExists->rowCount();

        if($row == 0){

            $user_pwd = hash('sha256', $_POST['user_pwd']);

            $addPartner = $db->prepare('INSERT INTO jim_users (`user_name`, user_role, user_active, user_email, user_pwd) VALUES (?,?,?,?,?)');
            $addPartner->execute(array($user_name, 'gym', true, $user_email, $user_pwd));

            if(!empty( $_POST['gym_manager']) AND !empty( $_POST['gym_address'])){
                
                $user_name = htmlspecialchars($_POST['user_name']);
                $gym_manager = htmlspecialchars($_POST['gym_manager']);
                $gym_address = htmlspecialchars($_POST['gym_address']);
                $gym_owner = htmlspecialchars($_SESSION['user_name']);

                $addGym = $db->prepare('INSERT INTO gym (`user_name`, gym_manager, gym_address, gym_owner) VALUES (?,?,?,?)');
                $addGym->execute(array($user_name, $gym_manager, $gym_address, $gym_owner));


                    if(!empty($_POST['perm'])) {

                        $addUserPerm = $db->prepare('INSERT INTO grant_permissions (`user_name`) VALUES (?)');
                        $addUserPerm->execute(array($user_name));

                        $permArrays = $_POST['perm'];

                        foreach ($permArrays as $permArray => $value) {
                    
                            $addPerm = $db->prepare('UPDATE grant_permissions SET '.$value.'="1" WHERE user_name="'.$user_name.'"');
                            $addPerm->execute();
                        }

                    header('Location: ../dashboard-partner.php');

                    } else {
                    $php_errormsg = "Votre salle a au moins une option dans son contrat.";
                    }
            } else {
            $php_errormsg = "Une erreur est survenue.";
            }
        } else {
            $php_errormsg = "Cette salle existe déjà.";
        }
    }
} 