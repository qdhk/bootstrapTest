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
	          <li class="has_sub"><a href="#" class="open"><i class="icon-file-alt"></i> Pages #1  <span class="pull-right"><i class="icon-chevron-right"></i></span></a>
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
	        <!-- Page heading -->
		      <h2 class="pull-left">Profile
	          <!-- page meta -->
	          <span class="page-meta">Something Goes Here</span>
	        </h2>
	
	
	        <!-- Breadcrumb -->
	        <div class="bread-crumb pull-right">
	          <a href="index.jsp"><i class="icon-home"></i> Home</a> 
	          <!-- Divider -->
	          <span class="divider">/</span> 
	          <a href="#" class="bread-current">Profile</a>
	        </div>
	
	        <div class="clearfix"></div>
	
		    </div>
		    <!-- Page heading ends -->
	
	
	
		    <!-- Matter -->
	
		    <div class="matter">
	        <div class="container">
	
	          <div class="row">
	
	            <div class="col-md-12">
	
	              <div class="widget wred">
	                <div class="widget-head">
	                  <div class="pull-left">Profile</div>
	                  <div class="widget-icons pull-right">
	                    <a href="#" class="wminimize"><i class="icon-chevron-up"></i></a> 
	                    <a href="#" class="wclose"><i class="icon-remove"></i></a>
	                  </div>
	                  <div class="clearfix"></div>
	                </div>
	
	                <div class="widget-content">
	                  <div class="padd">
	                    
	                    <!-- Profile form -->
	                   
	                                    <div class="form profile">
	                                      <!-- Edit profile form (not working)-->
	                                      <form class="form-horizontal">
	                                          <!-- Name -->
	                                          <div class="form-group">
	                                            <label class="control-label col-lg-3" for="name1">Name</label>
	                                            <div class="col-lg-6">
	                                              <input type="text" class="form-control" id="name1">
	                                            </div>
	                                          </div>   
	                                          <!-- Email -->
	                                          <div class="form-group">
	                                            <label class="control-label col-lg-3" for="email1">Email</label>
	                                            <div class="col-lg-6">
	                                              <input type="text" class="form-control" id="email1">
	                                            </div>
	                                          </div>
	                                          <!-- Telephone -->
	                                          <div class="form-group">
	                                            <label class="control-label col-lg-3" for="telephone">Telephone</label>
	                                            <div class="col-lg-6">
	                                              <input type="text" class="form-control" id="telephone">
	                                            </div>
	                                          </div>  
	                                          <!-- Address -->
	                                          <div class="form-group">
	                                            <label class="control-label col-lg-3" for="address">Address</label>
	                                            <div class="col-lg-6">
	                                              <textarea class="form-control" id="address"></textarea>
	                                            </div>
	                                          </div>                           
	                                          <!-- Country -->
	                                          <div class="form-group">
	                                            <label class="control-label col-lg-3">Country</label>
	                                            <div class="col-lg-6">                               
	                                                <select class="form-control">
	                                                <option value=""> --- Please Select --- </option>
	                                          <option value="1">Afghanistan</option>
	                                                        <option value="2">Albania</option>
	                                                        <option value="3">Algeria</option>
	                                                        <option value="4">American Samoa</option>
	                                                        <option value="5">Andorra</option>
	                                                        <option value="6">Angola</option>
	                                                        <option value="7">Anguilla</option>
	                                                        <option value="8">Antarctica</option>
	                                                        <option value="9">Antigua and Barbuda</option>
	                                                        <option value="10">Argentina</option>
	                                                        <option value="11">Armenia</option>
	                                                        <option value="12">Aruba</option>
	                                                        <option value="13">Australia</option>
	                                                        <option value="14">Austria</option>
	                                                        <option value="15">Azerbaijan</option>
	                                                        <option value="16">Bahamas</option>
	                                                        <option value="17">Bahrain</option>
	                                                        <option value="18">Bangladesh</option>
	                                                        <option value="19">Barbados</option>
	                                                        <option value="20">Belarus</option>
	                                                        <option value="21">Belgium</option>
	                                                        <option value="22">Belize</option>
	                                                        <option value="23">Benin</option>
	                                                        <option value="24">Bermuda</option>
	                                                        <option value="25">Bhutan</option>
	                                                        <option value="26">Bolivia</option>
	                                                        <option value="27">Bosnia and Herzegowina</option>
	                                                        <option value="28">Botswana</option>
	                                                        <option value="29">Bouvet Island</option>
	                                                        <option value="30">Brazil</option>
	                                                        <option value="31">British Indian Ocean Territory</option>
	                                                        <option value="32">Brunei Darussalam</option>
	                                                        <option value="33">Bulgaria</option>
	                                                        <option value="34">Burkina Faso</option>
	                                                        <option value="35">Burundi</option>
	                                                        <option value="36">Cambodia</option>
	                                                        <option value="37">Cameroon</option>
	                                                        <option value="38">Canada</option>
	                                                        <option value="39">Cape Verde</option>
	                                                        <option value="40">Cayman Islands</option>
	                                                        <option value="41">Central African Republic</option>
	                                                        <option value="42">Chad</option>
	                                                        <option value="43">Chile</option>
	                                                        <option value="44">China</option>
	                                                        <option value="45">Christmas Island</option>
	                                                        <option value="46">Cocos (Keeling) Islands</option>
	                                                        <option value="47">Colombia</option>
	                                                        <option value="48">Comoros</option>
	                                                        <option value="49">Congo</option>
	                                                        <option value="50">Cook Islands</option>
	                                                        <option value="51">Costa Rica</option>
	                                                        <option value="52">Cote D'Ivoire</option>
	                                                        <option value="53">Croatia</option>
	                                                        <option value="54">Cuba</option>
	                                                        <option value="55">Cyprus</option>
	                                                        <option value="56">Czech Republic</option>
	                                                        <option value="237">Democratic Republic of Congo</option>
	                                                        <option value="57">Denmark</option>
	                                                        <option value="58">Djibouti</option>
	                                                        <option value="59">Dominica</option>
	                                                        <option value="60">Dominican Republic</option>
	                                                        <option value="61">East Timor</option>
	                                                        <option value="62">Ecuador</option>
	                                                        <option value="63">Egypt</option>
	                                                        <option value="64">El Salvador</option>
	                                                        <option value="65">Equatorial Guinea</option>
	                                                        <option value="66">Eritrea</option>
	                                                        <option value="67">Estonia</option>
	                                                        <option value="68">Ethiopia</option>
	                                                        <option value="69">Falkland Islands (Malvinas)</option>
	                                                        <option value="70">Faroe Islands</option>
	                                                        <option value="71">Fiji</option>
	                                                        <option value="72">Finland</option>
	                                                        <option value="73">France</option>
	                                                        <option value="74">France, Metropolitan</option>
	                                                        <option value="75">French Guiana</option>
	                                                        <option value="76">French Polynesia</option>
	                                                        <option value="77">French Southern Territories</option>
	                                                        <option value="78">Gabon</option>
	                                                        <option value="79">Gambia</option>
	                                                        <option value="80">Georgia</option>
	                                                        <option value="81">Germany</option>
	                                                        <option value="82">Ghana</option>
	                                                        <option value="83">Gibraltar</option>
	                                                        <option value="84">Greece</option>
	                                                        <option value="85">Greenland</option>
	                                                        <option value="86">Grenada</option>
	                                                        <option value="87">Guadeloupe</option>
	                                                        <option value="88">Guam</option>
	                                                        <option value="89">Guatemala</option>
	                                                        <option value="90">Guinea</option>
	                                                        <option value="91">Guinea-bissau</option>
	                                                        <option value="92">Guyana</option>
	                                                        <option value="93">Haiti</option>
	                                                        <option value="94">Heard and Mc Donald Islands</option>
	                                                        <option value="95">Honduras</option>
	                                                        <option value="96">Hong Kong</option>
	                                                        <option value="97">Hungary</option>
	                                                        <option value="98">Iceland</option>
	                                                        <option value="99">India</option>
	                                                        <option value="100">Indonesia</option>
	                                                        <option value="101">Iran (Islamic Republic of)</option>
	                                                        <option value="102">Iraq</option>
	                                                        <option value="103">Ireland</option>
	                                                        <option value="104">Israel</option>
	                                                        <option value="105">Italy</option>
	                                                        <option value="106">Jamaica</option>
	                                                        <option value="107">Japan</option>
	                                                        <option value="108">Jordan</option>
	                                                        <option value="109">Kazakhstan</option>
	                                                        <option value="110">Kenya</option>
	                                                        <option value="111">Kiribati</option>
	                                                        <option value="113">Korea, Republic of</option>
	                                                        <option value="114">Kuwait</option>
	                                                        <option value="115">Kyrgyzstan</option>
	                                                        <option value="116">Lao People's Democratic Republic</option>
	                                                        <option value="117">Latvia</option>
	                                                        <option value="118">Lebanon</option>
	                                                        <option value="119">Lesotho</option>
	                                                        <option value="120">Liberia</option>
	                                                        <option value="121">Libyan Arab Jamahiriya</option>
	                                                        <option value="122">Liechtenstein</option>
	                                                        <option value="123">Lithuania</option>
	                                                        <option value="124">Luxembourg</option>
	                                                        <option value="125">Macau</option>
	                                                        <option value="126">Macedonia</option>
	                                                        <option value="127">Madagascar</option>
	                                                        <option value="128">Malawi</option>
	                                                        <option value="129">Malaysia</option>
	                                                        <option value="130">Maldives</option>
	                                                        <option value="131">Mali</option>
	                                                        <option value="132">Malta</option>
	                                                        <option value="133">Marshall Islands</option>
	                                                        <option value="134">Martinique</option>
	                                                        <option value="135">Mauritania</option>
	                                                        <option value="136">Mauritius</option>
	                                                        <option value="137">Mayotte</option>
	                                                        <option value="138">Mexico</option>
	                                                        <option value="139">Micronesia, Federated States of</option>
	                                                        <option value="140">Moldova, Republic of</option>
	                                                        <option value="141">Monaco</option>
	                                                        <option value="142">Mongolia</option>
	                                                        <option value="143">Montserrat</option>
	                                                        <option value="144">Morocco</option>
	                                                        <option value="145">Mozambique</option>
	                                                        <option value="146">Myanmar</option>
	                                                        <option value="147">Namibia</option>
	                                                        <option value="148">Nauru</option>
	                                                        <option value="149">Nepal</option>
	                                                        <option value="150">Netherlands</option>
	                                                        <option value="151">Netherlands Antilles</option>
	                                                        <option value="152">New Caledonia</option>
	                                                        <option value="153">New Zealand</option>
	                                                        <option value="154">Nicaragua</option>
	                                                        <option value="155">Niger</option>
	                                                        <option value="156">Nigeria</option>
	                                                        <option value="157">Niue</option>
	                                                        <option value="158">Norfolk Island</option>
	                                                        <option value="112">North Korea</option>
	                                                        <option value="159">Northern Mariana Islands</option>
	                                                        <option value="160">Norway</option>
	                                                        <option value="161">Oman</option>
	                                                        <option value="162">Pakistan</option>
	                                                        <option value="163">Palau</option>
	                                                        <option value="164">Panama</option>
	                                                        <option value="165">Papua New Guinea</option>
	                                                        <option value="166">Paraguay</option>
	                                                        <option value="167">Peru</option>
	                                                        <option value="168">Philippines</option>
	                                                        <option value="169">Pitcairn</option>
	                                                        <option value="170">Poland</option>
	                                                        <option value="171">Portugal</option>
	                                                        <option value="172">Puerto Rico</option>
	                                                        <option value="173">Qatar</option>
	                                                        <option value="174">Reunion</option>
	                                                        <option value="175">Romania</option>
	                                                        <option value="176">Russian Federation</option>
	                                                        <option value="177">Rwanda</option>
	                                                        <option value="178">Saint Kitts and Nevis</option>
	                                                        <option value="179">Saint Lucia</option>
	                                                        <option value="180">Saint Vincent and the Grenadines</option>
	                                                        <option value="181">Samoa</option>
	                                                        <option value="182">San Marino</option>
	                                                        <option value="183">Sao Tome and Principe</option>
	                                                        <option value="184">Saudi Arabia</option>
	                                                        <option value="185">Senegal</option>
	                                                        <option value="186">Seychelles</option>
	                                                        <option value="187">Sierra Leone</option>
	                                                        <option value="188">Singapore</option>
	                                                        <option value="189">Slovak Republic</option>
	                                                        <option value="190">Slovenia</option>
	                                                        <option value="191">Solomon Islands</option>
	                                                        <option value="192">Somalia</option>
	                                                        <option value="193">South Africa</option>
	                                                        <option value="194">South Georgia &amp; South Sandwich Islands</option>
	                                                        <option value="195">Spain</option>
	                                                        <option value="196">Sri Lanka</option>
	                                                        <option value="197">St. Helena</option>
	                                                        <option value="198">St. Pierre and Miquelon</option>
	                                                        <option value="199">Sudan</option>
	                                                        <option value="200">Suriname</option>
	                                                        <option value="201">Svalbard and Jan Mayen Islands</option>
	                                                        <option value="202">Swaziland</option>
	                                                        <option value="203">Sweden</option>
	                                                        <option value="204">Switzerland</option>
	                                                        <option value="205">Syrian Arab Republic</option>
	                                                        <option value="206">Taiwan</option>
	                                                        <option value="207">Tajikistan</option>
	                                                        <option value="208">Tanzania, United Republic of</option>
	                                                        <option value="209">Thailand</option>
	                                                        <option value="210">Togo</option>
	                                                        <option value="211">Tokelau</option>
	                                                        <option value="212">Tonga</option>
	                                                        <option value="213">Trinidad and Tobago</option>
	                                                        <option value="214">Tunisia</option>
	                                                        <option value="215">Turkey</option>
	                                                        <option value="216">Turkmenistan</option>
	                                                        <option value="217">Turks and Caicos Islands</option>
	                                                        <option value="218">Tuvalu</option>
	                                                        <option value="219">Uganda</option>
	                                                        <option value="220">Ukraine</option>
	                                                        <option value="221">United Arab Emirates</option>
	                                                        <option value="222">United Kingdom</option>
	                                                        <option value="223" selected="selected">United States</option>
	                                                        <option value="224">United States Minor Outlying Islands</option>
	                                                        <option value="225">Uruguay</option>
	                                                        <option value="226">Uzbekistan</option>
	                                                        <option value="227">Vanuatu</option>
	                                                        <option value="228">Vatican City State (Holy See)</option>
	                                                        <option value="229">Venezuela</option>
	                                                        <option value="230">Viet Nam</option>
	                                                        <option value="231">Virgin Islands (British)</option>
	                                                        <option value="232">Virgin Islands (U.S.)</option>
	                                                        <option value="233">Wallis and Futuna Islands</option>
	                                                        <option value="234">Western Sahara</option>
	                                                        <option value="235">Yemen</option>
	                                                        <option value="236">Yugoslavia</option>
	                                                        <option value="238">Zambia</option>
	                                                        <option value="239">Zimbabwe</option>
	                                                </select>  
	                                            </div>
	                                          </div>  
	                                          <!-- State -->
	                                          <div class="form-group">
	                                            <label class="control-label col-lg-3" for="city">State</label>
	                                            <div class="col-lg-6">
	                                              <input type="text" class="form-control" id="state">
	                                            </div>
	                                          </div>                                               
	                                          <!-- City -->
	                                          <div class="form-group">
	                                            <label class="control-label col-lg-3" for="city">City</label>
	                                            <div class="col-lg-6">
	                                              <input type="text" class="form-control" id="city">
	                                            </div>
	                                          </div>                                                                                                                                         
	                                          <!-- Username -->
	                                          <div class="form-group">
	                                            <label class="control-label col-lg-3" for="username2">Username</label>
	                                            <div class="col-lg-6">
	                                              <input type="text" class="form-control" id="username2">
	                                            </div>
	                                          </div>
	                                          <!-- Password -->
	                                          <div class="form-group">
	                                            <label class="control-label col-lg-3" for="password2">Password</label>
	                                            <div class="col-lg-6">
	                                              <input type="password" class="form-control" id="password2">
	                                            </div>
	                                          </div>
	                                          <!-- Checkbox -->
	                                          <div class="form-group">
	                                             <div class="col-lg-6 col-lg-offset-1">
													
	                                                <label class="checkbox inline">
	                                                   <input type="checkbox" id="inlineCheckbox3" value="agree"> Agree with Terms and Conditions
	                                                </label>
	                                             </div>
	                                          </div> 
	                                          
	                                          <!-- Buttons -->
	                                          <div class="form-group">
	                                             <!-- Buttons -->
												 <div class="col-lg-6 col-lg-offset-1">
													<button type="submit" class="btn btn-success">Update</button>
													<button type="reset" class="btn btn-default">Reset</button>
												</div>
	                                          </div>
	                                      </form>
	                                    </div>
	
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
