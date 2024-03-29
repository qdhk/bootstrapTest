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
	  <title>Bootstrap响应式后台管理系统</title> 
	  <meta name="keywords" content="Bootstrap后台管理系统" />
	  <meta name="description" content="Bootstrap后台管理系统" />
	  <meta name="viewport" content="width=device-width, initial-scale=1.0">
	  <meta name="author" content="">
	  <!-- Stylesheets -->
	  <link href="style/bootstrap.css" rel="stylesheet">
	  <!-- Font awesome icon -->
	  <link rel="stylesheet" href="style/font-awesome.css"> 
	  <!-- jQuery UI -->
	  <link rel="stylesheet" href="style/jquery-ui.css"> 
	  <!-- Calendar -->
	  <link rel="stylesheet" href="style/fullcalendar.css">
	  <!-- prettyPhoto -->
	  <link rel="stylesheet" href="style/prettyPhoto.css">  
	  <!-- Star rating -->
	  <link rel="stylesheet" href="style/rateit.css">
	  <!-- Date picker -->
	  <link rel="stylesheet" href="style/bootstrap-datetimepicker.min.css">
	  <!-- CLEditor -->
	  <link rel="stylesheet" href="style/jquery.cleditor.css"> 
	  <!-- Uniform -->
	  <link rel="stylesheet" href="style/uniform.default.css"> 
	  <!-- Bootstrap toggle -->
	  <link rel="stylesheet" href="style/bootstrap-switch.css">
	  <!-- Main stylesheet -->
	  <link href="style/style.css" rel="stylesheet">
	  <!-- Widgets stylesheet -->
	  <link href="style/widgets.css" rel="stylesheet">   
	  
	  <!-- HTML5 Support for IE -->
	  <!--[if lt IE 9]>
	  <script src="js/html5shim.js"></script>
	  <![endif]-->
	
	  <!-- Favicon -->
	  <link rel="shortcut icon" href="img/favicon/favicon.png">

  </head>
  
  <body>
	    <div class="navbar navbar-fixed-top bs-docs-nav" role="banner">
	  
	    <div class="conjtainer">
	      <!-- Menu button for smallar screens -->
	      <div class="navbar-header">
			  <button class="navbar-toggle btn-navbar" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
				<span>Menu</span>
			  </button>
			  <!-- Site name for smallar screens -->
			  <a href="index.jsp" class="navbar-brand hidden-lg">MacBeth</a>
			</div>
	      
	      
	
	      <!-- Navigation starts -->
	      <nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">         
	
	        <ul class="nav navbar-nav">  
	
	          <!-- Upload to server link. Class "dropdown-big" creates big dropdown -->
	          <li class="dropdown dropdown-big">
	            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="label label-success"><i class="icon-cloud-upload"></i></span> Upload to Cloud</a>
	            <!-- Dropdown -->
	            <ul class="dropdown-menu">
	              <li>
	                <!-- Progress bar -->
	                <p>Photo Upload in Progress</p>
	                <!-- Bootstrap progress bar -->
	                <div class="progress progress-striped active">
						<div class="progress-bar progress-bar-info"  role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
							<span class="sr-only">40% Complete</span>
						</div>
				    </div>
	
	                <hr />
	
	                <!-- Progress bar -->
	                <p>Video Upload in Progress</p>
	                <!-- Bootstrap progress bar -->
	                <div class="progress progress-striped active">
						<div class="progress-bar progress-bar-success"  role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
							<span class="sr-only">80% Complete</span>
						</div>
				    </div> 
	
	                <hr />             
	
	                <!-- Dropdown menu footer -->
	                <div class="drop-foot">
	                  <a href="#">View All</a>
	                </div>
	
	              </li>
	            </ul>
	          </li>
	
	          <!-- Sync to server link -->
	          <li class="dropdown dropdown-big">
	            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="label label-danger"><i class="icon-refresh"></i></span> Sync with Server</a>
	            <!-- Dropdown -->
	            <ul class="dropdown-menu">
	              <li>
	                <!-- Using "icon-spin" class to rotate icon. -->
	                <p><span class="label label-info"><i class="icon-cloud"></i></span> Syncing Members Lists to Server</p>
	                <hr />
	                <p><span class="label label-warning"><i class="icon-cloud"></i></span> Syncing Bookmarks Lists to Cloud</p>
	
	                <hr />
	
	                <!-- Dropdown menu footer -->
	                <div class="drop-foot">
	                  <a href="#">View All</a>
	                </div>
	
	              </li>
	            </ul>
	          </li>
	
	        </ul>
	
	        <!-- Search form -->
	        <form class="navbar-form navbar-left" role="search">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Search">
				</div>
			</form>
	        <!-- Links -->
	        <ul class="nav navbar-nav pull-right">
	          <li class="dropdown pull-right">            
	            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
	              <i class="icon-user"></i> Admin <b class="caret"></b>              
	            </a>
	            
	            <!-- Dropdown menu -->
	            <ul class="dropdown-menu">
	              <li><a href="#"><i class="icon-user"></i> Profile</a></li>
	              <li><a href="#"><i class="icon-cogs"></i> Settings</a></li>
	              <li><a href="login.jsp"><i class="icon-off"></i> Logout</a></li>
	            </ul>
	          </li>
	          
	        </ul>
	      </nav>
	
	    </div>
	  </div>
	
	
	<!-- Header starts -->
	  <header>
	    <div class="container">
	      <div class="row">
	
	        <!-- Logo section -->
	        <div class="col-md-4">
	          <!-- Logo. -->
	           <div class="logo">
	            <h1><a href="#">Mac<span class="bold"></span></a></h1>
	            <p class="meta">后台管理系统</p>
	          </div>
	          <!-- Logo ends -->
	        </div>
	
	        <!-- Button section -->
	        <div class="col-md-4">
	
	          <!-- Buttons -->
	          <ul class="nav nav-pills">
	
	            <!-- Comment button with number of latest comments count -->
	            <li class="dropdown dropdown-big">
	              <a class="dropdown-toggle" href="#" data-toggle="dropdown">
	                <i class="icon-comments"></i> Chats <span   class="label label-info">6</span> 
	              </a>
	
	                <ul class="dropdown-menu">
	                  <li>
	                    <!-- Heading - h5 -->
	                    <h5><i class="icon-comments"></i> Chats</h5>
	                    <!-- Use hr tag to add border -->
	                    <hr />
	                  </li>
	                  <li>
	                    <!-- List item heading h6 -->
	                    <h6><a href="#">Hi :)</a> <span class="label label-warning pull-right">10:42</span></h6>
	                    <div class="clearfix"></div>
	                    <hr />
	                  </li>
	                  <li>
	                    <h6><a href="#">How are you?</a> <span class="label label-warning pull-right">20:42</span></h6>
	                    <div class="clearfix"></div>
	                    <hr />
	                  </li>
	                  <li>
	                    <h6><a href="#">What are you doing?</a> <span class="label label-warning pull-right">14:42</span></h6>
	                    <div class="clearfix"></div>
	                    <hr />
	                  </li>                  
	                  <li>
	                    <div class="drop-foot">
	                      <a href="#">View All</a>
	                    </div>
	                  </li>                                    
	                </ul>
	            </li>
	
	            <!-- Message button with number of latest messages count-->
	            <li class="dropdown dropdown-big">
	              <a class="dropdown-toggle" href="#" data-toggle="dropdown">
	                <i class="icon-envelope-alt"></i> Inbox <span class="label label-primary">6</span> 
	              </a>
	
	                <ul class="dropdown-menu">
	                  <li>
	                    <!-- Heading - h5 -->
	                    <h5><i class="icon-envelope-alt"></i> Messages</h5>
	                    <!-- Use hr tag to add border -->
	                    <hr />
	                  </li>
	                  <li>
	                    <!-- List item heading h6 -->
	                    <h6><a href="#">Hello how are you?</a></h6>
	                    <!-- List item para -->
	                    <p>Quisque eu consectetur erat eget  semper...</p>
	                    <hr />
	                  </li>
	                  <li>
	                    <h6><a href="#">Today is wonderful?</a></h6>
	                    <p>Quisque eu consectetur erat eget  semper...</p>
	                    <hr />
	                  </li>
	                  <li>
	                    <div class="drop-foot">
	                      <a href="#">View All</a>
	                    </div>
	                  </li>                                    
	                </ul>
	            </li>
	
	            <!-- Members button with number of latest members count -->
	            <li class="dropdown dropdown-big">
	              <a class="dropdown-toggle" href="#" data-toggle="dropdown">
	                <i class="icon-user"></i> Users <span   class="label label-success">6</span> 
	              </a>
	
	                <ul class="dropdown-menu">
	                  <li>
	                    <!-- Heading - h5 -->
	                    <h5><i class="icon-user"></i> Users</h5>
	                    <!-- Use hr tag to add border -->
	                    <hr />
	                  </li>
	                  <li>
	                    <!-- List item heading h6-->
	                    <h6><a href="#">Ravi Kumar</a> <span class="label label-warning pull-right">Free</span></h6>
	                    <div class="clearfix"></div>
	                    <hr />
	                  </li>
	                  <li>
	                    <h6><a href="#">Balaji</a> <span class="label label-important pull-right">Premium</span></h6>
	                    <div class="clearfix"></div>
	                    <hr />
	                  </li>
	                  <li>
	                    <h6><a href="#">Kumarasamy</a> <span class="label label-warning pull-right">Free</span></h6>
	                    <div class="clearfix"></div>
	                    <hr />
	                  </li>                  
	                  <li>
	                    <div class="drop-foot">
	                      <a href="#">View All</a>
	                    </div>
	                  </li>                                    
	                </ul>
	            </li> 
	
	          </ul>
	
	        </div>
	
	        <!-- Data section -->
	
	        <div class="col-md-4">
	          <div class="header-data">
	
	            <!-- Traffic data -->
	            <div class="hdata">
	              <div class="mcol-left">
	                <!-- Icon with red background -->
	                <i class="icon-signal bred"></i> 
	              </div>
	              <div class="mcol-right">
	                <!-- Number of visitors -->
	                <p><a href="#">7000</a> <em>visits</em></p>
	              </div>
	              <div class="clearfix"></div>
	            </div>
	
	            <!-- Members data -->
	            <div class="hdata">
	              <div class="mcol-left">
	                <!-- Icon with blue background -->
	                <i class="icon-user bblue"></i> 
	              </div>
	              <div class="mcol-right">
	                <!-- Number of visitors -->
	                <p><a href="#">3000</a> <em>users</em></p>
	              </div>
	              <div class="clearfix"></div>
	            </div>
	
	            <!-- revenue data -->
	            <div class="hdata">
	              <div class="mcol-left">
	                <!-- Icon with green background -->
	                <i class="icon-money bgreen"></i> 
	              </div>
	              <div class="mcol-right">
	                <!-- Number of visitors -->
	                <p><a href="#">5000</a><em>orders</em></p>
	              </div>
	              <div class="clearfix"></div>
	            </div>                        
	
	          </div>
	        </div>
	
	      </div>
	    </div>
	  </header>
	
	<!-- Header ends -->
	
	<!-- Main content starts -->
	
	<div class="content">
	
	  	<!-- Sidebar -->
	    <div class="sidebar">
	        <div class="sidebar-dropdown"><a href="#">Navigation</a></div>
	
	        <!--- Sidebar navigation -->
	        <!-- If the main navigation has sub navigation, then add the class "has_sub" to "li" of main navigation. -->
	        <ul id="nav">
	          <!-- Main menu with font awesome icon -->
	          <li><a href="index.jsp"><i class="icon-home"></i> Dashboard</a>
	            <!-- Sub menu markup 
	            <ul>
	              <li><a href="#">Submenu #1</a></li>
	              <li><a href="#">Submenu #2</a></li>
	              <li><a href="#">Submenu #3</a></li>
	            </ul>-->
	          </li>
	          <li class="has_sub"><a href="#"><i class="icon-list-alt"></i> Widgets  <span class="pull-right"><i class="icon-chevron-right"></i></span></a>
	            <ul>
	              <li><a href="widgets1.jsp">Widgets #1</a></li>
	              <li><a href="widgets2.jsp">Widgets #2</a></li>
	              <li><a href="widgets3.jsp">Widgets #3</a></li>
	            </ul>
	          </li>  
	          <li class="has_sub"><a href="#"><i class="icon-file-alt"></i> Pages #1  <span class="pull-right"><i class="icon-chevron-right"></i></span></a>
	            <ul>
	              <li><a href="post.jsp">Post</a></li>
	              <li><a href="login.jsp">Login</a></li>
	              <li><a href="register.jsp">Register</a></li>
	              <li><a href="support.jsp">Support</a></li>
	              <li><a href="invoice.jsp">Invoice</a></li>
	              <li><a href="profile.jsp">Profile</a></li>
	              <li><a href="gallery.jsp">Gallery</a></li>
	            </ul>
	          </li> 
	          <li class="has_sub"><a href="#"><i class="icon-file-alt"></i> Pages #2  <span class="pull-right"><i class="icon-chevron-right"></i></span></a>
	            <ul>
	              <li><a href="media.jsp">Media</a></li>
	              <li><a href="statement.jsp">Statement</a></li>
	              <li><a href="error.jsp">Error</a></li>
	              <li><a href="error-log.jsp">Error Log</a></li>
	              <li><a href="calendar.jsp">Calendar</a></li>
	              <li><a href="grid.jsp">Grid</a></li>
	            </ul>
	          </li>                             
	          <li><a href="charts.jsp"><i class="icon-bar-chart"></i> Charts</a></li> 
	          <li><a href="tables.jsp"><i class="icon-table"></i> Tables</a></li>
	          <li><a href="forms.jsp"><i class="icon-tasks"></i> Forms</a></li>
	          <li><a href="ui.jsp" class="open"><i class="icon-magic"></i> User Interface</a></li>
	          <li><a href="calendar.jsp"><i class="icon-calendar"></i> Calendar</a></li>
	        </ul>
	    </div>
	
	    <!-- Sidebar ends -->
	
	  	<!-- Main bar -->
	  	<div class="mainbar">
	      
		    <!-- Page heading -->
		    <div class="page-head">
	        <!-- Page heading -->
		      <h2 class="pull-left">User Interface
	          <!-- page meta -->
	          <span class="page-meta">Something Goes Here</span>
	        </h2>
	
	
	        <!-- Breadcrumb -->
	        <div class="bread-crumb pull-right">
	          <a href="index.jsp"><i class="icon-home"></i> Home</a> 
	          <!-- Divider -->
	          <span class="divider">/</span> 
	          <a href="#" class="bread-current">User Interface</a>
	        </div>
	
	        <div class="clearfix"></div>
	
		    </div>
		    <!-- Page heading ends -->
	
	
	
		    <!-- Matter -->
	
		    <div class="matter">
	        <div class="container">
	
	          <div class="row">
	
	            <div class="col-md-6">
	
	              <div class="widget wred">
	                <div class="widget-head">
	                  <div class="pull-left">UI Elements</div>
	                  <div class="widget-icons pull-right">
	                    <a href="#" class="wminimize"><i class="icon-chevron-up"></i></a> 
	                    <a href="#" class="wclose"><i class="icon-remove"></i></a>
	                  </div>
	                  <div class="clearfix"></div>
	                </div>
	
	                <div class="widget-content">
	                  <div class="padd">
	                    
	                    <h5>Button Group</h5>
	                    <div class="btn-group">
	                      <button class="btn btn-danger">Left</button>
	                      <button class="btn btn-success">Center</button>
	                      <button class="btn btn-primary">Right</button>
	                    </div>
	                    <hr />
	
	                    <h5>Toggle Button</h5>
	                     <div class="make-switch" data-on="primary" data-off="info">
	                         <input type="checkbox" checked>
	                     </div>
	                      
	                     <div class="make-switch" data-on="info" data-off="success">
	                         <input type="checkbox" checked>
	                     </div>
	                      
	                     <div class="make-switch" data-on="success" data-off="warning">
	                         <input type="checkbox" checked>
	                     </div>
	                      
	                     <div class="make-switch" data-on="warning" data-off="danger">
	                         <input type="checkbox" checked>
	                     </div>
	                      
	                     <div class="make-switch" data-on="danger" data-off="default">
	                         <input type="checkbox" checked>
	                     </div>
	                      
	                     <div class="make-switch" data-on="default" data-off="primary">
	                         <input type="checkbox" checked>
	                     </div>  
	                    <hr />                                  
	
	                    <h5>Button Dropdown</h5>
	                    <div class="btn-group">
	                      <button class="btn btn-default dropdown-toggle" data-toggle="dropdown">Action <span class="caret"></span></button>
	                      <ul class="dropdown-menu">
	                        <li><a href="#">Action</a></li>
	                        <li><a href="#">Another action</a></li>
	                        <li><a href="#">Something else here</a></li>
	                        <li class="divider"></li>
	                        <li><a href="#">Separated link</a></li>
	                      </ul>
	                    </div>
	                    <hr />
	
	                    <h5>Tabbable</h5>
	                    <div class="tabbable" style="margin-bottom: 18px;">
	                      <ul class="nav nav-tabs">
	                        <li class="active"><a href="#tab1" data-toggle="tab">Section 1</a></li>
	                        <li><a href="#tab2" data-toggle="tab">Section 2</a></li>
	                        <li><a href="#tab3" data-toggle="tab">Section 3</a></li>
	                      </ul>
	                      <div class="tab-content" style="padding-bottom: 9px; border-bottom: 1px solid #ddd;">
	                        <div class="tab-pane active" id="tab1">
	                          <p>I'm in Section 1.</p>
	                        </div>
	                        <div class="tab-pane" id="tab2">
	                          <p>Howdy, I'm in Section 2.</p>
	                        </div>
	                        <div class="tab-pane" id="tab3">
	                          <p>What up girl, this is Section 3.</p>
	                        </div>
	                      </div>
	                    </div>
	                    <hr />
	
	                    <h5>Pagination</h5>
	                    
	                      <ul class="pagination">
	                        <li><a href="#">Prev</a></li>
	                        <li><a href="#">1</a></li>
	                        <li><a href="#">2</a></li>
	                        <li><a href="#">3</a></li>
	                        <li><a href="#">4</a></li>
	                        <li><a href="#">Next</a></li>
	                      </ul>
	                    
	                    <hr />
	
	                    <h5>Labels</h5>
	                    <span class="label label-danger">Default</span>
	                    <span class="label label-success">Success</span>
	                    <span class="label label-warning">Warning</span>
	                    <span class="label label-default">Important</span>
	                    <span class="label label-info">Info</span>
	                    <span class="label label-primary">Success</span>
	                    <hr />
	
	                    <h5>Badges</h5>
	                    <span class="label label-danger">1</span>
	                    <span class="label label-success">2</span>
	                    <span class="label label-warning">3</span>
	                    <span class="label label-info">4</span>
	                    <span class="label label-default">5</span>
	                    <span class="label label-primary">6</span>
	                    <hr />
	
	                    <h5>Alerts</h5>
	                    <div class="alert alert-warning">
	                      Oh snap! Change a few things up and try submitting again.
	                    </div>
	                    <div class="alert alert-success">
	                      Well done! You successfully read this important alert message.
	                    </div>
	                    <div class="alert alert-info">
	                      Heads up! This alert needs your attention, but it's not super important.
	                    </div>                                        
	                    <hr />
	
	
	                    <h5>Modal</h5>
	                    <!-- Button to trigger modal -->
	                    <a href="#myModal" class="btn btn-info" data-toggle="modal">Launch demo modal</a>
	                     
	                    <!-- Modal -->
	                    <div id="myModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog">
						  <div class="modal-content">
	                      <div class="modal-header">
	                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
	                        <h4 class="modal-title">Modal title</h4>
	                      </div>
	                      <div class="modal-body">
	                        <p>One fine body…</p>
	                      </div>
	                      <div class="modal-footer">
	                        <button type="button" class="btn btn-default" data-dismiss="modal" aria-hidden="true">Close</button>
	                        <button type="button" class="btn btn-primary">Save changes</button>
	                      </div>
	                    </div>
						</div>
						</div>
	                    <hr />
	
	
	                  </div>
	                </div>
	                  <div class="widget-foot">
	                    <!-- Footer goes here -->
	                  </div>
	              </div>  
	
	            </div>
	            <div class="col-md-6">
	
	              <div class="widget wviolet">
	                <div class="widget-head">
	                  <div class="pull-left">UI Elements</div>
	                  <div class="widget-icons pull-right">
	                    <a href="#" class="wminimize"><i class="icon-chevron-up"></i></a> 
	                    <a href="#" class="wclose"><i class="icon-remove"></i></a>
	                  </div>
	                  <div class="clearfix"></div>
	                </div>
	
	                <div class="widget-content">
	                  <div class="padd">
	
	                    <h5>Horizontal Slider</h5>
	
	                    <div id="master4" class="slider-yellow"></div>
	                    <div id="master1" class="slider-red"></div>
	                    <div id="master3" class="slider-green"></div>
	                    <div id="master5" class="slider-orange"></div>
	                    <div id="master2" class="slider-blue"></div>
	                    <div id="master6" class="slider-violet"></div>
	                     
	                    <hr />
	
	                    <h5>Progressbar</h5>
	
	                   <div class="progress progress-striped active">
							  <div class="progress-bar progress-bar-warning"  role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
								<span class="sr-only">80% Complete</span>
							  </div>
						   </div>
	                    <div class="progress progress-striped active">
							  <div class="progress-bar progress-bar-success"  role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
								<span class="sr-only">80% Complete</span>
							  </div>
						   </div>
	                    <div class="progress progress-striped active">
							  <div class="progress-bar progress-bar-danger"  role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
								<span class="sr-only">80% Complete</span>
							  </div>
						   </div>
	                    <div class="progress progress-striped active">
							  <div class="progress-bar progress-bar-info"  role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
								<span class="sr-only">80% Complete</span>
							  </div>
						   </div>
	                    <hr />
	
	                    <h5>Progressbar Animated</h5>
	
	                     <div class="progress progress-animated progress-striped active">
							  <div class="progress-bar progress-bar-warning"  data-percentage="100">
								<span class="sr-only">100% Complete</span>
							  </div>
						  </div>
	                     <div class="progress progress-animated progress-striped active">
							  <div class="progress-bar progress-bar-info"  data-percentage="100">
								<span class="sr-only">100% Complete</span>
							  </div>
						  </div>
	                     <div class="progress progress-animated progress-striped active">
							  <div class="progress-bar progress-bar-danger"  data-percentage="100">
								<span class="sr-only">100% Complete</span>
							  </div>
						  </div>
	                     <div class="progress progress-animated progress-striped active">
							  <div class="progress-bar progress-bar-success" data-percentage="100">
								<span class="sr-only">100% Complete</span>
							  </div>
						  </div>
	
	                    <hr />
	
	                    <h5>Vertical Slider</h5>
	
	                    <div id="eq">
	                        <span class="slider-red">88</span>
	                        <span class="slider-blue">77</span>
	                        <span class="slider-green">55</span>
	                        <span class="slider-yellow">33</span>
	                        <span class="slider-orange">40</span>
	                        <span class="slider-violet">45</span>
	                        <div class="clearfix"></div>
	                    </div>
	
	
	
	                    <hr />
	
	                    <h5>Star Rating</h5>
	
	                    <div class="rateit" data-rateit-resetable="false"></div>
	                    <hr />
	
	                    <h5>Notification</h5>
	
	
	                    <a href="#" class="btn notify btn-default btn-sm">Notification</a>
	                    <a href="#" class="btn notify-sticky btn-default btn-sm">Sticky Notification</a>
	                    <a href="#" class="btn notify-without-image btn-default btn-sm">Notification - Without Image</a>
	                    <a href="#" class="btn notify-remove btn-default btn-sm">Remove</a>
	
	                    <hr />
	
	                    <h5>Tabs</h5>
	                    <ul id="myTab" class="nav nav-tabs">
	                      <li class="active"><a href="#home" data-toggle="tab">Home</a></li>
	                      <li><a href="#profile" data-toggle="tab">Profile</a></li>
	                      <li><a href="#cont" data-toggle="tab">Content</a></li>
	                    </ul>
	                    <div id="myTabContent" class="tab-content">
	                      <div class="tab-pane fade in active" id="home">
	                        <p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>
	                      </div>
	                      <div class="tab-pane fade" id="profile">
	                        <p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid. Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer twee. Qui photo booth letterpress, commodo enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud organic, assumenda labore aesthetic magna delectus mollit. Keytar helvetica VHS salvia yr, vero magna velit sapiente labore stumptown. Vegan fanny pack odio cillum wes anderson 8-bit, sustainable jean shorts beard ut DIY ethical culpa terry richardson biodiesel. Art party scenester stumptown, tumblr butcher vero sint qui sapiente accusamus tattooed echo park.</p>
	                      </div>
	                      <div class="tab-pane fade" id="cont">
	                        <p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork. Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel fixie etsy retro mlkshk vice blog. Scenester cred you probably haven't heard of them, vinyl craft beer blog stumptown. Pitchfork sustainable tofu synth chambray yr.</p>
	                      </div>
	                    </div>
	                    <hr />
	
	                    <h5>Datepicker</h5>
	                      
						
						
						 <div id="datetimepicker1" class="input-append">
	                        <input data-format="yyyy-MM-dd" type="text" class="form-control dtpicker">
	                        <span class="add-on">
	                          <i data-time-icon="icon-time" data-date-icon="icon-calendar" class="btn btn-info btn-lg"></i>
	                        </span>
	                      </div>
						
	
	                    <hr />  
	
	                    <h5>Timepicker</h5>
	                      <div id="datetimepicker2" class="input-append">
	                        <input data-format="hh:mm:ss" class="form-control dtpicker" type="text">
	                        <span class="add-on">
	                          <i data-time-icon="icon-time" data-date-icon="icon-calendar" class="btn btn-info btn-lg"></i>
	                        </span>
	                      </div>
	
	
	                  </div>
	                </div>
	                  <div class="widget-foot">
	                    <!-- Footer goes here -->
	                  </div>
	              </div>                
	
	            </div>
	
	          </div>
	
	        </div>
			  </div>
	
			<!-- Matter ends -->
	
	    </div>
	
	   <!-- Mainbar ends -->	    	
	   <div class="clearfix"></div>
	
	</div>
	<!-- Content ends -->
	
	<!-- Footer starts -->
	<footer>
	  <div class="container">
	    <div class="row">
	      <div class="col-md-12">
	            <!-- Copyright info -->
	            <p class="copy">Copyright &copy; 2012 | <a href="#">Your Site</a> </p>
	      </div>
	    </div>
	  </div>
	</footer> 	
	
	<!-- Footer ends -->
	
	<!-- Scroll to top -->
	<span class="totop"><a href="#"><i class="icon-chevron-up"></i></a></span> 
	
	<!-- JS -->
	<script src="js/jquery.js"></script> <!-- jQuery -->
	<script src="js/bootstrap.js"></script> <!-- Bootstrap -->
	<script src="js/jquery-ui-1.9.2.custom.min.js"></script> <!-- jQuery UI -->
	<script src="js/fullcalendar.min.js"></script> <!-- Full Google Calendar - Calendar -->
	<script src="js/jquery.rateit.min.js"></script> <!-- RateIt - Star rating -->
	<script src="js/jquery.prettyPhoto.js"></script> <!-- prettyPhoto -->
	
	<!-- jQuery Flot -->
	<script src="js/excanvas.min.js"></script>
	<script src="js/jquery.flot.js"></script>
	<script src="js/jquery.flot.resize.js"></script>
	<script src="js/jquery.flot.pie.js"></script>
	<script src="js/jquery.flot.stack.js"></script>
	
	<!-- jQuery Notification - Noty -->
	<script src="js/jquery.noty.js"></script> <!-- jQuery Notify -->
	<script src="js/themes/default.js"></script> <!-- jQuery Notify -->
	<script src="js/layouts/bottom.js"></script> <!-- jQuery Notify -->
	<script src="js/layouts/topRight.js"></script> <!-- jQuery Notify -->
	<script src="js/layouts/top.js"></script> <!-- jQuery Notify -->
	<!-- jQuery Notification ends -->
	
	<script src="js/sparklines.js"></script> <!-- Sparklines -->
	<script src="js/jquery.cleditor.min.js"></script> <!-- CLEditor -->
	<script src="js/bootstrap-datetimepicker.min.js"></script> <!-- Date picker -->
	<script src="js/jquery.uniform.min.js"></script> <!-- jQuery Uniform -->
	<script src="js/bootstrap-switch.min.js"></script> <!-- Bootstrap Toggle -->
	<script src="js/filter.js"></script> <!-- Filter for support page -->
	<script src="js/custom.js"></script> <!-- Custom codes -->
	<script src="js/charts.js"></script> <!-- Charts & Graphs -->

  </body>
</html>
