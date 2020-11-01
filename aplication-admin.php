
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link href="css/style.css" rel="stylesheet">
  <link href="css/normalize.css" rel="stylesheet">
  <link href="css/slick.css" rel="stylesheet">
  <link href="css/jquery.fancybox.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;700;900&display=swap" rel="stylesheet">
  <title>Админ панель</title>
</head>

<body>
  <div class="page">
    <div class="panel">
      <div class="container">
        <div class="main-menu">
          <a href="admin.php" class="main-menu__btn btns-admin">Посмотреть животных</a>
          <a href="add.php" class="main-menu__btn btns-admin">Добавить животное</a>
          <div class="col-md-6 mb-3 flex">
              <form class="flex" action="poisk.php" method="post">
                  <div class="input-form">
                      <input type="text" class="form-control" name="poisk"
                             id="poisk">
                  </div>
                  <button class="btns-admin-search" type="submit">Найти</button>
              </form>
            <a href="index.php" class="btns-admin-search">Выход</a>
          </div>
        </div>
      </div>
    </div>
    <?php
    $mysql = new mysqli('localhost','root','root','animals');
    $result = $mysql->query("SELECT * FROM `applic` WHERE `status`=0");

    if (mysqli_num_rows($result) > 0);
    	{
    $applic = mysqli_fetch_array($result);

    do {

      ?>
    <div class="animal-rows">
      <div class="container">
        <div class="animal-rows__row">
          <div class="animal-rows__info">
            <div class="animal-rows__infos">
              <p>Email: <?=$applic["mail"]?></p>
              <p>Номер телефона: <?=$applic["nomer"]?></p>
              <p>Фамилия:<?=$applic["second_name"]?> </p>
              <p>Номер животного: <?=$applic["id_anim"]?></p>
                <p>Дата заявки: <?=$applic["time_create"]?></p>



              <div class="animal-rows__button-more">
              <button id="set_status" data-applic_id="<?=$applic[0]?>" class="btns-admin-search row-btn" type="submit">Одобрить</button>
              </div>

            </div>
          </div>
        </div>
      </div>
    </div>



    </div>





    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    <script type="text/javascript" src="js/jquery-3.5.1.min.js"></script>
    <script type="text/javascript" src="js/slick.min.js"></script>
    <script type="text/javascript" src="js/jquery.fancybox.min.js"></script>
    <script type="text/javascript" src="js/main.js"></script>
  </div>

</body>

</html>
<?php
}
while ($applic = mysqli_fetch_array($result));

}
?>
