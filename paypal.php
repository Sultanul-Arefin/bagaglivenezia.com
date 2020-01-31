<?php include 'header.php'; ?>

<?php 
// Include configuration file 
include_once 'config.php'; 
 
// Include database connection file 
include_once 'dbConnect.php'; 
?>

<?php

    $amount = $_POST['amount'];
    $dropDate = $_POST['dropDate'];
    $dropTime = $_POST['dropTime'];
    $pickDate = $_POST['pickDate'];
    $pickTime = $_POST['pickTime'];
    $email = $_POST['email'];
    $name = $_POST['name'];
    $status = "1";
    $luggage = $_POST['luggage'];
    $location = $_POST['location'];

    $insert = $db->query("INSERT INTO products(name,price,status,dropDate,dropTime,pickDate,pickTime,email,location,luggage) VALUES('".$name."','".$amount."','".$status."','".$dropDate."','".$dropTime."','".$pickDate."','".$pickTime."','".$email."','".$location."','".$luggage."')"); 

    // echo $amount."<br>".$dropDate."<br>".$dropTime."<br>".$pickDate."<br>".$pickTime;exit();

?>

<div class="container">
    <?php 
        // Fetch products from the database 
        $results = $db->query("SELECT * FROM products WHERE id = (SELECT MAX(id) FROM products)"); 
        while($row = $results->fetch_assoc()){ 
    ?>
        <div class="pro-container">
            <div class="row justify-content-center">
                <div class="col-md-9">
                    
    				
                    <!-- PayPal payment form for displaying the buy button -->
                    <form action="<?php echo PAYPAL_URL; ?>" method="post">
                        <!-- Identify your business so that you can collect the payments. -->
                        <input type="hidden" name="business" value="<?php echo PAYPAL_ID; ?>">
    					
                        <!-- Specify a Buy Now button. -->
                        <input type="hidden" name="cmd" value="_xclick">
    					
                        <!-- Specify details about the item that buyers will purchase. -->
                        <input type="hidden" name="item_name" value="<?php echo $row['name']; ?>">
                        <input type="hidden" name="item_number" value="<?php echo $row['id']; ?>">
                        <input type="hidden" name="amount" value="<?php echo $amount; ?>">
                        <input type="hidden" name="currency_code" value="<?php echo PAYPAL_CURRENCY; ?>">
    
                        <input type="hidden" name="on2"  value="Drop Date">
                        <input type="hidden" name="os2" value="<?= $_POST["dropDate"] ?>">
                        <input type="hidden" name="on3"  value="Drop Time">
                        <input type="hidden" name="os3" value="<?= $_POST["dropTime"] ?>">
                        <input type="hidden" name="on4"  value="Pick Date">
                        <input type="hidden" name="os4" value="<?= $_POST["pickDate"] ?>">
                        <input type="hidden" name="on5"  value="Pick Time">
                        <input type="hidden" name="os5" value="<?= $_POST["pickTime"] ?>">
                        <input type="hidden" name="on6"  value="Email">
                        <input type="hidden" name="os6" value="<?= $_POST["email"] ?>">
                        <input type="hidden" name="on7"  value="Luggage">
                        <input type="hidden" name="os7" value="<?= $_POST["luggage"] ?>">
                        <input type="hidden" name="on8"  value="Location">
                        <input type="hidden" name="os8" value="<?= $_POST["location"] ?>">
    
                        <!-- <input type="hidden" name="dropDate" value="<?php echo $dropDate; ?>">
                        <input type="hidden" name="dropTime" value="<?php echo $dropTime; ?>">
                        <input type="hidden" name="pickDate" value="<?php echo $pickDate; ?>">
                        <input type="hidden" name="pickTime" value="<?php echo $pickTime; ?>"> -->
    					
                        <!-- Specify URLs -->
                        <input type="hidden" name="return" value="<?php echo PAYPAL_RETURN_URL; ?>">
                        <input type="hidden" name="cancel_return" value="<?php echo PAYPAL_CANCEL_URL; ?>">
                        <input type="hidden" name="notify_url" value="<?php echo PAYPAL_NOTIFY_URL; ?>">
    					
                        <!-- Display the payment button. -->
                        <!-- <input type="image" name="submit" border="0" src="https://www.paypalobjects.com/en_US/i/btn/btn_buynow_LG.gif"> -->
                        
                        <div style="font-family: 'Source Sans Pro', sans-serif; background: #f3f2f2; padding: 70px; margin-top:50px; border: 1px solid #dce0e0; color: #565a5c; font-size: 20px; line-height:35px;">
                            <h3>Kuddus Luggage Storage Venice</h3>
                            <strong>Name: <?php echo $row['name']; ?></strong><br>
                            <strong>Price: <?php echo '€'.$amount.' '.PAYPAL_CURRENCY; ?></strong><br>
                            <strong>Drop Date: <?php echo $dropDate; ?></strong><br>
                            <strong>Drop Time: <?php echo $dropTime; ?></strong><br>
                            <strong>Pick Date: <?php echo $pickDate; ?></strong><br>
                            <strong>Pick Time: <?php echo $pickTime; ?></strong><br>
                            <strong>Email: <?php echo $email; ?></strong>
                            
                            <br><br>

                            <h4 class="text-center">By clicking on Pay button, you will redirect to Paypal for confirm your payment.</h4>
                            <br> <br>
        
                            <button type="submit" class="btn btn-info btn-lg btn-block">Pay €<?= $amount; ?> through Paypal</button>
                            
                        </div>
                        
                    </form>
                </div>
            </div>
        </div>
    <?php } ?>
</div>