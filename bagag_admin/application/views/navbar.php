<header class="main-header">
    <!-- Logo -->
    <a href="http://www.bagaglivenezia.com" class="logo">
     
      <span class="logo-mini"><b>A</b>LT</span>
      
      <span class="logo-lg"><b>Bagaglivenezia.com</b></span>
    </a>
    
    <nav class="navbar navbar-static-top">
      
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </a>

      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          
          <li class="dropdown messages-menu">
            
            
          
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <img src="<?php echo base_url().'assets/logo-baggagelivanzia.png' ?>" class="user-image" alt="User Image">
              <span class="hidden-xs"><?= $this->session->userdata('logged') ?></span>
            </a>
            <ul class="dropdown-menu">
              
              <li class="user-header">
                <img src="<?php echo base_url().'assets/logo-baggagelivanzia.png' ?>" class="img-circle" alt="User Image">

                <p>
                  <?= $this->session->userdata('logged') ?>
                </p>
              </li>
              <li class="user-footer">
                
                  <a href="<?php echo base_url().'welcome/logout' ?>" class="btn btn-info btn-flat">Sign out</a>
                
              </li>
              
             
              
            </ul>
          </li>
          
        </ul>
      </div>
    </nav>
  </header>