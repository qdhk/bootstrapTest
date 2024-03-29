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
	          <li><a href="charts.jsp" class="open"><i class="icon-bar-chart"></i> Charts</a></li>
	          <li><a href="tables.jsp"><i class="icon-table"></i> Tables</a></li>
	          <li><a href="forms.jsp"><i class="icon-tasks"></i> Forms</a></li>
	          <li><a href="ui.jsp"><i class="icon-magic"></i> User Interface</a></li>
	          <li><a href="calendar.jsp"><i class="icon-calendar"></i> Calendar</a></li>
	        </ul>
	    </div>
	
	    <!-- Sidebar ends -->
	
	  	<!-- Main bar -->
	  	<div class="mainbar">
	
	      <!-- Page heading -->
	      <div class="page-head">
	        <h2 class="pull-left"><i class="icon-bar-chart"></i> Charts</h2>
	
	        <!-- Breadcrumb -->
	        <div class="bread-crumb pull-right">
	          <a href="index.jsp"><i class="icon-home"></i> Home</a>
	          <!-- Divider -->
	          <span class="divider">/</span> 
	          <a href="#" class="bread-current">Dashboard</a>
	        </div>
	
	        <div class="clearfix"></div>
	
	      </div>
	      <!-- Page heading ends -->
	
		    <!-- Matter -->
	
		    <div class="matter">
	        <div class="container">
	
	          <div class="row">
	            <div class="col-md-12">
	
	              <!-- Bar Chart -->
	              <div class="widget">
	
	                <div class="widget-head">
	                  <div class="pull-left">Bar Chart</div>
	                  <div class="widget-icons pull-right">
	                    <a href="#" class="wminimize"><i class="icon-chevron-up"></i></a> 
	                    <a href="#" class="wclose"><i class="icon-remove"></i></a>
	                  </div>  
	                  <div class="clearfix"></div>
	                </div>             
	
	
	                <div class="widget-content">
	                  <div class="padd">
	                    <!-- Barchart. jQuery Flot plugin used. -->
	                    <div id="bar-chart"></div>
	
	                    <hr />
	
	                    <!--Bar chart stuffs -->
	                    <div class="btn-group stackControls">
	                        <input type="button" value="With stacking" class="btn btn-default">
	                        <input type="button" value="Without stacking" class="btn btn-default">
	                    </div>            
	
	                    <div class="btn-group graphControls">
	
	                        <input type="button" value="Bars" class="btn btn-default">
	                        <input type="button" value="Lines" class="btn btn-default">
	                        <input type="button" value="Lines with steps" class="btn btn-default">
	                    </div>
	
	                  </div>
	                </div>
	
	              </div>
	              <!-- Bar chart ends -->
	
	              <!-- Curve chart starts -->
	
	              <div class="widget">
	
	                <div class="widget-head">
	                  <div class="pull-left">Curve Chart</div>
	                  <div class="widget-icons pull-right">
	                    <a href="#" class="wminimize"><i class="icon-chevron-up"></i></a> 
	                    <a href="#" class="wclose"><i class="icon-remove"></i></a>
	                  </div>  
	                  <div class="clearfix"></div>
	                </div>             
	
	
	                <div class="widget-content">
	                  <div class="padd">
	
	                    <div id="curve-chart"></div>
	
	                    <hr />
	
	                    <div id="hoverdata">Mouse hovers at
	                    (<span id="x">0</span>, <span id="y">0</span>). <span id="clickdata"></span></div>          
	
	                  </div>
	                </div>
	              </div>
	                <!-- Curve chart ends -->
	
	
	                <!-- Realtime chart starts -->
	
	                <div class="widget">
	
	                <div class="widget-head">
	                  <div class="pull-left">Real Time Chart</div>
	                  <div class="widget-icons pull-right">
	                    <a href="#" class="wminimize"><i class="icon-chevron-up"></i></a> 
	                    <a href="#" class="wclose"><i class="icon-remove"></i></a>
	                  </div>  
	                  <div class="clearfix"></div>
	                </div>             
	
	                  <div class="widget-content">
	                    <div class="padd">
	
	                      <div id="live-chart"></div>
	                      <hr />
	                      Time Inverval: <input id="updateInterval" type="text" class="span3" value="">
	
	                    </div>
	                  </div>
	                </div>
	
	                <!-- Realtime chart ends -->
	
	                <!-- Pie chart starts -->
	
	                <div class="widget">
	
	                <div class="widget-head">
	                  <div class="pull-left">Pie Chart</div>
	                  <div class="widget-icons pull-right">
	                    <a href="#" class="wminimize"><i class="icon-chevron-up"></i></a> 
	                    <a href="#" class="wclose"><i class="icon-remove"></i></a>
	                  </div>  
	                  <div class="clearfix"></div>
	                </div>
	
	                  <div class="widget-content">
	                    <div class="padd">
	
	                      <div class="row">
	                        <div class="col-md-4">
	                          <div id="pie-chart"></div>
	                        </div>
	                        <div class="col-md-4">
	                          <div id="pie-chart2"></div>
	                        </div>
	                        <div class="col-md-4">
	                          <div id="pie-chart3"></div>
	                        </div>
	                      </div>
	
	                    </div>
	                  </div>
	                </div>
	                <!-- Pie chart ends -->
	
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
	
	<!-- Scripts for this page -->
	<script type="text/javascript">
	
	$(function () {
	
	    /* Bar Chart starts */
	
	    var d1 = [];
	    for (var i = 0; i <= 20; i += 1)
	        d1.push([i, parseInt(Math.random() * 30)]);
	
	    var d2 = [];
	    for (var i = 0; i <= 20; i += 1)
	        d2.push([i, parseInt(Math.random() * 30)]);
	
	
	    var stack = 0, bars = true, lines = false, steps = false;
	    
	    function plotWithOptions() {
	        $.plot($("#bar-chart"), [ d1, d2 ], {
	            series: {
	                stack: stack,
	                lines: { show: lines, fill: true, steps: steps },
	                bars: { show: bars, barWidth: 0.8 }
	            },
	            grid: {
	                borderWidth: 0, hoverable: true, color: "#777"
	            },
	            colors: ["#ff6c24", "#ff2424"],
	            bars: {
	                  show: true,
	                  lineWidth: 0,
	                  fill: true,
	                  fillColor: { colors: [ { opacity: 0.9 }, { opacity: 0.8 } ] }
	            }
	        });
	    }
	
	    plotWithOptions();
	    
	    $(".stackControls input").click(function (e) {
	        e.preventDefault();
	        stack = $(this).val() == "With stacking" ? true : null;
	        plotWithOptions();
	    });
	    $(".graphControls input").click(function (e) {
	        e.preventDefault();
	        bars = $(this).val().indexOf("Bars") != -1;
	        lines = $(this).val().indexOf("Lines") != -1;
	        steps = $(this).val().indexOf("steps") != -1;
	        plotWithOptions();
	    });
	
	    /* Bar chart ends */
	
	});
	
	
	/* Curve chart starts */
	
	$(function () {
	    var sin = [], cos = [];
	    for (var i = 0; i < 14; i += 0.5) {
	        sin.push([i, Math.sin(i)]);
	        cos.push([i, Math.cos(i)]);
	    }
	
	    var plot = $.plot($("#curve-chart"),
	           [ { data: sin, label: "sin(x)"}, { data: cos, label: "cos(x)" } ], {
	               series: {
	                   lines: { show: true, fill: true},
	                   points: { show: true }
	               },
	               grid: { hoverable: true, clickable: true, borderWidth:0 },
	               yaxis: { min: -1.2, max: 1.2 },
	               colors: ["#1eafed", "#1eafed"]
	             });
	
	    function showTooltip(x, y, contents) {
	        $('<div id="tooltip">' + contents + '</div>').css( {
	            position: 'absolute',
	            display: 'none',
	            top: y + 5,
	            left: x + 5,
	            border: '1px solid #000',
	            padding: '2px 8px',
	            color: '#ccc',
	            'background-color': '#000',
	            opacity: 0.9
	        }).appendTo("body").fadeIn(200);
	    }
	
	    var previousPoint = null;
	    $("#curve-chart").bind("plothover", function (event, pos, item) {
	        $("#x").text(pos.x.toFixed(2));
	        $("#y").text(pos.y.toFixed(2));
	
	        if ($("#enableTooltip:checked").length > 0) {
	            if (item) {
	                if (previousPoint != item.dataIndex) {
	                    previousPoint = item.dataIndex;
	                    
	                    $("#tooltip").remove();
	                    var x = item.datapoint[0].toFixed(2),
	                        y = item.datapoint[1].toFixed(2);
	                    
	                    showTooltip(item.pageX, item.pageY, 
	                                item.series.label + " of " + x + " = " + y);
	                }
	            }
	            else {
	                $("#tooltip").remove();
	                previousPoint = null;            
	            }
	        }
	    }); 
	
	    $("#curve-chart").bind("plotclick", function (event, pos, item) {
	        if (item) {
	            $("#clickdata").text("You clicked point " + item.dataIndex + " in " + item.series.label + ".");
	            plot.highlight(item.series, item.datapoint);
	        }
	    });
	
	});
	
	/* Curve chart ends */
	
	
	
	/* Realtime chart starts */
	
	$(function () {
	    // we use an inline data source in the example, usually data would
	    // be fetched from a server
	    var data = [], totalPoints = 300;
	    function getRandomData() {
	        if (data.length > 0)
	            data = data.slice(1);
	
	        // do a random walk
	        while (data.length < totalPoints) {
	            var prev = data.length > 0 ? data[data.length - 1] : 50;
	            var y = prev + Math.random() * 10 - 5;
	            if (y < 10)
	                y = 10;
	            if (y > 70)
	                y = 70;
	            data.push(y);
	        }
	
	        // zip the generated y values with the x values
	        var res = [];
	        for (var i = 0; i < data.length; ++i)
	            res.push([i, data[i]])
	        return res;
	    }
	
	    // setup control widget
	    var updateInterval = 300;
	    $("#updateInterval").val(updateInterval).change(function () {
	        var v = $(this).val();
	        if (v && !isNaN(+v)) {
	            updateInterval = +v;
	            if (updateInterval < 1)
	                updateInterval = 1;
	            if (updateInterval > 2000)
	                updateInterval = 2000;
	            $(this).val("" + updateInterval);
	        }
	    });
	
	    // setup plot
	    var options = {
	        series: { shadowSize: 0 }, // drawing is faster without shadows
	        lines: {fill: true},
	        grid: {borderWidth:0 },
	        yaxis: { min: 0, max: 100 },
	        colors: ["#ff2424"]
	    };
	    var plot = $.plot($("#live-chart"), [ getRandomData() ], options);
	
	    function update() {
	        plot.setData([ getRandomData() ]);
	        // since the axes don't change, we don't need to call plot.setupGrid()
	        plot.draw();
	        
	        setTimeout(update, updateInterval);
	    }
	
	    update();
	});
	
	/* Realtime charts ends */
	
	/* Pie chart starts */
	
	$(function () {
	
	    var data = [];
	    var series = Math.floor(Math.random()*10)+1;
	    for( var i = 0; i<series; i++)
	    {
	        data[i] = { label: "Series"+(i+1), data: Math.floor(Math.random()*100)+1 }
	    }
	
	    $.plot($("#pie-chart"), data,
	    {
	        series: {
	            pie: {
	                show: true,
	                radius: 1,
	                label: {
	                    show: true,
	                    radius: 3/4,
	                    formatter: function(label, series){
	                        return '<div style="font-size:8pt;text-align:center;padding:2px;color:white;">'+label+'<br/>'+Math.round(series.percent)+'%</div>';
	                    },
	                    background: { opacity: 0 }
	                }
	            }
	        },
	        grid: {hoverable: true},
	        legend: {
	            show: false
	        }
	    }); 
	
	    $.plot($("#pie-chart2"), data,
	    {
	        series: {
	            pie: {
	                show: true
	            }
	        },
	        grid: {hoverable: true}
	    });
	
	
	    $.plot($("#pie-chart3"), data,
	    {
	        series: {
	            pie: {
	                show: true
	            }
	        },
	        grid: {hoverable: true},
	        legend: {
	            show: false
	        }
	    });   
	
	/* Pie chart ends */
	
	});
	
	
	</script>
  </body>
</html>
