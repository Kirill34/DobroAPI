<?php

if (isset($_GET["id"]))
{
    $id = $_GET["id"];
    if ($id==1)
        $query="SELECT event.name, event.description, event.photo_url, event.datetime, event.address, subject_tag.name, level_tag.name FROM event INNER JOIN event_level_tag ON event.id=event_level_tag.event_id INNER JOIN event_subject_tag ON event.id=event_subject_tag.event_id INNER JOIN level_tag ON level_tag.id=event_level_tag.level_tag_id INNER JOIN subject_tag ON subject_tag.id=event_subject_tag.subject_tag_id WHERE (level_tag.id=10 AND subject_tag.id=4) OR (event.id=53 OR event.id=54)  ORDER BY event.id DESC LIMIT 20";
    else if ($id==3)
        $query="SELECT event.name, event.description, event.photo_url, event.datetime, event.address, subject_tag.name, level_tag.name FROM event INNER JOIN event_level_tag ON event.id=event_level_tag.event_id INNER JOIN event_subject_tag ON event.id=event_subject_tag.event_id INNER JOIN level_tag ON level_tag.id=event_level_tag.level_tag_id INNER JOIN subject_tag ON subject_tag.id=event_subject_tag.subject_tag_id WHERE (level_tag.id=7 AND subject_tag.id=4) OR (event.id=55 OR event.id=56 OR event.id=57)  ORDER BY event.id DESC LIMIT 20";
    else
        $query = "SELECT event.name, event.description, event.photo_url, event.datetime, event.address, subject_tag.name, level_tag.name FROM event INNER JOIN event_level_tag ON event.id=event_level_tag.event_id INNER JOIN event_subject_tag ON event.id=event_subject_tag.event_id INNER JOIN level_tag ON level_tag.id=event_level_tag.level_tag_id INNER JOIN subject_tag ON subject_tag.id=event_subject_tag.subject_tag_id LIMIT 20";
}
else {
    $id = $_GET["id"];
    $query = "SELECT event.name, event.description, event.photo_url, event.datetime, event.address, subject_tag.name, level_tag.name FROM event INNER JOIN event_level_tag ON event.id=event_level_tag.event_id INNER JOIN event_subject_tag ON event.id=event_subject_tag.event_id INNER JOIN level_tag ON level_tag.id=event_level_tag.level_tag_id INNER JOIN subject_tag ON subject_tag.id=event_subject_tag.subject_tag_id LIMIT 20";
}
require_once $_SERVER['DOCUMENT_ROOT'].'/config.php';
$link=mysqli_connect(HOST, USER,PASSWORD,DBNAME) or die("???? ?????????????? ?????????????????????? ?? ????");
$answ=mysqli_query($link,$query);
$events=[];
for ($i=0; $i<$answ->num_rows; $i++) {
    $fa = $answ->fetch_array();
    $events[]=["name" => $fa[0], "description" => $fa[1], "photo_url" => $fa[2], "address" => $fa[3], "subject" => $fa[4], "level" => $fa[5]];
}
shuffle($events);
echo json_encode($events);
?>