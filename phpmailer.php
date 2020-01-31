

<?php
	use PHPMailer\PHPMailer\PHPMailer;
	include_once "PHPMailer/PHPMailer.php";
	include_once "PHPMailer/Exception.php";
	// require 'phpmailer/src/Exception.php';
	// require 'phpmailer/src/PHPMailer.php';
	// require 'phpmailer/src/SMTP.php';

	$mail = new PHPMailer();


	//we need to create an instance of PHPMailer
	// $mail = new PHPMailer();

	//set where we are sending email
	$mail->addAddress('fahimsultan4@gmail.com');

	//set who is sending an email
	$mail->setFrom('sultanularefinmail@gmail.com');
	// $mail->setFrom($email);

	//set subject
	$mail->Subject = "Test email";

	//type of email
	$mail->isHTML(true);

	//write email
	$mail->Body = "<p>this is our email body</p><br><br><a href='www.google.com'>Google</a>";

	//send an email
	if(!$mail->send())
		echo "Something wrong";
	else
		echo "Mail Sent";
?>