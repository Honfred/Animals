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
          <a href="aplication-admin.php" class="main-menu__btn btns-admin">Просмотреть заявки</a>
          <a href="admin.php" class="main-menu__btn btns-admin">Вернуться к панели</a>
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

    <div class="add-cards">
        <form action="new.php" method="post">
      <div class="container">
        <div class="cards">
          <div class="cards__top">
            <p class="cards__top-head">Карточка учета животного №</p>
            <div class="cards__top-date">
              <p>г. Москва </p>
              <p>


                <div class="input-form input-left">
                    <input readonly value="<?php
                    $data = date('l jS \of F Y h:i:s A');
                    echo($data);
                    ?>"  class="form-control" name="data_create" id="data_create" </input>
                </div>
              </p>
            </div>



            <p class="cards__top-data">Основные сведения: </p>
              <div class="input-form">
                  <input type="text" class="form-control" name="voler" id="voler" placeholder="Номер вольера">
              </div>
          </div>
          <div class="cards__data">
            <img src="images/loupe.svg" alt="Фото животного" width="350" height="300">
            <div class="cards__data-info">
              <div class="cards__data-flex">

                <div class="input-form">
                  <input type="text" class="form-control" name="vid" id="vid" placeholder="Вид животного">
                </div>

                <div class="input-form">
                  <input type="text" class="form-control" name="ves" id="ves" placeholder="Вес">
                </div>
                <div class="input-form">
                  <input type="text" class="form-control" name="rost" id="rost" placeholder="Рост">
                </div>
              </div>
              <div class="cards__data-flex">
                <div class="input-form">
                  <input type="text" class="form-control" name="name" id="name" placeholder="Кличка">
                </div>
                <div class="input-form">
                  <input type="text" class="form-control" name="year" id="year" placeholder="Возраст">
                </div>
                <div class="input-form">
                  <input type="text" class="form-control" name="pol" id="pol" placeholder="Пол">
                </div>
              </div>
              <div class="cards__data-flex">
                <div class="input-form">
                  <input type="text" class="form-control" name="poroda" id="poroda" placeholder="Порода">
                </div>
                <div class="input-form">
                  <input type="text" class="form-control" name="okras" id="okras" placeholder="Окрас">
                </div>
              </div>
              <div class="cards__data-flex">
                <div class="input-form">
                  <input type="text" class="form-control" name="sherst" id="sherst" placeholder="Шерсть">
                </div>
                <div class="input-form">
                  <input type="text" class="form-control" name="yxo" id="yxo" placeholder="Уши">
                </div>
              </div>
              <div class="cards__data-flex">
                <div class="input-form">
                  <input type="text" class="form-control" name="hwost" id="hwost" placeholder="Хвост">
                </div>
                <div class="input-form">
                  <input type="text" class="form-control" name="razmer" id="razmer" placeholder="Размер">
                </div>
              </div>
              <div class="input-form">
                <input type="text" class="form-control" name="primeti" id="primeti" placeholder="Особые приметы">
              </div>
              <div class="input-form">
                <input type="text" class="form-control" name="haracter" id="haracter" placeholder="Характер">
              </div>
            </div>
          </div>
          <div class="cards__data-info-2">
              <div class="input-form">
                  <input type="text" class="form-control" name="img" id="img" placeholder="Название файла">
              </div>
            <div class="input-form">
              <input type="text" class="form-control" name="metka" id="metka" placeholder="Идентификационная метка">
            </div>
            <div class="input-form">
              <input type="text" class="form-control" name="data_sterl" id="data_sterl" placeholder="Дата стерилизации">
            </div>
            <div class="input-form">
              <input type="text" class="form-control" name="fio_vrach" id="fio_vrach" placeholder="ФИО врача">
            </div>
            <div class="input-form">
              <input type="text" class="form-control" name="social" id="social" placeholder="Социализация">
            </div>
            <div class="input-form">
              <input type="text" class="form-control" name="nomer_act" id="nomer_act" placeholder="Номер акта поступления">
            </div>
            <div class="input-form">
              <input type="text" class="form-control" name="data_post" id="data_post" placeholder="Дата акта поступления">
            </div>
            <div class="input-form">
              <input type="text" class="form-control" name="sostoyanie" id="sostoyanie" placeholder="Сведения о состоянии здоровья">
            </div>
          </div>
        </div>
          <button class="animals__icons-btn" type="submit" >Сохранить</button>
          </form>
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
</body>

</html>
