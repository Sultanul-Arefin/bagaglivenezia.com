<?php

$mysqli = mysqli_connect("localhost","bagagliv_orderUser","bagagliv_orderUser","bagagliv_order");

$result = mysqli_query($mysqli, 'SELECT * FROM products where location="Piazzale Roma (Rio Terà Sant’Andrea 468b, 30135 Venice)" ORDER BY id DESC');

?>

<!DOCTYPE html>
<html>
<head>
	<title>Homepage</title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
	<style>
	    tr, td, th {
            border: 1px solid;
            padding: 0 10px;
        }
	</style>
</head>
<body>
    
<div class="container">
    <div class="row">
        <div class="col-12">
            <ul class="nav nav-tabs my-3" id="myTab" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="data.php" role="tab" aria-controls="home" aria-selected="true">All</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="profile-tab" data-toggle="tab" href="santalucia.php" role="tab" aria-controls="profile" aria-selected="false">Santa Lucia</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="contact-tab" data-toggle="tab" href="piazalleroma.php" role="tab" aria-controls="contact" aria-selected="false">Piazala Roma</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="other-tab" data-toggle="tab" href="transaction.php" role="tab" aria-controls="other" aria-selected="false">Transaction</a>
                </li>
            </ul>
            <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                    <table width='100%' border=0>
            			<tr bgcolor="#CCCCCC">
            				<th>Booking Number</th>
            				<th>Drop Date</th>
            				<th>Drop Time</th>
            				<th>Pick Date</th>
            				<th>Pick Time</th>
            				<th>Luggage</th>
            				<th>Location</th>
            				<th>Name</th>
            				<th>Email</th>
            				<!--<th>Total Amount</th>-->
            				<th>Total Amount</th>
            				<th>Order Created</th>
            				<th>Action</th>
            			</tr>
            			<?php
            
            			while($res = mysqli_fetch_array($result)){
            			    
            			    $id = $res['id'];
                            if(strlen($id) == 2){
                                $last_id = "1 0000 ".$id;
                            } elseif(strlen($id) == 3){
                                $last_id = "1 000 ".$id;
                            } elseif(strlen($id) == 4){
                                $last_id = "1 00 ".$id;
                            } elseif(strlen($id) == 5){
                                $last_id = "1 0 ".$id;
                            } elseif(strlen($id) == 6){
                                $last_id = "1 ".$id;
                            } elseif(strlen($id) == 7){
                                $last_id = " ".$id;
                            }
                            
                            
            				echo "<tr>";
            				echo "<td>".$last_id."</td>";
            				echo "<td>".$res['dropDate']."</td>";
            				echo "<td>".$res['dropTime']."</td>";
            				echo "<td>".$res['pickDate']."</td>";
            				echo "<td>".$res['pickTime']."</td>";
            				echo "<td>".$res['luggage']."</td>";
            				echo "<td>".$res['location']."</td>";
            				echo "<td>".$res['name']."</td>";
            				echo "<td>".$res['email']."</td>";
            				echo "<td>".$res['price']."</td>";
            				echo "<td>".$res['order_created_at']."</td>";
            				// echo "<td>".$res['id']."</td>";
                            echo "<td><a href=\"deleteorder_piazalleroma.php?id=$res[id]\"onClick=\"return confirm('Are you sure you want to cancel this booking?')\">Cancel</a></td>";            				
            			}
            
            			?>
            			
            		</table>
                </div>
               
                
            </div>
        </div>
    </div>
</div>

</body>
</html>