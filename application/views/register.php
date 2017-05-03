<!DOCTYPE html>
<html lang="">
     <head>
          <meta charset="utf-8">
          <meta http-equiv="X-UA-Compatible" content="IE=edge">
          <meta name="viewport" content="width=device-width, initial-scale=1">
          <title>Register</title>

          <!-- Bootstrap CSS -->
         <link rel="stylesheet" href="<?php echo base_url('') ?>assets/css/bootstrap.min.css">

          <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
          <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
          <!--[if lt IE 9]>
               <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.2/html5shiv.min.js"></script>
               <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
          <![endif]-->
     </head>
     <body>
     <nav class="navbar navbar-default" role="navigation">
          <div class="container-fluid">
               <!-- Brand and toggle get grouped for better mobile display -->
               <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                         <span class="sr-only">Toggle navigation</span>
                         <span class="icon-bar"></span>
                         <span class="icon-bar"></span>
                         <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Register</a>
               </div>
     
               <!-- Collect the nav links, forms, and other content for toggling -->
               <div class="collapse navbar-collapse navbar-ex1-collapse">
                    
                    <form class="navbar-form navbar-left" role="search">
                         <div class="form-group">
                              <input type="text" class="form-control" placeholder="Search">
                         </div>
                         <button type="submit" class="btn btn-default">Submit</button>
                    </form>
                   
               </div><!-- /.navbar-collapse -->
          </div>
     </nav>
          <div class="container">
               <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
               <?php echo form_open('register') ?>
               <br>
                                        <div class="form-group">
                                             <legend>Register Akun</legend>
                                        </div>

                                        <?php echo validation_errors(); ?>
                                       
                                        <div class="form-group">
                                             <label for="">Username</label>
                                             <input type="username" class="form-control" id="username" name="username" placeholder="Input field" >
                                        </div>

                                        <div class="form-group">
                                             <label for="">Nama Lengkap</label>
                                             <input type="text" class="form-control" id="name" name="name" placeholder="Input field" >
                                        </div>
                                        
                                   
                                        <div class="form-group">
                                             <label for="">Email</label>
                                             <input type="email" class="form-control" id="email" name="email" placeholder="Input field" >
                                        </div>

                                        <div class="form-group">
                                             <label for="">Password</label>
                                             <input type="password" class="form-control" id="password" name="password" placeholder="Input field" >
                                        </div>

                                        <div class="form-group">
                                             <label for="">Konfirmasi Password</label>
                                             <input type="password" class="form-control" id="password_conf" name="password_conf" placeholder="Input field" >
                                        </div>
                                        <div class="form-group">
                                                  <button type="submit" class="btn btn-primary">Daftar</button>
                                        </div>
                                        <?php echo form_close();?>
 
                                   <p>
                                   Kembali ke halaman <?php echo anchor(site_url().'/login','Login'); ?>
                                   </p>
                              </form>        
               </div>    
          </div>
          <!-- jQuery -->
          <script src="//code.jquery.com/jquery.js"></script>
          <!-- Bootstrap JavaScript -->
          <script src="<?php echo base_url('') ?>assets/js/bootstrap.min.js"></script>
          <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
          <script src="Hello World"></script>
     </body>
</html>