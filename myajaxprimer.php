<?php
header('Content-Type: text/html; charset=utf-8');

$user = 'root';
$pass = '';
$db_name = 'robots';
$hostname = 'localhost';

// Создание соединения с базой данных
$conn = mysqli_connect($hostname, $user, $pass, $db_name);
// Проверка соединения
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

// Получение данных из GET-запроса

// получение параметров из GET-запроса
$name = $_GET['name'];
$manufacturer = $_GET['manufacturer'];
$year_of_release = $_GET['year_of_release'];
$country = $_GET['country'];
$flops = $_GET['flops'];
$memory_capacity = $_GET['memory_capacity'];
$storage_capacity = $_GET['storage_capacity'];

// добавление данных в БД
// ...
// (код для добавления данных в БД)

// формирование ответа

// SQL-запрос на вставку данных в таблицы
$sql_supercomputers = "INSERT INTO supercomputers (id, name, manufacturer, year_of_release, country)
VALUES (NULL, '$name', '$manufacturer', $year_of_release, '$country')";

$sql_performance_metrics = "INSERT INTO performance_metrics (id, supercomputer_id, flops, memory_capacity, storage_capacity)
VALUES (NULL, LAST_INSERT_ID(), $flops, $memory_capacity, $storage_capacity)";

if (mysqli_query($conn, $sql_supercomputers) && mysqli_query($conn, $sql_performance_metrics)) {
    echo "Данные успешно добавлены в базу данных";
} else {
    echo "Ошибка: " . mysqli_error($conn);
}

mysqli_close($conn);
?>