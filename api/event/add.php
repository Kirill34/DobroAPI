<?php
require_once $_SERVER['DOCUMENT_ROOT'].'/config.php';
$link=mysqli_connect(HOST, USER,PASSWORD,DBNAME) or die("Не удапось подключится к БД");
$name = $_POST['name'];
$description=$_POST['description'];
$address=$_POST['address'];
$datetime=$_POST['datetime'];
$photourl=$_POST['photourl'];
$level_tag_id=$_POST['leveltag'];
$subject_tag_id=$_POST['subjecttag'];
mysqli_query($link, "INSERT INTO event SET name='$name', description='$description', address='$address', photo_url='$photourl', datetime='$datetime'") or die(mysqli_error($link));
$answ=mysqli_query($link, "SELECT id FROM event ORDER BY id DESC LIMIT 1");
$id=$answ->fetch_array()[0];
mysqli_query($link, "INSERT INTO `event_level_tag` SET event_id=$id, level_tag_id=$level_tag_id");
mysqli_query($link,"INSERT INTO event_subject_tag SET event_id=$id, subject_tag_id=$subject_tag_id");
echo $id;
?>