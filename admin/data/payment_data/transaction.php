<?php

$mysqli = mysqli_connect("localhost","bagagliv_orderUser","bagagliv_orderUser","bagagliv_order");

$result = mysqli_query($mysqli, "SELECT * FROM payments ORDER BY item_number DESC ");

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
                    <a class="nav-link" id="contact-tab" data-toggle="tab" href="transaction.php" role="tab" aria-controls="contact" aria-selected="false">Transaction</a>
                </li>
            </ul>
            <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                    <table width='100%' border=0>
            			<tr bgcolor="#CCCCCC">
            				<th>Booking Number</th>
            				<th>Transaction ID</th>
            				<th>Payment Amount</th>
            				<th>Currency</th>
            				<th>Payment Status</th>
            				
            				
            			</tr>
            			<?php
            
            			while($res = mysqli_fetch_array($result)){
            				echo "<tr>";
            				
            				$id = $res['item_number'];
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
            				
            				echo "<td>".$last_id."</td>";
            				echo "<td>".$res['txn_id']."</td>";
            				echo "<td>".$res['payment_gross']."</td>";
            				echo "<td>".$res['currency_code']."</td>";
            				echo "<td>".$res['payment_status']."</td>";
            			
            				
            				echo "</tr>";
            			}
            
            			?>
            			
            		</table>
                </div>

                
            			
               
            </div>
        </div>
    </div>
</div>
	    
	    <!--<div class="container-fluid">-->
	    <!--    <div class="row">-->
	    <!--        <div class="col-md-4">-->
	    <!--            <a class="btn btn-primary" href="santalucia.php">Santa Lucia</a>-->
	    <!--        </div>-->
	    <!--        <div class="col-md-4">-->
	    <!--            <a class="btn btn-primary" href="data.php">All</a>-->
	    <!--        </div>-->
	    <!--        <div class="col-md-4">-->
	    <!--            <a class="btn btn-primary" href="piazzaleroma.php">Piazala Roma</a>-->
	    <!--        </div>-->
	    <!--    </div>-->
	    <!--</div>-->


	    
	   
		

</body>
</html>