<?php
require_once '../../database/security.php';
require_once '../query/listPermReq.php';

foreach($perms as $perm): ?>
    <div class="list-options">
        <div class="card-option" id="<?=$perm['permission_nb']?>">
            <div class="option-name"><?= $perm['permission_name'] ?></div>
        </div>
    </div>
<?php endforeach; ?>