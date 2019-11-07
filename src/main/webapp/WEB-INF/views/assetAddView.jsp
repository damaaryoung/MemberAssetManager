<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>

<!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Master Asset

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
              <h3 class="box-title">Display NEW ASSET FORM</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
        
        	<!-- Horizontal Form -->
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Horizontal Form</h3>
            </div>
        <form class="form-horizontal" action="save" th:object="${asset}" method="post">
             <div class="box-body">
             
                <div class="form-group">
                  <label for="namaDepan" class="col-sm-2 control-label">Asset Name</label>

                  <div class="col-sm-10">
                    <input type="text" class="form-control" path="asset_name" th:field="*{asset_name}" name="asset_name" id="asset_name" placeholder="Asset Name" required>
                  </div>
                </div>
                
                <div class="form-group">
                  <label for="namaDepan" class="col-sm-2 control-label">Asset Number </label>

                  <div class="col-sm-10">
                    <input type="text" class="form-control" path="asset_number" th:field="*{asset_number}" name="asset_number" id="asset_number" placeholder="Asset Number" required>
                  </div>
                </div>        
                
                <div class="form-group">
			        <label class="col-sm-2 control-label" for="name">Category : </label>
			        <div class="col-sm-10">
			        <select class="form-control"  th:field="*{category}" name="category" id="category" placeholder="Category">			                    
			                            <option value="Asset Tetap">Asset Tetap</option>
			                            <option value="Asset Bergerak">Asset Bergerak</option>
			                         		
			                   
			        </select>
			        </div>			
			    </div>      
                
              <div class="box-footer" style="text-align:center;">
                <a class="btn btn-danger" href="/asset">Cancel</a>
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
