<?php

if(!empty($_POST)){
        
    if(!filter_var($_POST["user_email"], FILTER_VALIDATE_EMAIL)){
            $php_errormsg = "email non valide";
    }

    require_once "../app/database/database.php";

    $sql = "SELECT * FROM `jim_users` WHERE `user_email` = :user_email";
    $query = $db->prepare($sql);
    $query->bindValue(":user_email", $_POST["user_email"], PDO::PARAM_STR);
    $query->execute();
    $user = $query->fetch();

    if(!$user) {
        $php_errormsg = "L'utilisateur n'existe pas";
    }

    $hash = hash('sha256', $_POST['user_pwd']);

    if ($user && $user['user_pwd'] == $hash){

        session_start();
        $_SESSION['auth'] = true;
        $_SESSION['user_id'] = $user['user_id'];
        $_SESSION['user_name'] = $user['user_name'];
        $_SESSION['user_active'] = $user['user_active'];
        $_SESSION['user_email'] = $user['user_email'];
        $_SESSION['user_role'] = $user['user_role'];

        if (!$_SESSION['user_active'] == false) {
        
        if($_SESSION['user_role'] == 'admin'){

            header('Location: ../../app/admin/dashboard-admin.php');

        } else if ($_SESSION['user_role'] == 'partner'){

            header('Location: ../../app/partner/dashboard-partner.php');

        } else if ($_SESSION['user_role'] == 'gym'){

            header('Location: ../../app/gym/dashboard-gym.php');

        } else {
            
            $php_errormsg = "Une erreur est survenue";
        
        }
        } else {$php_errormsg = "Votre compte a été désactivé";}
    } else {
        
        $php_errormsg = "Vos identifiants sont incorrects";
    }

}
