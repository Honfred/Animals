<?php

$id = isset($_GET['id']) ? $_GET['id'] : null;
$mysql = new mysqli('localhost','root','root','animals');
$mysql->query("UPDATE `animal` SET 
  `vid` = '".$_POST['vid']."',
  `voler` = '".$_POST['voler']."',
  `ves` = '".$_POST['ves']."',
  `rost` = '".$_POST['rost']."',
  `name` = '".$_POST['name']."',
  `year` = '".$_POST['year']."',
  `pol` = '".$_POST['pol']."',
  `poroda` = '".$_POST['poroda']."',
  `okras` = '".$_POST['okras']."',
  `sherst` = '".$_POST['sherst']."',
  `yxo` = '".$_POST['yxo']."',
  `hwost` = '".$_POST['hwost']."',
  `razmer` = '".$_POST['razmer']."',
  `primeti` = '".$_POST['primeti']."',
  `haracter` = '".$_POST['haracter']."',
  `metka` = '".$_POST['metka']."',
  `data_sterl` = '".$_POST['data_sterl']."',
  `fio_vrach` = '".$_POST['fio_vrach']."',
  `social` = '".$_POST['social']."',
  `nomer_act` = '".$_POST['nomer_act']."',
  `data_post` = '".$_POST['data_post']."',
  `sostoyanie` = '".$_POST['sostoyanie']."'
  WHERE `id`=$id");
header('Location: /хакатон/admin.php ');

?>
