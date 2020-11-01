<?php
$vid = filter_var(trim($_POST['vid']),
    FILTER_SANITIZE_STRING);
$voler = filter_var(trim($_POST['voler']),
    FILTER_SANITIZE_STRING);
$ves = filter_var(trim($_POST['ves']),
    FILTER_SANITIZE_STRING);
$rost = filter_var(trim($_POST['rost']),
    FILTER_SANITIZE_STRING);
$name = filter_var(trim($_POST['name']),
    FILTER_SANITIZE_STRING);
$year = filter_var(trim($_POST['year']),
    FILTER_SANITIZE_STRING);
$pol = filter_var(trim($_POST['pol']),
    FILTER_SANITIZE_STRING);
$poroda = filter_var(trim($_POST['poroda']),
    FILTER_SANITIZE_STRING);
$okras = filter_var(trim($_POST['okras']),
    FILTER_SANITIZE_STRING);
$sherst = filter_var(trim($_POST['sherst']),
    FILTER_SANITIZE_STRING);
$yxo = filter_var(trim($_POST['yxo']),
    FILTER_SANITIZE_STRING);
$hwost = filter_var(trim($_POST['hwost']),
    FILTER_SANITIZE_STRING);
$razmer = filter_var(trim($_POST['razmer']),
    FILTER_SANITIZE_STRING);
$primeti = filter_var(trim($_POST['primeti']),
    FILTER_SANITIZE_STRING);
$haracter = filter_var(trim($_POST['haracter']),
    FILTER_SANITIZE_STRING);

$metka = filter_var(trim($_POST['metka']),
    FILTER_SANITIZE_STRING);
$data_sterl = filter_var(trim($_POST['data_sterl']),
    FILTER_SANITIZE_STRING);
$fio_vrach = filter_var(trim($_POST['fio_vrach']),
    FILTER_SANITIZE_STRING);
$social = filter_var(trim($_POST['social']),
    FILTER_SANITIZE_STRING);
$nomer_act = filter_var(trim($_POST['nomer_act']),
    FILTER_SANITIZE_STRING);
$data_post = filter_var(trim($_POST['data_post']),
    FILTER_SANITIZE_STRING);
$sostoyanie = filter_var(trim($_POST['sostoyanie']),
    FILTER_SANITIZE_STRING);
$data_create = filter_var(trim($_POST['data_create']),
    FILTER_SANITIZE_STRING);
$img = filter_var(trim($_POST['img']),
    FILTER_SANITIZE_STRING);
$mysql = new mysqli('localhost','root','root','animals');
$mysql->query("INSERT INTO `animal` (`vid`, `voler`, `ves`, `rost`, `name`, `year`, 
`pol`, `poroda`, `okras`, `sherst`, `yxo`, `hwost`, `razmer`, `primeti`, `haracter`, `metka`
, `data_sterl`, `fio_vrach`, `social`, `nomer_act`, `data_post`, `sostoyanie`, `data_create`, `img`)
  VALUES ('$vid', '$voler', '$ves', '$rost', '$name', '$year', '$pol', '$poroda'
  , '$okras', '$sherst', '$yxo', '$hwost', '$razmer', '$primeti', '$haracter', '$metka', '$data_sterl'
  , '$fio_vrach', '$social', '$nomer_act', '$data_post', '$sostoyanie', '$data_create', '$img');");
$mysql->close();

header('Location: /хакатон/admin.php');
exit();
?>
