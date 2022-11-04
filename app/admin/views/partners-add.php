<?=require_once '../../database/security.php';?>

<div class="add-new-partner">
    <form class="form" method="POST" action="./query/addPartnerReq.php">
        <h1>Ajouter une franchise</h1>
        <p>Tous les champs sont requis</p>
                    
        <label for="user_name"></label>
            <input type="text" class="form-input-add" name="user_name" placeholder="Nom de la franchise" required>
        <label for="user_email"></label>
            <input type="text" class="form-input-add" name="user_email" placeholder="Email de la franchise" required>
        <label for="user_pwd"></label>
            <input type="password" class="form-input-add" name="user_pwd" placeholder="Mot de passe de la franchise" required>

        <h3>Options liées à cette franchise:</h3>

        <input type="checkbox" class="checkbox" name="perm[]" value="perm1"/>Envoyer une newsletter<br/>
        <input type="checkbox" class="checkbox" name="perm[]" value="perm2"/>Organiser un évènement sportif<br/>
        <input type="checkbox" class="checkbox" name="perm[]" value="perm3"/>Vendre des boissons<br/>
        <input type="checkbox" class="checkbox" name="perm[]" value="perm4"/>Vendre du matériel sportif<br/>
        <input type="checkbox" class="checkbox" name="perm[]" value="perm5"/>Section VIP<br/>
        <input type="checkbox" class="checkbox" name="perm[]" value="perm6"/>Commercialiser des abonnements Premium<br/>
        <input type="checkbox" class="checkbox" name="perm[]" value="perm7"/>Gérer le planning des équipes<br/>
        <button type="submit" class="button">Valider</a></button>
    </form>
</div>

