<div class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  
  
  <aside class="main-sidebar">
    
    <section class="sidebar">
     
      <div class="user-panel">
        <div class="pull-left image">
          <img src="<?php echo base_url().'assets/logo-baggagelivanzia.png' ?>" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p><?= $this->session->userdata('logged') ?></p>
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>
      <!-- search form -->
      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
              <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
        </div>
      </form>
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">MAIN NAVIGATION</li>
        <li>
            <a href="<?php echo base_url().'welcome'; ?>"><i class="fa fa-circle-o"></i>Home</a>
        </li>
        <li>
            <a href="<?php echo base_url().'welcome/site_info'; ?>"><i class="fa fa-circle-o"></i>Site Info</a>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-dashboard"></i> <span>Orders</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="<?php echo base_url().'welcome/santalucia'; ?>"><i class="fa fa-circle-o"></i> Santa Lucia</a></li>
            <li><a href="<?php echo base_url().'welcome/piazzaleroma'; ?>"><i class="fa fa-circle-o"></i> Piazalle Roma</a></li>
          </ul>
        </li>
        
        
        <li class="treeview">
          <a href="#">
            <i class="fa fa-pie-chart"></i>
            <span>Payments</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
              <li><a href="<?php echo base_url().'welcome/all_payments'; ?>"><i class="fa fa-circle-o"></i>All</a></li>
            <!--<li><a href="../charts/chartjs.html"><i class="fa fa-circle-o"></i> Santa Lucia</a></li>-->
            <!--<li><a href="../charts/morris.html"><i class="fa fa-circle-o"></i> Piazalle Roma</a></li>-->
          </ul>
        </li>
        
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>

  
  <div class="content-wrapper">
    
    <section class="content-header">
      <h1>Baggaglivenezia.com Admin Panel</h1>
      <h2>Shop On/Off Panel</h2>
      
    </section>

    
    <section class="content">

      <div class="row">
        <div class="col-md-3">

          <form method="post" action="<?php echo base_url().'welcome/site_info_update'; ?>" style="float:right; margin-bottom:20px">
                <input type="hidden" name="id" value="<?= $site_info->id; ?>">
                <select name="shop">
                    <option value="on" <?php echo ($site_info->shop == 'on') ? 'selected' : '' ?>>On</option>
                    <option value="off" <?php echo ($site_info->shop == 'off') ? 'selected' : '' ?>>Off</option>
                </select>
                <textarea style="margin-top: 10px; margin-bottom: 10px;" name="reason" cols="30" rows="10"><?= $site_info->reason ?></textarea>
                <button type="submit" class="btn btn-info">Update</button>
            </form>

          
        </div>
        
      </div>
      

    </section>
   
  </div>
 
  
  <div class="control-sidebar-bg"></div>
</div>
</div>