<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>

<!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Dashbboard

      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-book"></i> Home</a></li>
        <li class="active">User</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
    
    <div class="box">
            <!-- Main content -->
    <section class="content container-fluid">
		    <h1 class="page-header">Welcome!</h1>
		
		      <div class="row">
		        <div class="col-md-8">
		          <div class="box box-default">
		            <div class="box-header with-border">
		              <i class="fa fa-warning"></i>
		
		              <h3 class="box-title">Selamat Datang di Panel Admin Aplikasi MUF Member dan Asset Manager</h3>
		            </div>
		            <!-- /.box-header -->
		            <div class="box-body">
		              <div class="alert alert-success alert-dismissible">
		                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
		                <h4><i class="icon fa fa-bullhorn"></i> Alert</h4>
		                  Di panel admin ini anda dapat melakukan administrasi untuk sistem Member dan Asset Manager
		              </div>
		            </div>
		            <!-- /.box-body -->
		          </div>
		          <!-- /.box -->
		        </div>
		        <!-- /.col -->
		      </div>
		
		    </section>
            </div>
            <!-- /.box-body -->
          </div>
      
    </section>
    <!-- /.content --> 

<script>
function add()
{
     location.href = "/asset/add";
} 
</script>




