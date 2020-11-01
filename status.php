<?php

$id = isset($_GET['id']) ? $_GET['id'] : null;
$mysql = new mysqli('localhost', 'root', 'root', 'animals');
$mysql->query("UPDATE `applic` SET `status` = 1 WHERE `id`=$id");
//header('Location: /хакатон/aplication-admin.php')
?>
