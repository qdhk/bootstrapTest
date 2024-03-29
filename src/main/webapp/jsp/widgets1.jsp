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
	          <li class="has_sub"><a href="#" class="open"><i class="icon-list-alt"></i> Widgets  <span class="pull-right"><i class="icon-chevron-right"></i></span></a>
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
	          <li><a href="ui.jsp"><i class="icon-magic"></i> User Interface</a></li>
	          <li><a href="calendar.jsp"><i class="icon-calendar"></i> Calendar</a></li>
	        </ul>
	    </div>
	
	    <!-- Sidebar ends -->
	
	  	<!-- Main bar -->
	  	<div class="mainbar">
	
	      <!-- Page heading -->
	      <div class="page-head">
	        <h2 class="pull-left"><i class="icon-list-alt"></i> Widgets</h2>
	
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
	
	            <!-- Chats widget -->
	            <div class="col-md-4">
	              <!-- Widget -->
	              <div class="widget">
	                <!-- Widget title -->
	                <div class="widget-head">
	                  <div class="pull-left">Chats</div>
	                  <div class="widget-icons pull-right">
	                    <a href="#" class="wminimize"><i class="icon-chevron-up"></i></a> 
	                    <a href="#" class="wclose"><i class="icon-remove"></i></a>
	                  </div>  
	                  <div class="clearfix"></div>
	                </div>
	                <div class="widget-content">
	                  <!-- Widget content -->
	                  <div class="padd">
	                    
	                    <ul class="chats">
	
	                      <!-- Chat by us. Use the class "by-me". -->
	                      <li class="by-me">
	                        <!-- Use the class "pull-left" in avatar -->
	                        <div class="avatar pull-left">
	                          <img src="img/user.jpg" alt=""/>
	                        </div>
	
	                        <div class="chat-content">
	                          <!-- In meta area, first include "name" and then "time" -->
	                          <div class="chat-meta">Ashok <span class="pull-right">3 hours ago</span></div>
	                          Vivamus diam elit diam, consectetur fermentum sed dapibus eget, Vivamus consectetur dapibus adipiscing elit.
	                          <div class="clearfix"></div>
	                        </div>
	                      </li> 
	
	                      <!-- Chat by other. Use the class "by-other". -->
	                      <li class="by-other">
	                        <!-- Use the class "pull-right" in avatar -->
	                        <div class="avatar pull-right">
	                          <img src="img/user.jpg" alt=""/>
	                        </div>
	
	                        <div class="chat-content">
	                          <!-- In the chat meta, first include "time" then "name" -->
	                          <div class="chat-meta">3 hours ago <span class="pull-right">Ravi</span></div>
	                          Vivamus diam elit diam, consectetur fermentum sed dapibus eget, Vivamus consectetur dapibus adipiscing elit.
	                          <div class="clearfix"></div>
	                        </div>
	                      </li>   
	
	                      <li class="by-me">
	                        <div class="avatar pull-left">
	                          <img src="img/user.jpg" alt=""/>
	                        </div>
	
	                        <div class="chat-content">
	                          <div class="chat-meta">Ashok <span class="pull-right">4 hours ago</span></div>
	                          Vivamus diam elit diam, consectetur fermentum sed dapibus eget, Vivamus consectetur dapibus adipiscing elit.
	                          <div class="clearfix"></div>
	                        </div>
	                      </li>                                                              
	
	                    </ul>
	
	                  </div>
	                  <!-- Widget footer -->
	                  <div class="widget-foot">
	                      
	                      <form class="form-inline">
							<div class="form-group">
								<input type="text" class="form-control" placeholder="Type your message here...">
							</div>
								<button type="submit" class="btn btn-default">Send</button>
	                      </form>
	
	
	                  </div>
	                </div>
	
	
	              </div> 
	            </div>
	
	            <!-- Recent posts widget -->
	            <div class="col-md-4">
	              <!-- Widget -->
	              <div class="widget">
	                <!-- Widget title -->
	                <div class="widget-head">
	                  <div class="pull-left">Recent Posts</div>
	                  <div class="widget-icons pull-right">
	                    <a href="#" class="wminimize"><i class="icon-chevron-up"></i></a> 
	                    <a href="#" class="wclose"><i class="icon-remove"></i></a>
	                  </div>  
	                  <div class="clearfix"></div>
	                </div>
	                <div class="widget-content">
	                  <!-- Widget content -->
	                  <div class="padd">
	                    
	
	                    <ul class="recent">
	
	
	                      <li>
	                        <div class="avatar pull-left">
	                          <img src="img/user.jpg" alt=""/>
	                        </div>
	
	                        <div class="recent-content">
	                          <div class="recent-meta">Posted on 25/1/2120 by Ashok</div>
	                          <div>Vivamus diam elit diam, consectetur fermentum sed dapibus eget, Vivamus consectetur dapibus adipiscing elit.
	                          </div>
	
	                          <div class="btn-group">
	                            <button class="btn btn-xs btn-default"><i class="icon-ok"></i> </button>
	                            <button class="btn btn-xs btn-default"><i class="icon-pencil"></i> </button>
	                            <button class="btn btn-xs btn-default"><i class="icon-remove"></i> </button>
	                          </div>
	                          <div class="clearfix"></div>
	                        </div>
	                      </li>
	
	
	
	                      <li>
	                        <div class="avatar pull-left">
	                          <img src="img/user.jpg" alt=""/>
	                        </div>
	
	                        <div class="recent-content">
	                          <div class="recent-meta">Posted on 25/1/2120 by Ashok</div>
	                          <div>Vivamus diam elit diam, consectetur fermentum sed dapibus eget, Vivamus consectetur dapibus adipiscing elit.
	                          </div>
	
	                          <div class="btn-group">
	                            <button class="btn btn-xs btn-default"><i class="icon-ok"></i> </button>
	                            <button class="btn btn-xs btn-default"><i class="icon-pencil"></i> </button>
	                            <button class="btn btn-xs btn-default"><i class="icon-remove"></i> </button>
	                          </div>
	                          <div class="clearfix"></div>
	                        </div>
	                      </li>
	
	
	
	                      <li>
	                        <div class="avatar pull-left">
	                          <img src="img/user.jpg" alt=""/>
	                        </div>
	
	                        <div class="recent-content">
	                          <div class="recent-meta">Posted on 25/1/2120 by Ashok</div>
	                          <div>Vivamus diam elit diam, consectetur fermentum sed dapibus eget, Vivamus consectetur dapibus adipiscing elit.
	                          </div>
	
	                          <div class="btn-group">
	                            <button class="btn btn-xs btn-default"><i class="icon-ok"></i> </button>
	                            <button class="btn btn-xs btn-default"><i class="icon-pencil"></i> </button>
	                            <button class="btn btn-xs btn-default"><i class="icon-remove"></i> </button>
	                          </div>
	                          <div class="clearfix"></div>
	                        </div>
	                      </li>                                        
	
	
	                    </ul>
	
	
	                  </div>
	                  <!-- Widget footer -->
	                  <div class="widget-foot">
	
	                    
	                      <ul class="pagination pull-right">
	                        <li><a href="#">Prev</a></li>
	                        <li><a href="#">1</a></li>
	                        <li><a href="#">2</a></li>
	                        <li><a href="#">3</a></li>
	                        <li><a href="#">4</a></li>
	                        <li><a href="#">Next</a></li>
	                      </ul>
	                    
	                    <div class="clearfix"></div>
	
	                  </div>
	                </div>
	
	              </div> 
	            </div>          
	
	            <!-- Recent comments widget -->
	            <div class="col-md-4">
	              <!-- Widget -->
	              <div class="widget">
	                <!-- Widget title -->
	                <div class="widget-head">
	                  <div class="pull-left">Recent Comments</div>
	                  <div class="widget-icons pull-right">
	                    <a href="#" class="wminimize"><i class="icon-chevron-up"></i></a> 
	                    <a href="#" class="wclose"><i class="icon-remove"></i></a>
	                  </div>  
	                  <div class="clearfix"></div>
	                </div>
	                <div class="widget-content">
	                  <!-- Widget content -->
	                  <div class="padd">
	
	                    <ul class="recent">
	
	
	                      <li>
	
	                        <div class="recent-content">
	                          <div class="recent-meta">Posted on 25/1/2120 by Ashok</div>
	                          <div>Vivamus diam elit diam, consectetur fermentum sed dapibus eget, Vivamus consectetur dapibus adipiscing elit.
	                          </div>
	
	                          <div class="btn-group">
	                            <button class="btn btn-xs btn-default"><i class="icon-ok"></i> </button>
	                            <button class="btn btn-xs btn-default"><i class="icon-pencil"></i> </button>
	                            <button class="btn btn-xs btn-default"><i class="icon-remove"></i> </button>
	                          </div>
	
	                          <button class="btn btn-xs btn-danger pull-right">Spam</button>
	
	                          <div class="clearfix"></div>
	                        </div>
	                      </li>
	
	
	
	                      <li>
	
	                        <div class="recent-content">
	                          <div class="recent-meta">Posted on 25/1/2120 by Ashok</div>
	                          <div>Vivamus diam elit diam, consectetur fermentum sed dapibus eget, Vivamus consectetur dapibus adipiscing elit.
	                          </div>
	
	                          <div class="btn-group">
	                            <button class="btn btn-xs btn-default"><i class="icon-ok"></i> </button>
	                            <button class="btn btn-xs btn-default"><i class="icon-pencil"></i> </button>
	                            <button class="btn btn-xs btn-default"><i class="icon-remove"></i> </button>
	                          </div>
	
	                          <button class="btn btn-xs btn-danger pull-right">Spam</button>
	
	                          <div class="clearfix"></div>
	                        </div>
	                      </li>
	
	
	
	                      <li>
	
	                        <div class="recent-content">
	                          <div class="recent-meta">Posted on 25/1/2120 by Ashok</div>
	                          <div>Vivamus diam elit diam, consectetur fermentum sed dapibus eget, Vivamus consectetur dapibus adipiscing elit.
	                          </div>
	
	                          <div class="btn-group">
	                            <button class="btn btn-xs btn-default"><i class="icon-ok"></i> </button>
	                            <button class="btn btn-xs btn-default"><i class="icon-pencil"></i> </button>
	                            <button class="btn btn-xs btn-default"><i class="icon-remove"></i> </button>
	                          </div>
	
	                          <button class="btn btn-xs btn-danger pull-right">Spam</button>
	
	                          <div class="clearfix"></div>
	                        </div>
	                      </li>                                        
	
	
	                    </ul>
	
	                  </div>
	                  <!-- Widget footer -->
	                  <div class="widget-foot">
	                    
	                   
	                      <ul class="pagination pull-right">
	                        <li><a href="#">Prev</a></li>
	                        <li><a href="#">1</a></li>
	                        <li><a href="#">2</a></li>
	                        <li><a href="#">3</a></li>
	                        <li><a href="#">4</a></li>
	                        <li><a href="#">Next</a></li>
	                      </ul>
	                   
	                    <div class="clearfix"></div>
	
	                  </div>
	                </div>  
	
	              </div> 
	
	            </div>
	          </div>
	
	
	          <div class="row">
	
	
	            <!-- Black widget -->
	            <div class="col-md-4">
	              <div class="widget wblack">
	                <!-- Widget title -->
	                <div class="widget-head">
	                  <div class="pull-left">Black Widget</div>
	                  <div class="widget-icons pull-right">
	                    <a href="#" class="wminimize"><i class="icon-chevron-up"></i></a> 
	                    <a href="#" class="wclose"><i class="icon-remove"></i></a>
	                  </div>  
	                  <div class="clearfix"></div>
	                </div>
	                <div class="widget-content">
	                  <!-- Widget content -->
	                  <div class="padd">
	                    <h4>This is Hero Unit</h4>
	                    <p>Nullam justo nunc, dignissim at convallis posuere, sodales dignissim eu orci. Duis a risus sed dolor placerat semper quis in urna. Nullam justo nunc, dignissim at convallis posuere, dignissim sodales eu orci. Duis a risus sed dolor placerat semper quis in urna.</p>
	                  </div>
	
	                  <div class="widget-foot">
	                    <a href="#" class="btn btn-danger">Visit Now</a> 
	                    <a href="#" class="btn btn-warning">Download</a>
	                  </div>
	                </div>
	              </div>
	            </div>
	
	            <!-- File Upload widget -->
	            <div class="col-md-4">
	              <div class="widget">
	                <!-- Widget title -->
	                <div class="widget-head">
	                  <div class="pull-left">File Upload</div>
	                  <div class="widget-icons pull-right">
	                    <a href="#" class="wminimize"><i class="icon-chevron-up"></i></a> 
	                    <a href="#" class="wclose"><i class="icon-remove"></i></a>
	                  </div>  
	                  <div class="clearfix"></div>
	                </div>
	                <div class="widget-content">
	                  <!-- Widget content -->
	                  <!-- File upload list starts -->
	                  <ul class="file-upload">
	
	                    <li>
	                      <!-- Icon with file name -->
	                      <strong><i class="icon-upload-alt"></i> File_Name_Here.Mp3</strong>
	                      <!-- Upload details -->
	                      <div class="file-meta">3.3 of 5MB - 5 mins - 1MB/Sec</div>
	                      <!-- Progress bar -->
	                      <div class="progress progress-animated progress-striped active">
							  <div class="progress-bar progress-bar-success" data-percentage="100">
								<span class="sr-only">80% Complete</span>
							  </div>
						  </div>
	                    </li>
	
	                    <li>
	                      <strong><i class="icon-ok"></i> Second_File.Mp3</strong>
	                      <div class="file-meta">5MB - 5 mins - Completed</div>
	                    </li>
	
	                    <li>
	                      <strong><i class="icon-ok"></i> Third_File_Here.Mp3</strong>
	                      <div class="file-meta">5MB - 5 mins - Stopped</div>
	                    </li>
	                                                           
	                  </ul>
	
	                  <div class="widget-foot">
	                    <button class="btn btn-default pull-right">Clear All</button>
	                    <div class="clearfix"></div>
	                  </div>
	
	                </div>
	              </div>
	            </div>
	
	            <!-- Server Status -->
	            <div class="col-md-4">
	              <div class="widget">
	                <!-- Widget title -->
	                <div class="widget-head">
	                  <div class="pull-left">Server Status</div>
	                  <div class="widget-icons pull-right">
	                    <a href="#" class="wminimize"><i class="icon-chevron-up"></i></a> 
	                    <a href="#" class="wclose"><i class="icon-remove"></i></a>
	                  </div>  
	                  <div class="clearfix"></div>
	                </div>
	                <div class="widget-content">
	                  <!-- Widget content -->
	                  
	                  <table class="table table-striped table-bordered table-hover">
	                    <tr>
	                      <td>Domain</td>
	                      <td>sitedomain.com</td>
	                    </tr> 
	                    <tr>
	                      <td>IP Address</td>
	                      <td>192.425.2.4</td>
	                    </tr> 
	                    <tr>
	                      <td>Disk Space</td>
	                      <td>600GB / 60000GB</td>
	                    </tr> 
	                    <tr>
	                      <td>Bandwidth</td>
	                      <td>1000GB / 2000GB</td>
	                    </tr> 
	                    <tr>
	                      <td>PHP Version</td>
	                      <td>5.1.1</td>
	                    </tr> 
	                    <tr>
	                      <td>MySQL Databases</td>
	                      <td>10</td>
	                    </tr>                                                                                                     
	                  </table>
	
	                  <div class="widget-foot">
	                  </div>
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
