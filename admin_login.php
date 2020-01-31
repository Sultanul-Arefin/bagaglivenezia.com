<?php
if(count($_POST)>0) {
	$conn = mysqli_connect("localhost","bagagliv_orderUser","bagagliv_orderUser","bagagliv_order");
	$result = mysqli_query($conn,"SELECT * FROM admin WHERE name='" . $_POST["name"] . "' and password = '". $_POST["password"]."'");
	$count  = mysqli_num_rows($result);
	if($count==0) {
		echo "Invalid Credentials";
	} else {
		header('Location: admin/data/payment_data/santalucia.php');
// 		header('Location: data.php');
	}
}
?>z