<?php

$data = [
    "rName" => $_POST['name'],
    "lastName" => $_POST['lastName'],
    "secondName" => $_POST['secondName'],
    "gender" => $_POST['gender'],
    "birth" => $_POST['birth'],
    "faculty" => $_POST['faculty'],
    "groupe" => $_POST['groupe'],
    "phone" => $_POST['phone'],
    "parentsPhone" => $_POST['parentsPhone'],
    "room" => $_POST['room']
];

$pdo = new PDO('mysql:host=localhost;dbname=register', 'mysql', 'mysql');
$sql = 'INSERT INTO students (firstName, lastName, secondName, gender, dateOfBirth, phoneNumber, parentsPhoneNumber, faculty, groupe, room) VALUES (:rName, :lastName, :secondName, :gender, :birth, :phone, :parentsPhone, :faculty, :groupe, :room)';
$statement = $pdo->prepare($sql);
$result = $statement->execute($data);
var_dump($result);
?>