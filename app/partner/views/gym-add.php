<?=
require_once '../../database/security.php';
require_once '../../database/security.php';
?>


<div class="add-new-partner">
    <form class="form" method="POST" action="./query/addGymReq.php">
    <?php if(isset($php_errormsg)){echo '<p>'.$php_errormsg.'</p>';}?>
        <h1>Ajouter une salle</h1>
        <p>Tous les champs sont requis</p>
                    
        <label for="user_name"></label>
            <input type="text" class="form-input-add" name="user_name" placeholder="Nom de la salle" required>
        <label for="user_email"></label>
            <input type="text" class="form-input-add" name="user_email" placeholder="Email de la franchise" required>
        <label for="user_pwd"></label>
            <input type="password" class="form-input-add" name="user_pwd" placeholder="Mot de passe de la franchise" required>
        <label for="gym_manager"></label>
            <input type="text" class="form-input-add" name="gym_manager" placeholder="Nom du manager" required>
        <label for="gym_address"></label>
            <input type="text" class="form-input-add" name="gym_address" placeholder="Adresse de la salle" required>
            
        <h3>Ajouter les permissions de la salle:</h3>
        <div id="permissionsList">
        <?=require_once '../query/myPermsReq.php';?>
        </div>

        <button type="submit" class="button" id="btn-add-gym">Valider</a></button>
    </form>

