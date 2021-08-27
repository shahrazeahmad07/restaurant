<style type="text/css">
    .required_star{
        color: #dd4b39;
    }

    .radio_button_problem{
        margin-bottom: 19px;
    }
</style>

<?php
if ($this->session->flashdata('exception')) {

    echo '<section class="content-header"><div class="alert alert-success alert-dismissible"> 
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    <p><i class="icon fa fa-check"></i>';
    echo $this->session->flashdata('exception');
    echo '</p></div></section>';
}
?>
<?php
if ($this->session->flashdata('exception_1')) {

    echo '<section class="content-header"><div class="alert alert-danger alert-dismissible"> 
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    <p><i class="icon fa fa-check"></i>';
    echo $this->session->flashdata('exception_1');
    echo '</p></div></section>';
}
?>
<section class="content-header">
    <h1>
        <?php echo lang('backup'); ?>
    </h1>

</section>

<!-- Main content -->
<section class="content">
    <div class="row">
        <!-- left column -->
        <div class="col-md-12">
            <div class="box box-primary">
                <!-- /.box-header -->
                <!-- form start -->
                <?php echo form_open(base_url().'Backup/create_backup' , array('class' => 'form-horizontal form-groups-bordered', 'enctype' => 'multipart/form-data'));?>
                

                <div class="box-footer">
                    <input type="submit" name="submit" value="<?php echo lang('create_backup'); ?>" class="btn btn-danger"/>
                </div>
                <?php echo form_close(); ?>
                
                <form role="form" action="<?php echo base_url('Backup/create') ?>" method="post" enctype="multipart/form-data">
                <div class="box-body">
                    <div class="row">
                        <div class="col-md-4"> 
                            <div class="form-group">
                                <label><?php echo lang('upload_db'); ?> <span class="required_star">*</span></label>
                                <input  type="file" name="file"  class="form-control" required/>
                            </div>
                            <?php if (form_error('file')) { ?>
                                <div class="alert alert-error" style="padding: 5px !important;">
                                    <p><?php echo form_error('file'); ?></p>
                                </div>
                            <?php } ?> 
                        </div>
                    </div>
                </div>

                <div class="box-footer">
                    <input   type="submit" name="btn"  value="Upload" class="btn btn-primary"/>
                </div>
                </form>



            </div>
        </div>
    </div>
</section>