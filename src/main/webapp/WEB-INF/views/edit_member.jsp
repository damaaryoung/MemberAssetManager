<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>

<!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Master Member

      </h1>
      <ol class="breadcrumb">
        <li><a href="/"><i class="fa fa-book"></i> Home</a></li>
        <li class="active">User</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
    
    <div class="box">
            <div class="box-header">
              <h3 class="box-title">Display EDIT Member FORM</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
         
        	<!-- Horizontal Form -->
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Horizontal Form</h3>
            </div>
        <form class="form-horizontal" action="/member/update/save" th:object="${member}"
            method="get">
             <div class="box-body">
             
             		
	        	<div class="form-group">
                  <label for="namaDepan" class="col-sm-2 control-label">User ID  </label>

                  <div class="col-sm-10">
                    <input type="number" class="form-control" value="${member.id}" path="id" field="*{id}" name="id" id="id" placeholder="User ID" readonly>
                  </div>
                </div>
             
             
                <div class="form-group">
                  <label for="namaDepan" class="col-sm-2 control-label">Member Name</label>

                  <div class="col-sm-10">
                    <input type="text" class="form-control" value="${member.name}" path="name" field="*{name}" name="name" id="name" placeholder="User Name" required>
                  </div>
                </div>
                
                <div class="form-group">
                  <label for="namaDepan" class="col-sm-2 control-label">Date of Birth  </label>

                  <div class="col-sm-3">
                    <input type="date" class="form-control" value="${member.dob}" path="dob" field="*{dob}" name="dob" id="dob" placeholder="User Email" required>
                  </div>
                </div>               
             	
                
                
              <div class="box-footer" style="text-align:center;">
                <a class="btn btn-danger" href="/">Cancel</a>
                <button type="submit" class="btn btn-info">Submit</button>
              </div>
            </div>
            </form>
              <!-- /.box-body -->
            <!-- /.box-body -->
          </div>
          </div>
          </div>
      
    </section>
    <!-- /.content --> 

<script>
function add()
{
     location.href = "/userform";
} 
</script>
