<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="zh-cn">
  <head>
	  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	  <meta charset="utf-8">
	  <!-- Title and other stuffs -->
	  <title>用户注册页面 Bootstrap响应式后台管理系统</title> 
	  <meta name="keywords" content="Bootstrap后台管理系统" />
	  <meta name="description" content="Bootstrap后台管理系统" />
	  <meta name="viewport" content="width=device-width, initial-scale=1.0">
	  <meta name="author" content="">
	  <!-- Stylesheets -->
	  <link href="style/bootstrap.css" rel="stylesheet">
	  <link rel="stylesheet" href="style/font-awesome.css">
	  <link href="style/style.css" rel="stylesheet">
	  <link href="style/bootstrap-responsive.css" rel="stylesheet">
	  
	  <!-- HTML5 Support for IE -->
	  <!--[if lt IE 9]>
	  <script src="js/html5shim.js"></script>
	  <![endif]-->
	
	  <!-- Favicon -->
	  <link rel="shortcut icon" href="img/favicon/favicon.png">

  </head>
  
  <body>
	  <div class="admin-form">
	  <div class="container">
	    <div class="row">
	      <div class="col-lg-12">
	        <!-- Widget starts -->
	            <div class="widget wred">
	              <div class="widget-head">
	                <i class="icon-lock"></i> Register 
	              </div>
	              <div class="widget-content">
	                <div class="padd">
	                  
	                  <form class="form-horizontal">
	                    <!-- Registration form starts -->
	                                      <!-- Name -->
	                                          <div class="form-group">
	                                            <label class="control-label col-lg-3" for="name">Name</label>
	                                            <div class="col-lg-9">
	                                              <input type="text" class="form-control" id="name">
	                                            </div>
	                                          </div>   
	                                          <!-- Email -->
	                                          <div class="form-group">
	                                            <label class="control-label col-lg-3" for="email">Email</label>
	                                            <div class="col-lg-9">
	                                              <input type="text" class="form-control" id="email">
	                                            </div>
	                                          </div>
	                                          <!-- Select box -->
	                                          <div class="form-group">
	                                            <label class="control-label col-lg-3">Drop Down</label>
	                                            <div class="col-lg-9">                               
	                                                <select class="form-control">
	                                                <option>&nbsp;</option>
	                                                <option>1</option>
	                                                <option>2</option>
	                                                <option>3</option>
	                                                <option>4</option>
	                                                <option>5</option>
	                                                </select>  
	                                            </div>
	                                          </div>                                           
	                                          <!-- Username -->
	                                          <div class="form-group">
	                                            <label class="control-label col-lg-3" for="username">Username</label>
	                                            <div class="col-lg-9">
	                                              <input type="text" class="form-control" id="username">
	                                            </div>
	                                          </div>
	                                          <!-- Password -->
	                                          <div class="form-group">
	                                            <label class="control-label col-lg-3" for="email">Password</label>
	                                            <div class="col-lg-9">
	                                              <input type="password" class="form-control" id="password">
	                                            </div>
	                                          </div>
	                                          <!-- Accept box and button s-->
	                                          <div class="form-group">
	                                            <div class="col-lg-9 col-lg-offset-3">
												  <div class="checkbox">
	                                              <label>
	                                                <input type="checkbox"> Accept Terms &amp; Conditions
	                                              </label>
												  </div>
	                                              <br />
	                                              <button type="submit" class="btn btn-danger">Register</button>
	                                              <button type="reset" class="btn btn-success">Reset</button>
	                                            </div>
	                                          </div>
											  <br />
	                  </form>
	
	                </div>
	              </div>
	                <div class="widget-foot">
	                  Already Registred? <a href="login.jsp">Login</a>
	                </div>
	            </div>  
	      </div>
	    </div>
	  </div> 
	</div>
		
			
	
	<!-- JS -->
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.js"></script>
  </body>
</html>
