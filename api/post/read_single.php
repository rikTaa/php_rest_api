<?php
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');

include_once('../../config/Database.php');
include_once('../../models/Post.php');


$database = new Database();
$db = $database->connect();

$post = new Post($db);

$post->id = isset($_GET['id']) ? $_GET['id'] : die();

$post->read_single();

$post_arr = array(
    'id' => $post->id,
    'person_id' => $post->person_id,
    'firstName' => $post->firstName,
    'lastName' => $post->lastName,
    'gender' => $post->gender,
    'faction' => $post->faction,
    'playedBy' => $post->playedBy,
    'seasons' => $post->seasons,
    'currentStatus' => $post->currentStatus,
    //'img' => $post->img

);

print_r(json_encode($post_arr));
