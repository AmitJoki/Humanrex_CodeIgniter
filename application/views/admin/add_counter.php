<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <i class="fa fa-bar-chart"></i> Add counter For User
        <small></small>
      </h1>
    </section>

  <section class="content">

        <div class="row">
            <!-- left column -->
            <div class="col-md-8">
              <!-- general form elements -->
                <div class="box box-primary">
                    <div class="box-header">
                        <h3 class="box-title"> </h3>
                    </div><!-- /.box-header -->
                    <h3>&nbsp;Intialize the Counter for User</h3><br>
                    <form class="form-horizontal" action="<?php echo base_url()?>add-counter" method="post">
                      <div class="form-group">
                          <label for="date" class="control-label col-sm-2 col-xs-4">Staff ID:&nbsp;</label>
                          <div class="col-sm-4 col-xs-6">
                          <input type="text" class="form-control" id="staff_id" name="staff_id">
                          </div>
                        </div>

                        <div class="form-group" >
                            <label for="date" class="control-label col-sm-2 col-xs-4">Name :&nbsp;</label>
                            <div class="col-sm-4 col-xs-6">
                            <input type="text" class="form-control"  name="name">
                          </div>
                        </div>


                        <div class="form-group">
                            <label for="date" class="control-label col-sm-2 col-xs-4">Counter:&nbsp;</label>
                            <div class="col-sm-4 col-xs-6">
                            <input type="number" class="form-control" value ="0" name="count">
                          </div>
                        </div>


                        <div class="form-group">
                            <label for="date" class="control-label col-sm-2 col-xs-4">Total Late Days:</label>
                            <div class="col-sm-4 col-xs-6">
                            <input type="text" class="form-control" value="0" name="late_days">
                          </div>
                        </div>

                      <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                          <button type="submit" class="btn btn-success">Add Counter</button>
                        </div>
                      </div>
                    </form>
                    <br><br><br>
                  </div>




                    </div><!-- /.box-body -->


            </div>
        </div>
    </section>


</div>
