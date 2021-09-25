<?php
$link=mysqli_connect("localhost", "root","","dobrodetyam") or die("Не удапось подключится к БД");
$secondName = $_POST['secondname'];
$firstName = $_POST['firstname'];
$patronic = $_POST['patronic'];
$birthday=$_POST['birthday'];
mysqli_query($link, "INSERT INTO children SET name='$firstName', secondname='$secondName', patronic='$patronic', birthday='$birthday'") or die(mysqli_error($link));
$answ=mysqli_query($link, "SELECT id FROM children ORDER BY id DESC LIMIT 1");
echo $answ->fetch_array()[0];
?>