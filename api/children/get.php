<?php
$link=mysqli_connect("localhost", "root","","dobrodetyam") or die("Не удапось подключится к БД");
$id=$_GET["id"];
$answ=mysqli_query($link,"SELECT *, ( (YEAR(CURRENT_DATE) - YEAR(birthday)) - /* step 1 */ (DATE_FORMAT(CURRENT_DATE, '%m%d') < DATE_FORMAT(birthday, '%m%d')) /* step 2 */ ) AS age FROM children WHERE id=$id");

if ($answ->num_rows==1)
{
    $fa=$answ->fetch_array();
    echo json_encode(["name"=>$fa["name"],"secondname"=>$fa["secondname"], "patronic"=>$fa["patronic"], "birthday"=>$fa["birthday"], "age"=>$fa["age"]]);
}
?>