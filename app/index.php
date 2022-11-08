<?php
require 'database/database.php';
require 'router/routes.php';
?>

<!DOCTYPE html>
<html lang="fr">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>La Salle de Jim</title>
    <link rel="shortcut icon" type="image/ico" href="../public/assets/img/favicon.ico"/> 
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link
      href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;700&display=swap" rel="stylesheet"/>
    <link rel="stylesheet" href="../public/assets/styles-login.css" />
  </head>

  <body>
    <main>
      <div class="video-bloc">
        <video class="video" autoplay loop muted><source src="../public/assets/img/loginvideo.mp4" type="video/mp4"></video>
      <div class="login-card">
        <div>
          <img src="../public/assets/img/logo.png" alt="Logo de la salle de Jim" class=logo>
        </div>
        
        <form method="POST">
          <?php if(isset($php_errormsg)){echo '<p>'.$php_errormsg.'</p>';}?>

          <div class="form-label"> 
            <label for="email"></label>
            <input type="email" class="form-input" name="user_email" id="user_email"  placeholder="Adresse email" required>
          </div>
          <div class="form-label">
            <label for="password"></label>
            <input type="password" class="form-input" name="user_pwd" id="user_pwd" placeholder="Mot de passe" required>
          </div>
          <div class="form-label">
            <button type="submit" class="form-button" name="validate-login">CONNEXION</button>
          </div>
        </form>
      </div>
      </div>
    </main>
  </body>