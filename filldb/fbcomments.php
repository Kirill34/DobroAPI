<?php
function fill()
{
    $curl = curl_init();

    curl_setopt_array($curl, array(
        CURLOPT_URL => 'http://dobroapi/api/event/add.php',
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_ENCODING => '',
        CURLOPT_MAXREDIRS => 10,
        CURLOPT_TIMEOUT => 0,
        CURLOPT_FOLLOWLOCATION => true,
        CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
        CURLOPT_CUSTOMREQUEST => 'POST',
        CURLOPT_POSTFIELDS => array('name' => 'Курсы футбольных комментаторов', 'description' => 'Узнайте подробнее о профессии футбольного комментатора. Узнайте, как работают комментаторы и получите шанс освоить интересную профессию.', 'address' => 'Г. Волгоград, городской стадион', 'photo_url' => 'http://dobroapi/imgs/fcomm.png', 'datetime' => '2021-' . rand(10, 12) . '-' . rand(10, 28) . ' '.rand(11,20).':00:00', 'subjecttag' => '4', 'leveltag' => '10'),
    ));

    $response = curl_exec($curl);

    curl_close($curl);
    echo $response."<br>";
}
for ($i=0; $i<8; $i++)
{
    fill();
}