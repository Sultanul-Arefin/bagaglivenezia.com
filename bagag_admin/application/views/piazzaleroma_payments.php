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
        
        <!--<li class="treeview">-->
        <!--  <a href="#">-->
        <!--    <i class="fa fa-share"></i> <span>Multilevel</span>-->
        <!--    <span class="pull-right-container">-->
        <!--      <i class="fa fa-angle-left pull-right"></i>-->
        <!--    </span>-->
        <!--  </a>-->
        <!--  <ul class="treeview-menu">-->
        <!--    <li><a href="#"><i class="fa fa-circle-o"></i> Level One</a></li>-->
        <!--    <li class="treeview">-->
        <!--      <a href="#"><i class="fa fa-circle-o"></i> Level One-->
        <!--        <span class="pull-right-container">-->
        <!--          <i class="fa fa-angle-left pull-right"></i>-->
        <!--        </span>-->
        <!--      </a>-->
        <!--      <ul class="treeview-menu">-->
        <!--        <li><a href="#"><i class="fa fa-circle-o"></i> Level Two</a></li>-->
        <!--        <li class="treeview">-->
        <!--          <a href="#"><i class="fa fa-circle-o"></i> Level Two-->
        <!--            <span class="pull-right-container">-->
        <!--              <i class="fa fa-angle-left pull-right"></i>-->
        <!--            </span>-->
        <!--          </a>-->
        <!--          <ul class="treeview-menu">-->
        <!--            <li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>-->
        <!--            <li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>-->
        <!--          </ul>-->
        <!--        </li>-->
        <!--      </ul>-->
        <!--    </li>-->
        <!--    <li><a href="#"><i class="fa fa-circle-o"></i> Level One</a></li>-->
        <!--  </ul>-->
        <!--</li>-->
        
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>

  
  <div class="content-wrapper">
    
    <section class="content-header">
      <h1>
        Piazzale Roma Order
      </h1>
      
    </section>

    
    <section class="content">

      <div class="row">
        <div class="col-md-12">
            
            <form method="post" action="<?php echo base_url().'welcome/filter'; ?>" style="float:right; margin-bottom:20px">
                <select name="month">
                    <option value="01">January</option>
                    <option value="02">February</option>
                    <option value="03">March</option>
                    <option value="04">April</option>
                    <option value="05">May</option>
                    <option value="06">June</option>
                    <option value="07">July</option>
                    <option value="08">August</option>
                    <option value="09">September</option>
                    <option value="10">October</option>
                    <option value="11">November</option>
                    <option value="12">December</option>
                </select>
                <input type="number" value="2019" name="year" min="2019">
                <button>SUBMIT</button>
            </form>
            
            
            <table border="1px solid red" id="example" class="display nowrap" style="width:100%">
                    <thead>
                        <tr>
                            <th class="text-center">Booking Number</th>
                            <th class="text-center">Username</th>
                            <th class="text-center">Email</th>
                            <th class="text-center">Drop</th>
                            <th class="text-center">Pick</th>
                            <th class="text-center">Luggage</th>
                            <th class="text-center">Location</th>
                            <th class="text-center">Price</th>
                            <th class="text-center">Created at</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach($data as $value): ?>
                        <tr>
                            
                            <?php
                            
                            $id = $value->id;
                            if(strlen($id) == 2){
                                $last_id = "1 0000 ".$id;
                            } elseif(strlen($id) == 3){
                                $last_id = "1 000 ".$id;
                            } elseif(strlen($id) == 4){
                                $last_id = "1 00 ".$id;
                            } elseif(strlen($id) == 5){
                                $last_id = "1 0 ".$id;
                            } elseif(strlen($id) == 6){
                                $last_id = "1 ".$id;
                            } elseif(strlen($id) == 7){
                                $last_id = " ".$id;
                            }
                            
                            ?>
                            
                            <td align="center"><?php echo $last_id; ?></td>
                            <td align="center"><?php echo $value->name; ?></td>
                            <td align="center"><?php echo $value->email; ?></td>
                            <td align="center"><?php echo $value->dropDate." ". $value->dropTime; ?></td>
                            <td align="center"><?php echo $value->pickDate." ". $value->pickTime; ?></td>
                            <td align="center"><?php echo $value->luggage; ?></td>
                            <td align="center">Piazzale Roma</td>
                            <td align="center"><?php echo $value->price; ?></td>
                            <td align="center"><?php echo $value->order_created_at; ?></td>
                        </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>

          
        </div>
        
      </div>
      

    </section>
   
  </div>
 
  
  <div class="control-sidebar-bg"></div>
</div>
</div>