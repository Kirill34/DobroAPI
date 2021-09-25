<?php
$link=mysqli_connect("localhost", "root","","dobrodetyam") or die("Не удапось подключится к БД");
$id=$_GET["id"];
$answ=mysqli_query($link,"SELECT * FROM children WHERE id=$id");
if ($answ->num_rows==1)
{
    $fa=$answ->fetch_array();
    echo json_encode(["name"=>$fa["name"],"secondname"=>$fa["secondname"], "patronic"=>$fa["patronic"], "birthday"=>$fa["birthday"]]);
}
?>