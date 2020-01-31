<?php 
// Connect with the database 
$db = new mysqli(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME); 
// $db = new mysqli(localhost, fahimroc_code439, 1521543901670505780, fahimroc_payments); 
// $db = new mysqli("localhost", "fahimroc_code439", "1521543901670505780", "fahimroc_payments"); 
 
// Display error if failed to connect 
if ($db->connect_errno) { 
    printf("Connect failed: %s\n", $db->connect_error); 
    exit(); 
}