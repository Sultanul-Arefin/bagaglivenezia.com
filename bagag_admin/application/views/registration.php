

	<div class="hold-transition login-page">
		<div class="login-box">
		    <div class="login-logo">
		        <a href="#"><b>Admin</b>LTE</a>
		    </div>
    <!-- /.login-logo -->
    		<div class="login-box-body">
        		<p class="login-box-msg">Register as a new member</p>

        		<?php echo form_open('users/check_registration', array(
											            		'name' => 'registration_form',
											            		'id' => 'registration_form',
											            		'class' => 'form_horizontal'
											            		)); ?>
					<div class="form-group">
						<label for="name">Name:</label>
						<input type="text" name="name" class="form-control" value="<?php echo $this->input->post('name'); ?>" />
						<span style="color: red;"><?php echo form_error('name');  ?></span>
					</div>						            		
		            <div class="form-group">
						<label for="email">Email:</label>
						<input type="text" name="email" class="form-control" value="<?php echo $this->input->post('email'); ?>" />
						<span style="color: red;"><?php echo form_error('email');  ?></span>
					</div>
					<div class="form-group">
						<label for="phone">Phone:</label>
						<input type="text" name="phone" class="form-control" value="<?php echo $this->input->post('phone'); ?>" />
						<span style="color: red;"><?php echo form_error('phone');  ?></span>
					</div>
					<div class="form-group">
						<label for="password">Password:</label>
						<input type="password" name="password" class="form-control"  />
						<span style="color: red;"><?php echo form_error('password');  ?></span>
					</div>
					<div class="form-group">
						<label for="password">Confirm Password:</label>
						<input type="password" name="c_password" class="form-control" value="<?php echo $this->input->post('password'); ?>" />
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

	        <a href="#">I forgot my password</a><br>
	        <a href="<?php echo base_url().'welcome/login' ?>" class="text-center">Login as a member</a>

    		</div>
		</div>
	</div>
