<!-- Main Footer -->
<footer class="main-footer">
    <!-- To the right -->
    <div class="pull-right hidden-xs">
        Some Information
    </div>
    <!-- Default to the left -->
    <strong>Copyright &copy; 2019 <a href="#">Bagaglivenezia.com</a>.</strong> All rights reserved.
</footer>
</div>
<!-- ./wrapper -->

<!-- REQUIRED JS SCRIPTS -->

<!-- jQuery 3 -->
<script src="<?php echo base_url().'assets/bower_components/jquery/dist/jquery.min.js' ?>"></script>
<!-- Bootstrap 3.3.7 -->
<script src="<?php echo base_url().'assets/bower_components/bootstrap/dist/js/bootstrap.min.js' ?>"></script>
<!-- AdminLTE App -->
<script src="<?php echo base_url().'assets/dist/js/adminlte.min.js' ?>"></script>
<!-- DataTables -->
<script src="<?php echo base_url().'assets/bower_components/datatables.net/js/jquery.dataTables.min.js' ?>"></script>
<script src="<?php echo base_url().'assets/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js' ?>"></script>
<!-- SlimScroll -->
<script src="<?php echo base_url().'assets/bower_components/jquery-slimscroll/jquery.slimscroll.min.js' ?>"></script>
<!-- FastClick -->
<script src="<?php echo base_url().'assets/bower_components/fastclick/lib/fastclick.js' ?>"></script>
<!-- AdminLTE for demo purposes -->
<script src="<?php echo base_url().'assets/dist/js/demo.js' ?>"></script>


<!-- Custom Script Section -->
<script>
    $(function () {
        $('#example1').DataTable()
        $('#example2').DataTable({
            'paging'      : true,
            'lengthChange': false,
            'searching'   : false,
            'ordering'    : true,
            'info'        : true,
            'autoWidth'   : false
        })
    })
</script>


</body>
</html>