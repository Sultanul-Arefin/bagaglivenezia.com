jQuery(document).ready(function($) {

$("#toConfirmMail").on('keyup',function(){
    $("#returnUrl").val($("#returnUrl").attr('data-value')+$("#toConfirmMail").val())
})
// var dropDate =	$("input[name='dropDate']");
// var dropTime =	$("input[name='dropTime']");
// var pickDate = 	$("input[name='pickDate']");
// var pickTime =  $("input[name='pickTime']");
// var luggage  	$("#luggage");

// $('.bookingSubmit').on('click', function() {
    
//     var isValid = true;
//     $(dropDate, dropTime, pickDate, pickTime, luggage).each(function() {
//         if ($.trim($(this).val()) == '') {
//             isValid = false;
//             $(this).css({
//                 "border": "1px solid red",
//             });
            
//             return false;
//         }
//         else {
//             $(this).css({
//                 "border": "",
//             });
//         }
//     });
// });


// 	$("form input[name='dropTime']").prop('disabled', true);
//  	$("form input[name='pickDate']").prop('disabled', true);
//  	$("form input[name='pickTime']").prop('disabled', true);
//  	$("form input[name='luggage']").prop('disabled', true);
  	$(':input[type="submit"]').prop('disabled', true);

// 	$("input[name='dropDate']").keyup(function() {
//         if($(this).val() != '') {
//            $("form input[name='dropTime']").prop('disabled', false);
//         }
//     });


	
    $("#luggage, #dropDate, #pickDate").on("change", function() {

		$(':input[type="submit"]').prop('disabled', false);

        var luggage = $("select[name='luggage']").val();

        var dropDate1 = $("input[name='dropDate']").val();
        var pickDate1 = $("input[name='pickDate']").val();

        var dropDateTime = $("input[name='dropDate']").val();
        //+ " " + $("input[name='dropTime']").val();

        var pickDateTime = $("input[name='pickDate']").val(); 
        //+ " " + $("input[name='pickTime']").val();

        var ddate1 = new Date(dropDateTime);
        var pdate1 = new Date(pickDateTime);
        
        var date1 = ddate1 / (1000 * 60 * 60 * 24);
        var date2 = pdate1 / (1000 * 60 * 60 * 24);

        var munite = (date1 - date2) / (1000 * 60 * 60);
        // var day = (date2 - date1);
        
        var d1 = Math.abs(Math.ceil(date1));
        var d2 = Math.abs(Math.ceil(date2));


        var round_hour = Math.abs(Math.ceil(munite));
        // var days = Math.abs(Math.ceil(day))+1;
        


        
        if (d1 == d2) {
            var price = 4 * luggage + .50;
        } else if (d1 != d2) {
            // var fuday = (days + 1);
            var price = 4 * (d2-d1+1) * luggage + .50;
        }
        
        // if(round_hour === 0){
        //   var price = luggage * 4 + .50;
        // }else if (round_hour > 0  &&  round_hour <= 4){
        //     var price = luggage * 4 + .50;
        // } else if (dropDate1 == pickDate1 && round_hour > 4) {
        //     var price = 4 * luggage + .50;
        // } else if (dropDate1 != pickDate1) {
        //     // var fuday = (days + 1);
        //     var price = 4 * fuday * luggage + .50;
        // }
        
        // else if(round_hour > 4 && round_hour <= 24){
        //     var price = luggage * 4;
        // }else if(round_hour > 24){
        //     var price = days * luggage * 4;
        // }
        


        $(".price").html("€ " + price);
        $(".amount").val(price);
        $(".luggage").val(luggage);

    });
    
    
    
    	
    $("#location").on("change", function() {

		$(':input[type="submit"]').prop('disabled', false);

        var locationval = $("select[name='location']").val();

        $("#locationval").val(locationval);
 

    });

    $("#luggage").on("change", function() {

        $(':input[type="submit"]').prop('disabled', false);

        var luggageval = $("select[name='luggage']").val();

        $("#luggageval").val(luggageval);
 

    });


    $("#dropDate").on("change", function() {
        
        $(':input[type="submit"]').prop('disabled', false);
        
        var dropDateval = $("input[name='dropDate']").val();
        
        $("#dropDateval").val(dropDateval);
    });
    
    $("#dropTime").on("change", function() {
        
        $(':input[type="submit"]').prop('disabled', false);
        
        var dropTimeval = $("input[name='dropTime']").val();
        
        $("#dropTimeval").val(dropTimeval);
    });
    
    $("#pickDate").on("change", function() {
        
        $(':input[type="submit"]').prop('disabled', false);
        
        var pickDateval = $("input[name='pickDate']").val();
        
        $("#pickDateval").val(pickDateval);
    });
    
    $("#pickTime").on("change", function() {
        
        $(':input[type="submit"]').prop('disabled', false);
        
        var pickTimeval = $("input[name='pickTime']").val();
        
        $("#pickTimeval").val(pickTimeval);
    });


    // var d = new Date();
    // if(d.getHours() >= 8 && d.getHours() <= 20 ){
    //     $(".overlaynone").show();
    //     $(".overlaydisplay").hide();
    // }
    // else {  
    //      $(".overlaydisplay").show();
    //     $(".overlaynone").hide();
    // }    
    
});


