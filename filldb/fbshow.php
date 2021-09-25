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
        CURLOPT_POSTFIELDS => array('name' => 'Футбольный матч', 'description' => 'Всех вас ждем на яркий, незабываемый футбоьный матч!!! Будет очень жаркая игра!!!', 'address' => 'Г. Волгоград, городской стадион', 'photo_url' => 'http://site.ru/img.png', 'datetime' => '2021-' . rand(10, 12) . '-' . rand(10, 28) . ' '.rand(11,20).':00:00', 'subjecttag' => '4', 'leveltag' => '4'),
    ));

    $response = curl_exec($curl);

    curl_close($curl);
    echo $response."<br>";
}
for ($i=0; $i<20; $i++)
{
    fill();
}