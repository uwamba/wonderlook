<?php
use Noweh\TwitterApi\Client;


$settings['account_id']="29297701";
$settings['access_token']="1832316580367101952-086JOIsC68S6URwbag3AD8C21SbSKi";
$settings['access_token_secret']="DWM3sRwDw83Q8BbjG0gPTOSYctnJ5ptUs3kf2zYMYupRK";
$settings['consumer_key']="RDUIMYQv1GAaV4jkEgeC5Pily";
$settings['consumer_secret']="Y9L4EqTPXmrIDjNA9n1xpB07cNUkCH7h0SwIjhEryXsadkNc0s";
$settings['bearer_token']="AAAAAAAAAAAAAAAAAAAAACUMvwEAAAAAKE49HQ5L2k%2F9XOWntud2FAXuftQ%3DaMGCIPou1QDBMpkGmeUy9vm0s9CtKpNFeS7eIWQy55XfYYyAcH";
$settings['free_mode'] = true;

$client = new Client($settings);
$file="post_img/post2.jpeg";
$file_data = base64_encode(file_get_contents($file));
$media_info = $client->uploadMedia()->upload($file_data);
$return = $client->tweet()->create()
    ->performRequest([
        'text' => 'Wanderfull Day... ', 
        "media" => [
            "media_ids" => [
                (string)$media_info["media_id"]
            ]
        ]
    ])
;

?>