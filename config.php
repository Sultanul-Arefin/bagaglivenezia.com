

<?php 
/* 
 * PayPal and database configuration 
 */ 
  
// PayPal configuration 
// define('PAYPAL_ID', 'johnalbert000439-facilitator@gmail.com'); 
define('PAYPAL_ID', 'sb-2jtaa817001@business.example.com'); 
// define('PAYPAL_ID', 'baggaglikuddus@gmail.com'); 
define('PAYPAL_SANDBOX', TRUE); //TRUE or FALSE 
 
// define('PAYPAL_RETURN_URL', 'http://www.bagaglivenezia.com/success.php'); 
define('PAYPAL_RETURN_URL', 'http://localhost:8000/success.php'); 
// define('PAYPAL_CANCEL_URL', 'http://www.bagaglivenezia.com/cancel.php'); 
define('PAYPAL_CANCEL_URL', 'http://localhost:8000/cancel.php'); 
// define('PAYPAL_NOTIFY_URL', 'http://www.bagaglivenezia.com/ipn.php'); 
define('PAYPAL_NOTIFY_URL', 'http://localhost:8000/ipn.php'); 
define('PAYPAL_CURRENCY', 'EUR');  
 
// Database configuration 
define('DB_HOST', 'localhost'); 
define('DB_USERNAME', 'root'); 
// define('DB_PASSWORD', 'bagagliv_orderUser'); 
define('DB_PASSWORD', 'password'); 
define('DB_NAME', 'bagagliv_order'); 
 
// Change not required 
define('PAYPAL_URL', (PAYPAL_SANDBOX == TRUE)?"https://www.sandbox.paypal.com/cgi-bin/webscr":"https://www.paypal.com/cgi-bin/webscr");