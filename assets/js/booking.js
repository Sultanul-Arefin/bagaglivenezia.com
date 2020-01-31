/**
 * Booking and Calculation
 * @version 1.0.0
 * @author      Rakibul Hasan Khan   hrakib89@gmail.com
 * @license     free                 Open to use and modify
 */
$(function(){
    "use strict";
    var drop, pick, bagz, priceTotal;

    // Event handling with selector.
    // Calling the main method.
    $('#dropDate, #pickDate, #luggage').change(priceCalculate);

    /**
     * Calculate and Update Total price based on the selection. 
     * @return {number} Total Price
     */
    function priceCalculate(){
        /**
         * Determine the Drop Date.
         * @param  {String} $('input[name 
         * @return {Number}               Return Formated date
         */
        if( $('input[name="dropDate"]') != '' ){
            drop = $('input[name="dropDate"]').val();
            drop = formatDate(drop);
        }

        /**
         * Determine the Pick Date.
         * @param  {String} $('input[name 
         * @return {Number}               Return Formated date
         */
        if( $('input[name="dropDate"]') != '' ){
            pick = $('input[name="pickDate"]').val();
            pick = formatDate(pick);
        }

        /**
         * Determine the number of Luggage.
         * @param  {String} $('select[name 
         * @return {Number}               Number of Luggages.
         */
        if( $('select[name="luggage"]') !== '' ){
            bagz = $('select[name="luggage"]').val();
        }

        /**
         * Calling priceTotal method
         * @type {Number}
         */
        priceTotal = totalPrice(drop, pick, bagz);

        /**
         * Determine the type of price. Append price to html elements.
         * @param  {Boolean} !isNaN(priceTotal) determine NaN
         * @return {[type]}                    [description]
         */
        if( !isNaN(priceTotal) ){
            console.log(priceTotal);
            $('.price').html('&#8364; '+priceTotal);
            $('.amount').val(priceTotal);
        }
    }

    /**
     * Format dates for the counting
     * @param  {string} d Date to format
     * @return {number}   Return 'number' format of the date
     */
    function formatDate( d ){
        date = new Date(d);
        date = date / (1000 * 60 * 60 * 24);
        date = Math.abs(Math.ceil(date));
        return date;
    }

    /**
     * Calculate total price of the service
     * @param  {number} d1 Drop date
     * @param  {number} d2 Pickup date
     * @param  {string} l  Number of luggage
     * @return {number}    Total price of the service
     */
    function totalPrice(d1, d2, l){
        var totalDay = (d2-d1)+1;
        var price = 4*totalDay*l+.50;
        return price;
    }
});
