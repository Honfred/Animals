<?php
if (!$_POST['$radio'])
{
    echo 'Пользователь не выбрал ни одну из радиокнопок';
}
elseif (!$_POST['$radio']==1)
{
    echo 'привиты';
}
if (!$_POST['$radio']==0)
{
    echo 'Не привиты';
}

echo "wtf";
?>
