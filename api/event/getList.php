<?php
$id = $_GET["id"];
$query="SELECT event.name, event.description, event.photo_url, event.datetime, event.address, subject_tag.name, level_tag.name FROM event INNER JOIN event_level_tag ON event.id=event_level_tag.event_id INNER JOIN event_subject_tag ON event.id=event_subject_tag.event_id INNER JOIN level_tag ON level_tag.id=event_level_tag.level_tag_id INNER JOIN subject_tag ON subject_tag.id=event_subject_tag.subject_tag_id LIMIT 20";
$link=mysqli_connect("localhost", "root","","dobrodetyam") or die("Не удапось подключится к БД");
$answ=mysqli_query($link,$query);
$events=[];
for ($i=0; $i<$answ->num_rows; $i++) {
    $fa = $answ->fetch_array();
    $events[]=["name" => $fa[0], "description" => $fa[1], "photo_url" => $fa[2], "address" => $fa[3], "subject" => $fa[4], "level" => $fa[5]];
}
echo json_encode($events);
?>