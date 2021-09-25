<?php
require_once '../event_status.php';
$link=mysqli_connect("localhost", "root","","dobrodetyam") or die("Не удапось подключится к БД");
$child_id=$_POST['childid'];
$event_id=$_POST['eventid'];
mysqli_query($link,"INSERT INTO child_event SET child_id=$child_id, event_id=$event_id, status=".WANTS_TO_EVENT);
?>