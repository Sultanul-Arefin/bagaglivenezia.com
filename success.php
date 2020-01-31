<?php include 'header.php'; ?>

<?php 

    use PHPMailer\PHPMailer\PHPMailer;
    include_once "PHPMailer/PHPMailer.php";
	include_once "PHPMailer/Exception.php";

?>

<?php 
// Include configuration file 
include_once 'config.php'; 
 
// Include database connection file 
include_once 'dbConnect.php'; 
 
// If transaction data is available in the URL 
if(!empty($_GET['item_number']) && !empty($_GET['tx']) && !empty($_GET['amt']) && !empty($_GET['cc']) && !empty($_GET['st']) ){ 

    // if(!empty($_GET['item_number']) && !empty($_GET['tx']) && !empty($_GET['amt']) && !empty($_GET['cc']) && !empty($_GET['st']) && !empty($_GET['dropDate']) && !empty($_GET['dropTime']) && !empty($_GET['pickDate']) && !empty($_GET['pickTime']) ){ 
    // Get transaction information from URL 
    $item_number = $_GET['item_number'];  
    $txn_id = $_GET['tx']; 
    $payment_gross = $_GET['amt']; 
    $currency_code = $_GET['cc']; 
    $payment_status = $_GET['st']; 
    // $dropDate = $_GET['dropDate'];
    // $dropTime = $_GET['dropTime'];
    // $pickDate = $_GET['pickDate'];
    // $pickTime = $_GET['pickTime'];
     
    // Get product info from the database 
    $productResult = $db->query("SELECT * FROM products WHERE id = ".$item_number); 
    $productRow = $productResult->fetch_assoc(); 
     
    // Check if transaction data exists with the same TXN ID. 
    $prevPaymentResult = $db->query("SELECT * FROM payments WHERE txn_id = '".$txn_id."'"); 
 
    if($prevPaymentResult->num_rows > 0){ 
        $paymentRow = $prevPaymentResult->fetch_assoc(); 
        $payment_id = $paymentRow['payment_id']; 
        $payment_gross = $paymentRow['payment_gross']; 
        $payment_status = $paymentRow['payment_status']; 

    }else{ 
        // Insert tansaction data into the database 
        $insert = $db->query("INSERT INTO payments(item_number,txn_id,payment_gross,currency_code,payment_status) VALUES('".$item_number."','".$txn_id."','".$payment_gross."','".$currency_code."','".$payment_status."')"); 
        // $insert = $db->query("INSERT INTO payments(item_number,txn_id,payment_gross,currency_code,payment_status,dropDate,dropTime,pickDate,pickTime) VALUES('".$item_number."','".$txn_id."','".$payment_gross."','".$currency_code."','".$payment_status."','".$dropDate."','".$dropTime."','".$pickDate."','".$pickTime."')"); 
        $payment_id = $db->insert_id;
        // $payment_id = mysqli_insert_id($db);
        // echo $payment_id;
        // exit();
    } 
} 

// mail("sultanularefinmail@gmail.com", "Ke khobor tomader", "Hello everyone"); 
?>

<div class="container">
    <div class="status">
        <?php if(!empty($payment_id)){ ?>
        <div class="row justify-content-center">
            <div class="col-md-9 mb-5">
                <div style="font-family: 'Source Sans Pro', sans-serif; background: #f3f2f2; padding: 70px; margin-top:50px; border: 1px solid #dce0e0; color: #565a5c; font-size: 20px; line-height:35px;">
                    <h1 class="text-center">Your Payment has been Successful</h1>
                    <br>
                    <h2 class="text-center">We sent a mail to you</h2>
                    <br><br>
        			
                    <h3><strong>Payment Information</strong></h3>
                    <p><b>Reference Number:</b> <?php echo $payment_id; ?></p>
                    <p><b>Transaction ID:</b> <?php echo $txn_id; ?></p>
                    <p><b>Paid Amount:</b> <?php echo $payment_gross; ?></p>
                    <p><b>Payment Status:</b> <?php echo $payment_status; ?></p>
                    <!-- p><b>Drop Date:</b> <?php echo $dropDate; ?></p>
                    <p><b>Drop Time:</b> <?php echo $dropTime; ?></p>
                    <p><b>Pick Date:</b> <?php echo $pickDate; ?></p>
                    <p><b>Pick Time:</b> <?php echo $pickTime; ?></p> --><br><br>
        			
                    <h3><strong>Product Information</strong></h3>
                    <p><b>Booking Number: </b> <?php echo $productRow['id']; ?></p>
                    <p><b>Name:</b> <?php echo $productRow['name']; ?></p>
                    <p><b>Price:</b> <?php echo $productRow['price']; ?></p>
                    <p><b>Drop Date:</b> <?php echo $productRow['dropDate']; ?></p>
                    <p><b>Drop Time:</b> <?php echo $productRow['dropTime']; ?></p>
                    <p><b>Pick Date:</b> <?php echo $productRow['pickDate']; ?></p>
                    <p><b>Pick Time:</b> <?php echo $productRow['pickTime']; ?></p>
                    <p><b>Email:</b> <?php echo $productRow['email']; ?></p>
                    <p><b>Location:</b> <?php echo $productRow['location']; ?></p>
                    <p><b>Luggage:</b> <?php echo $productRow['luggage']; ?></p>
                </div>
            </div>
        </div>
            
            <?php
            
                $name = $productRow['name'];
                $email = $productRow['email'];
                $dd = $productRow['dropDate'];
                $dt = $productRow['dropTime'];
                $pd = $productRow['pickDate'];
                $pt = $productRow['pickTime'];
                $lag = $productRow['luggage'];
                $loc = $productRow['location'];
                $total = $productRow['price'];
                $id = $productRow['id'];
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
                
                
                
                if($loc=="Piazzale Roma (Rio Terà Sant’Andrea 468b, 30135 Venice)"){
                    $mobile = " +39 340 2354837";
                    $bagagmail = "pdkuddus@gmail.com";
                    $location_email = "pdkuddus@gmail.com";
                    $map = "<a href='https://www.google.com/maps/dir/45.4378213,12.3172259/45.4378214,12.317225/@45.4378422,12.3171806,21z'> Piazzale Roma (Rio Terà Sant’Andrea 468b, 30135 Venice)</a>";
                    // $sql = "INSERT INTO piazzaleroma_payments ". "(dropDate,dropTime,pickDate,pickTime,luggage,location,name,email,total) "."VALUES ". "('$dropdate','$dt','$pickdate','$pt','$lag','$loc','$name', '$email','$total')";
                } elseif($loc=="Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)"){
                    $mobile = "+39 041 4588723";
                    $bagagmail = "baggaglikuddus@gmail.com";
                    $location_email = "baggaglikuddus@gmail.com";
                    $map = "<a href='https://www.google.com/maps/place/Calle+de+la+Misericordia,+366b,+30121+Venezia+VE,+Italy/@45.442244,12.3228445,21z/data=!4m15!1m9!4m8!1m3!2m2!1d12.3227832!2d45.4421232!1m3!2m2!1d12.3229548!2d45.4422863!3m4!1s0x477eb1c0c170faed:0x83c463cb941c0bc2!8m2!3d45.4422863!4d12.3229548'> Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia) </a>";
                    // $sql = "INSERT INTO santalucia_payments ". "(dropDate,dropTime,pickDate,pickTime,luggage,location,name,email,total) "."VALUES ". "('$dropdate','$dt','$pickdate','$pt','$lag','$loc','$name','$email','$total')";
                }
    
    
                
                // $headers = "MIME-Version: 1.0" . "\r\n";
                // $headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
                // $headers .= 'From: info@bagaglivenezia.com' . "\r\n" .
                //   'Reply-To: info@bagaglivenezia.com' . "\r\n" ;
                  

                $htmlContent = '  
                <html>
                <body>
                    <div style="width: 600px; background: #f1f1f1; border: 25px solid #ccc; padding: 20px;">
                        <img src="http://www.bagaglivenezia.com/assets/img/logo-baggagelivanzia.png" alt="" width="80px;" style="padding: 15px">
                        <h3>The cheapest luggage storage in Venice</h3>       
                        <p>
                            Dear Kuddus,<br>
                            This is the automatic booking notification. Here the details:<br>
                            Name: '.$name.'<br>
                            Email: '.$email.'<br>            
                        </p>       
                        <div style="width:100%; display: grid;">
                            <table>
                                <tr style="background: #ddd;">
                                    <td>Drop Date</td>
                                    <td>Drop Time</td>
                                    <td>Pick Date</td>
                                    <td>Pick Time</td> 
                                    <td>Luggage</td>
                                    <td>Location</td>
                                    <td>Price</td>
                                </tr>
                                <tr>
                                    <td>'.$dd.'</td>
                                    <td>'.$dt.'</td>
                                    <td>'.$pd.'</td>
                                    <td>'.$pt.'</td> 
                                    <td style="text-align: center;font-weight: 700;">'.$lag.'</td>
                                    <td>'.$loc.'</td>
                                    <td>€'.$total.'</td>
                                </tr>
                            </table>
                            
                            <p>Thanks for booking with us.</p>
                        </div>
                        <hr>
                        <div style="text-align: center; ">
                            <p><strong>Kuddus Luggage Storage Venice</strong>
                            <br>We are open 08AM to 08PM
                            </p>
                            <p>Rio Terà Sant’Andrea 468b, 30135 Venice (VE)<br>
                            Calle de la Misericordia 366b, 30121 Venezia (VE)</p>
                        </div>
                    </div>
                </body>
                </html>  
                ';
            
                $htmlContentClient = '  
                <html>
                <body>
                    <div style="width: 600px; background: #f1f1f1; border: 25px solid #ccc; padding: 20px;">
                        <img src="http://www.bagaglivenezia.com/assets/img/logo-baggagelivanzia.png" alt="" width="80px;" style="padding: 15px">
                        <h1>Thank you<br>FOR BOOKING ON KUDDUS LUGGAGE STORAGE VENICE</h1>
                        <p>An email has been sent to '.$bagagmail.'</p>
                        <br>
                        <h3>The cheapest luggage storage in Venice</h3>       
                        <p>
                            Dear '.$name.',<br>
                            This is the automatic booking notification. Here the details:<br>
                            Email: '.$email.'<br>      
                            Your Booking Number is:<b> '.$last_id.'</b><br>
                            Customer Name: '.$name.'<br>
                        </p>       
                        <div style="width:100%; display: grid;">
                            <table>
                                <tr style="background: #ddd;">
                                    <td>Drop Date</td>
                                    <td>Drop Time</td>
                                    <td>Pick Date</td>
                                    <td>Pick Time</td> 
                                    <td>Luggage</td>
                                    <td>Location</td>
                                    <td>Price</td>
                                </tr>
                                <tr>
                                    <td>'.$dd.'</td>
                                    <td>'.$dt.'</td>
                                    <td>'.$pd.'</td>
                                    <td>'.$pt.'</td> 
                                    <td style="text-align: center;font-weight: 700;">'.$lag.'</td>
                                    <td>'.$loc.'</td>
                                    <td>€'.$total.'</td>
                                </tr>
                            </table>
                        </div>
                        <hr>
                        <div>
                        <h3>GO HERE TO STORE YOUR BAGS</h3>
                        <strong>Shop name:</strong> PORTABAGAGLI DA KUDDUS<br>
                        
                        <strong>Address: </strong> '.$map.'<br>
                        </div>
                        <hr>
                        <h3>SHOP CONTACT DETAILS</h3>
                        <strong>Telephone Number:</strong> '.$mobile.'<br>
                        <strong>Email:<strong> '.$location_email.'
                        <hr>
                        <h3>ADDITIONAL INFORMATION</h3>
                        <p>Please, once at the shop make sure to fill in correctly the check-in form and save your receipt until pick-up.</p>
                        <hr>
                        <p>Thanks for booking with us.</p>
                        <div style="text-align: center; ">
                            <p><strong>Kuddus Luggage Storage Venice</strong>
                            <br>We are open 08AM to 08PM
                            </p>
                            <p>Rio Terà Sant’Andrea 468b, 30135 Venice (VE)<br>
                            Calle de la Misericordia 366b, 30121 Venezia (VE)</p>
                        </div>
                    </div>
                </body>
                </html>  
                ';
            
                $sub = "Kuddus Luggage Storage Vencie - New Order - # $last_id";
                if( $loc=="Piazzale Roma (Rio Terà Sant’Andrea 468b, 30135 Venice)" ){
                    $bagagmail = "sultanularefinmail@gmail.com";
                    // $bagagmail = "pdkuddus@gmail.com";
                } elseif( $loc=="Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)" ){
                    $bagagmail = "sultanularefinmail@gmail.com";
                    // $bagagmail = "baggaglikuddus@gmail.com";
                }
            
                
                
                $mail = new PHPMailer();


            	//we need to create an instance of PHPMailer
            	// $mail = new PHPMailer();
            
            	//set where we are sending email
            	$mail->addAddress($email);
            
            	//set who is sending an email
            	$mail->setFrom("info@bagaglivenezia.com");
            	// $mail->setFrom($email);
            
            	//set subject
            	$mail->Subject = $sub;
            
            	//type of email
            	$mail->isHTML(true);
            
            	//write email
            	$mail->Body = $htmlContentClient;
            	
            	if(!$mail->send())
            		echo "Something wrong";
            	else
            		echo "Mail Sent";
            
            
                $mail = new PHPMailer();
                
                //set where we are sending email
            	$mail->addAddress($bagagmail);
            
            	//set who is sending an email
            	$mail->setFrom("info@bagaglivenezia.com");
            	// $mail->setFrom($email);
            
            	//set subject
            	$mail->Subject = $sub;
            
            	//type of email
            	$mail->isHTML(true);
            
            	//write email
            	$mail->Body = $htmlContent;
                
                
            	//send an email
            	if(!$mail->send())
            		echo "Something wrong";
            	else
            		echo "Mail Sent";
            		
            	$mail = new PHPMailer();
                
                //set where we are sending email
            	$mail->addAddress("sultanularefinmail@gmail.com");
            
            	//set who is sending an email
            	$mail->setFrom("info@bagaglivenezia.com");
            	// $mail->setFrom($email);
            
            	//set subject
            	$mail->Subject = $sub;
            
            	//type of email
            	$mail->isHTML(true);
            
            	//write email
            	$mail->Body = $htmlContent;
                
                
            	//send an email
            	if(!$mail->send())
            		echo "Something wrong";
            	else
            		echo "Mail Sent";
                            
              
            ?>
            <?php }else{ ?>
                <h1 class="error">Your Payment has failed</h1>
            <?php } ?>
    </div>
    
</div>

<?php include 'footer.php'; ?>