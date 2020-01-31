<?php
$mysqli = mysqli_connect("localhost","bagagliv_orderUser","bagagliv_orderUser","bagagliv_order");



$id = $_GET['id'];

$result = mysqli_query($mysqli, "DELETE FROM products WHERE id=$id");

header("Location:piazalleroma.php");

