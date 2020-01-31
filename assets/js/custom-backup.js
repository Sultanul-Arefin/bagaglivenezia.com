jQuery(document).ready(function($) {

    $("#luggage").on("change", function() {

        $('.bookingSubmit').attr('disabled', false);

        var luggage = $("select[name='luggage']").val();

        var dropDateTime = $("input[name='dropDate']").val() + " " + $("input[name='dropTime']").val();

        var pickDateTime = $("input[name='pickDate']").val() + " " + $("input[name='pickTime']").val();

        var date1 = new Date(dropDateTime);
        var date2 = new Date(pickDateTime);
        var diff = (date1 - date2) / (1000 * 60 * 60 * 24);

        var days = Math.abs(diff);
        var days = Math.ceil(days);

        var price = (days * luggage * 5);

        $(".price").html("$ " + price);
        $(".amount").val(price);
        $(".luggage").val(luggage);

    });

});
