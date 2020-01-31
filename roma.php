<?php /* Template Name: Bus Station */ ?>

<?php include 'header.php'; ?>

<!-- <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous"> -->


<div id="googlemap">
	<iframe src="https://www.google.com/maps/d/embed?mid=1uniRdgDWEOm0YwDO0_Acm4_Hdm1X_OV0" width="640" height="600"></iframe>
</div>

<div id="information">
	<div class="info-card">
		<h4><i class="fas fa-bus-alt"></i> Piazzale Roma</h4><br>
		
		<strong>Address:</strong> Riò terà Sant’Andrea 468B, 30135 Venice <br>
		<strong>Opening hours:</strong> From 09 AM to 08 PM <br><br>

		<h3><strong>Distance:</strong> 5 minutes on foot</h3><br>

		<h4>Contact Us:</h4>
		<p>Call: <a href="tel:+393402354837">+39 340 2354837</a></p>
	</div>
	<div class="bookingform">
		<?php include 'booking.php'; ?>
	</div>
</div>



<div class="container mont-font mt-5">
	<div class="row">
		<div class="col-md-6 my-2">
			<h3>Left Luggage in Piazzale Roma</h3>
			<p class="mfp">Luggage storage at 5 min. from Station<br>
			<strong>Address:</strong> Riò terà Sant’Andrea 468B, 30135 Venice<br>
			<strong>Opening hours:</strong> From 09 AM to 08 PM <br><br></p>

			<h4>HOW TO GET THERE FROM STATION (5 minutes on foot)</h4>

			<p class="mfp">Piazzale Roma is the main road junction to reach the historic core of the city of Venice from the mainland.
				<br>From where you want to go by bus, tram, car, motorboat, vaporetto, people mover, taxi and cruise ship.
				<br>It is located near the garage san Marco entrance, 20 meters to the right and in front of the Sant ‘Andrea park.</p>
		</div>
		<div class="col-md-6 my-2">
			<img src="http://www.bagaglivenezia.com/assets/img/roma.jpg">
		</div>
	</div>
</div>
<div class="container">
	<div class="row my-5">
		<div class="col-md-12">
			<h2 class="text-center">
				BAGGAGE 4 € IN BOOKING | 100% SECURE | 5 MINUTES FROM THE STATION OF PIAZZALE ROMA
			</h2>
		</div>
	</div>		
</div>


<?php include 'footer.php'; ?>