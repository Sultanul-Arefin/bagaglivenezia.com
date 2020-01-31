    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
    <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />



            <div class="form-submit-area search-car bg-white">
                <div class="form-content">
                    <div class="inner-box-tab">
                        <!-- info@bagaglivenezia.it -->
                        <h4 align="center"><span>pay online and get 20% discount</span><br>€4 instead of €5 luggage per day</h4>
                        
                        
                        
                        <form action="paypal.php" method="post" accept-charset="utf-8" name="frmPayPal" id="form">    
                            <div class="input-info-search">
                                <div class="field-row flex">
                                    <div class="two-column">
                                        <label>Location</label>
                                        <div class="input-form select-box">
                                            <select id="location" name="location" required>
                                                <option value="" disabled selected>Choose Store</option>
                                                <option value="Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)">Santa Lucia</option>
                                                <option value="Piazzale Roma (Rio Terà Sant’Andrea 468b, 30135 Venice)">Piazzale Roma</option>
                                            </select>
                                        </div>
                                        <label>Drop-Off</label>
                                        <div class="box-date">
                                            <div class="input-form date" data-date="" data-date-format="mm/dd/yyyy" data-link-field="dtp_input2" data-link-format="yyyy/mm/dd">
                                                <input name="dropDate" id="dropDate" size="16" type="text" placeholder="Your drop date" required class="readonly" autocomplete="off">
                                                <span class="add-on"><i class="icon-remove"></i></span>
                                                <span class="add-on"><i class="icon-th"></i></span>
                                            </div>
                                        </div>
                                        <div class="box-time select-box input-form">
                                            <div class="controls input-append date  form_time" data-date="" data-date-format="H:ii p" data-link-field="dtp_input3" data-link-format="H:ii">
                                                <input name="dropTime" id="dropTime" size="16" type="text" placeholder="time" required class="readonly" autocomplete="off">
                                                <span class="add-on"><i class="icon-remove"></i></span>
                                                <span class="add-on"><i class="icon-th"></i></span>
                                            </div>
                                        </div>
                                        <!--<div class="box-time select-box input-form">-->
                                        <!--    <select id="dropTime" name="dropTime" required="required">-->
                                        <!--            <option value="" disabled selected>Time</option>-->
                                        <!--            <option value="8:00">8:00</option>-->
                                        <!--            <option value="9:00">9:00</option>-->
                                        <!--            <option value="10:00">10:00</option>-->
                                        <!--            <option value="11:00">11:00</option>-->
                                        <!--            <option value="12:00">12:00</option>-->
                                        <!--            <option value="13:00">13:00</option>-->
                                        <!--            <option value="14:00">14:00</option>-->
                                        <!--            <option value="15:00">15:00</option>-->
                                        <!--            <option value="16:00">16:00</option>-->
                                        <!--            <option value="17:00">17:00</option>-->
                                        <!--            <option value="18:00">18:00</option>-->
                                        <!--            <option value="19:00">19:00</option>-->
                                        <!--            <option value="20:00">20:00</option>-->
                                        <!--    </select>-->
                                        <!--    <span class="add-on"><i class="icon-remove"></i></span>-->
                                        <!--        <span class="add-on"><i class="icon-th"></i></span>-->
                                            <!--<div class="controls input-append date  form_time" data-date="" data-date-format="H:ii p" data-link-field="dtp_input3" data-link-format="H:ii">-->
                                            <!--    <input name="dropTime" id="dropTime" size="16" type="text" placeholder="time" required="required" readonly>-->
                                            <!--    <span class="add-on"><i class="icon-remove"></i></span>-->
                                            <!--    <span class="add-on"><i class="icon-th"></i></span>-->
                                            <!--</div>-->
                                        <!--</div>-->
                                    </div>
                                    <div class="two-column">
                                        <label>Pick-Up</label>
                                        <div class="box-date">
                                            <div class="input-form date" data-date="" data-date-format="mm/dd/yyyy" data-link-field="dtp_input2" data-link-format="yyyy/mm/dd">
                                                <input name="pickDate" id="pickDate" size="16" type="text" placeholder="Your pickup date" required class="readonly" autocomplete="off">
                                                <span class="add-on"><i class="icon-remove"></i></span>
                                                <span class="add-on"><i class="icon-th"></i></span>
                                            </div>
                                        </div>
                                        <div class="box-time select-box input-form">
                                            <div class="controls input-append date  form_time" data-date="" data-date-format="H:ii p" data-link-field="dtp_input3" data-link-format="H:ii">
                                                <input name="pickTime" id="pickTime" size="16" type="text" placeholder="time" required class="readonly" autocomplete="off">
                                                <span class="add-on"><i class="icon-remove"></i></span>
                                                <span class="add-on"><i class="icon-th"></i></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="field-row flex">
                                    <div class="two-column ctm-colloum">
                                        <p>Luggage</p>
                                    </div>
                                    <div class="two-column ctm-colloum">
                                        <div class="input-form select-box">
                                            <select id="luggage" name="luggage" required>
                                                <option value="" disabled selected>0</option>
                                                <?php
                                                for ($i=1; $i <= 20 ; $i++) {
                                                echo '<option value="'.$i.'">'.$i.'</option>';
                                                }
                                                ?>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <!--<div class="field-row flex">-->
                                <!--    <div class="two-column ctm-colloum">-->
                                <!--        <p>Location</p>-->
                                <!--    </div>-->
                                <!--    <div class="two-column ctm-colloum">-->
                                <!--        <div class="input-form select-box">-->
                                <!--            <select id="location" name="location" required="required">-->
                                <!--                <option value="" disabled selected>Choose Store</option>-->
                                <!--                <option value="Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)">Santa Lucia</option>-->
                                <!--                <option value="Piazzale Roma (Rio Terà Sant’Andrea 468b, 30135 Venice)">Piazzale Roma</option>-->
                                <!--            </select>-->
                                <!--        </div>-->
                                <!--    </div>-->
                                <!--</div>-->
                                <div class="field-row flex">
                                    <div class="two-column ctm-colloum">
                                        <p>Name</p>
                                    </div>
                                    <div class="two-column ctm-colloum">
                                        <input type="text" id="toName" name="name" required>
                                    </div>
                                </div>
                                <div class="field-row flex">
                                    <div class="two-column ctm-colloum">
                                        <p>Email</p>
                                    </div>
                                    <div class="two-column ctm-colloum">
                                        <input type="email" id="toConfirmMail" name="email" required>
                                    </div>
                                </div>
                            </div>
                            <div class="submit-search center">
                                <div class="total">
                                    <span>Total </span>
                                    <span id="price" class="price">€0</span>
                                    <input type="hidden" class="amount" name="amount" value="1">
                                </div>
                                *Extra €0.50 charged for Credit Card
                                
                                <div class="button-submit">
                                    <input value="Booking Now" class="bookingSubmit" type="submit" name="button_pressed">
                                </div>
                            </div>              
                        </form>    
                    </div>
                </div>
            </div>


<script>
var today = new Date(new Date().getFullYear(), new Date().getMonth(), new Date().getDate());
    $('#dropDate').datepicker({
        minDate: today,
        maxDate: function () {
            return $('#pickDate').val();
        }
    });
    $('#pickDate').datepicker({
        minDate: function () {
            return $('#dropDate').val();
        }
    });
    $('vb')
</script>
<script>
    $(".readonly").on('keydown paste', function(e){
        e.preventDefault();
    });
</script>
