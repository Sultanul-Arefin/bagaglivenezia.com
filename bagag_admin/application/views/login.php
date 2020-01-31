

	<body class="hold-transition login-page">
		<div class="login-box">
		    <div class="login-logo">
		        <a href="#"><b>Bagaglivenezia.com Admin</b></a>
		    </div>
    <!-- /.login-logo -->
    		<div class="login-box-body">
        		<p class="login-box-msg">Sign in to start your session</p>

        		<?php if($this->session->flashdata('success')): ?>
		            <h3 style="color:green;">
		              <?= $this->session->flashdata('success'); ?>
		            </h3>
	          	<?php endif ?>
	          	<?php if($this->session->flashdata('invalid')): ?>
	           		 <h3 style="color:red;">
	              	 <?= $this->session->flashdata('invalid'); ?>
	            	 </h3>
	            <?php endif ?>

	            

        		
            	<?php echo form_open('welcome/check_login', array(
											            		'name' => 'registration_form',
											            		'id' => 'registration_form',
											            		'class' => 'form_horizontal'
											            		)); ?>
		            <div class="form-group">
						<label for="email">Email:</label>
						<input type="text" name="email" class="form-control" value="<?php echo $this->input->post('email'); ?>" />
						<span style="color: red;"><?php echo form_error('email');  ?></span>
					</div>
					<div class="form-group">
						<label for="password">Password:</label>
						<input type="password" name="password" class="form-control"  />
						<span style="color: red;"><?php echo form_error('password');  ?></span>
					</div>
		            <div class="row">
		                <div class="col-xs-12">
		                    <input class="btn btn-success" type="submit">
		                </div>
		                <!-- /.col -->
		            </div>
        		<!-- </form> -->
        		<?php echo form_close(); ?>


        	<div class="social-auth-links text-center">
	            <p>- OR -</p>
	            <!-- <a href="#" class="btn btn-block btn-social btn-facebook btn-flat"><i class="fa fa-facebook"></i> Sign in using
	                Facebook</a> -->
	            <a href="#" class="btn btn-block btn-social btn-google btn-flat"><i class="fa fa-google-plus"></i> Sign in using
	                Google+</a>
	        </div>
	        <!-- /.social-auth-links -->

	        

    		</div>
		</div>
	</body>
