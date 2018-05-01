<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
	<meta charset="utf-8" />
	<title>Santan Login Page</title>
	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	
	<!-- ================== BEGIN BASE CSS STYLE ================== -->
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
	<link href="./assets/plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet" />
	<link href="./assets/plugins/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
	<link href="./assets/plugins/font-awesome/5.0/css/fontawesome-all.min.css" rel="stylesheet" />
	<link href="./assets/plugins/animate/animate.min.css" rel="stylesheet" />
	<link href="./assets/css/default/style.min.css" rel="stylesheet" />
	<link href="./assets/css/default/style-responsive.min.css" rel="stylesheet" />
	<link href="./assets/css/default/theme/default.css" rel="stylesheet" id="theme" />
	<!-- ================== END BASE CSS STYLE ================== -->
	
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="./assets/plugins/pace/pace.min.js"></script>
	<!-- ================== END BASE JS ================== -->
</head>
<body class="pace-top bg-white">
	<!-- begin #page-loader -->
	<div id="page-loader" class="fade show"><span class="spinner"></span></div>
	<!-- end #page-loader -->
	
	<!-- begin #page-container -->
	<div id="page-container" class="fade">
	    <!-- begin login -->
        <div class="login login-with-news-feed">
            <!-- begin news-feed -->
            <div class="news-feed">
                <div class="news-image" style="background-image: url(./assets/img/login-bg/login-bg-11.jpg)"></div>
                <div class="news-caption">
                    <h4 class="caption-title"><b>Santan</b> Group App</h4>
                    <p>
                        small text slogan goes here....
                    </p>
                </div>
            </div>
            <!-- end news-feed -->
            <!-- begin right-content -->
            <div class="right-content">
                <!-- begin login-header -->
                <div class="login-header">
                    <div class="brand">
                        <span class="logo"></span> <b>Santan Group</b> Login
                        <small>small text slogan goes here....</small>
                    </div>
                    <div class="icon">
                        <i class="fa fa-sign-in"></i>
                    </div>
                </div>
                <!-- end login-header -->
                <!-- begin login-content -->
                <div class="login-content">
                    
                     <form:form id="loginForm" commandName="userModel"
								class="margin-bottom-0" action="login">
                    
                        <div class="form-group m-b-15">
                            <form:input path="userName" class="form-control"
											placeholder="Email address"  />
                        </div>
                        <div class="form-group m-b-15">
                            <form:password path="userPassword" class="form-control"
											placeholder="Password"  />
                        </div>
                        <div class="checkbox checkbox-css m-b-30">
							<input type="checkbox" id="remember_me_checkbox" value="" />
							<label for="remember_me_checkbox">
								Remember Me
							</label>
						</div>
                        <div class="login-buttons">
                            <button type="submit" class="btn btn-success btn-block btn-lg">Sign me in</button>
                        </div>
                        <div class="m-t-20 m-b-40 p-b-40 text-inverse">
                            Not a member yet? Click <a href="register" class="text-success">here</a> to register.
                        </div>
                        <hr />
                        <p class="text-center text-grey-darker">
                            &copy; Color Admin All Right Reserved 2018
                        </p>
                    </form:form>
                </div>
                <!-- end login-content -->
            </div>
            <!-- end right-container -->
        </div>
        <!-- end login -->
	</div>
	<!-- end page container -->
	
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="./assets/plugins/jquery/jquery-3.2.1.min.js"></script>
	<script src="./assets/plugins/jquery-ui/jquery-ui.min.js"></script>
	<script src="./assets/plugins/bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>
	<script src="./assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="./assets/plugins/js-cookie/js.cookie.js"></script>
	<script src="./assets/js/theme/default.min.js"></script>
	<script src="./assets/js/apps.min.js"></script>
	<!-- ================== END BASE JS ================== -->

	<script>
		$(document).ready(function() {
			App.init();
		});
	</script>
</body>
</html>
