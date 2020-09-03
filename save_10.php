<?php
session_start();

$pdo = new PDO('mysql:host=localhost; dbname=task_10_db', 'root', '');


$txt = $_POST['txt_tb'];

$sql = "SELECT * FROM texts WHERE txt_tb=:txt_tb";
$smtm = $pdo->prepare($sql);
$smtm->execute([':txt_tb' => $txt]);
$task = $smtm->fetch(PDO::FETCH_ASSOC);

if (!empty($task)){
    $message = "запись существует";
    $_SESSION['flashMessage'] = $message;

    header("Location: /run/task_10.php");
    exit();
}

$sql = "INSERT INTO texts (txt_tb) VALUES (:txt_tb)";
$smtm = $pdo->prepare($sql);
$smtm->execute([':txt_tb' => $txt]);

header("Location: /run/task_10.php");