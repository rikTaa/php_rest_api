<?php
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');
header('Access-Control-Allow-Methods: PUT');
header('Access-Control-Allow-Headers: Access-Control-Allow-Headers, Content-Type, Access-Control-Allow-Methods, Authorization, X-Requested-With');

include_once('../../config/Database.php');
include_once('../../models/Post.php');


$database = new Database();
$db = $database->connect();

$post = new Post($db);

$data = json_decode(file_get_contents("php://input"));

$post->id = $data->id;

$post->person_id = $data->person_id;
$post->firstName = $data->firstName;
$post->lastName = $data->lastName;
$post->gender = $data->gender;
$post->faction = $data->faction;
$post->playedBy = $data->playedBy;
$post->seasons = $data->seasons;
$post->currentStatus = $data->currentStatus;
//$post->img = $data->img;

if ($post->update()) {
    echo json_encode(
        array('message' => 'Post updated')
    );
} else {
    echo json_encode(
        array('message' => 'Post not updated')
    );
}
