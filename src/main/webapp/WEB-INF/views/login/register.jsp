<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
	<meta charset="utf-8" />
	<title>Register Page</title>
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
	
	<!-- ================== BEGIN PAGE LEVEL STYLE ================== -->
    <link href="./assets/plugins/gritter/css/jquery.gritter.css" rel="stylesheet" />
	<!-- ================== END PAGE LEVEL STYLE ================== -->
	
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
	    <!-- begin register -->
        <div class="register register-with-news-feed">
            <!-- begin news-feed -->
            <div class="news-feed">
                <div class="news-image" style="background-image: url(./assets/img/login-bg/login-bg-9.jpg)"></div>
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
                <!-- begin register-header -->
                <h1 class="register-header">
                    Sign Up
                    <small>Create your Santan Groupn User Account. It’s free and always will be.</small>
                </h1>
                <!-- end register-header -->
                <!-- begin register-content -->
                <div class="register-content">
                    
                    <form:form id="registrationForm" commandName="userModel"
								class="margin-bottom-0" action="register">
                    
                    
                        <label class="control-label">Name <span class="text-danger">*</span></label>
                        <div class="row row-space-10">
                            <div class="col-md-6 m-b-15">
                                <form:input path="personModel.firstName" class="form-control" placeholder="First name"  />
                            </div>
                            <div class="col-md-6 m-b-15">
                                <form:input path="personModel.lastName" class="form-control" placeholder="Last name"  />
                            </div>
                        </div>
                        <label class="control-label">Email <span class="text-danger">*</span></label>
                        <div class="row m-b-15">
                            <div class="col-md-12">
                                <form:input path="userName" class="form-control"
											placeholder="Email address"  />
                            </div>
                        </div>
                        <label class="control-label">Password <span class="text-danger">*</span></label>
                        <div class="row m-b-15">
                            <div class="col-md-12">
                                <form:password path="userPassword" class="form-control"
											placeholder="Password"  />
                            </div>
                        </div>
                        <div class="checkbox checkbox-css m-b-30">
                        	<div class="checkbox checkbox-css m-b-30">
								<input type="checkbox" id="agreement_checkbox" value="">
								<label for="agreement_checkbox">
									By clicking Sign Up, you agree to our <a href="javascript:;">Terms</a> and that you have read our <a href="javascript:;">Data Policy</a>, including our <a href="javascript:;">Cookie Use</a>.
								</label>
							</div>
                        </div>
                        <div class="register-buttons">
                            <button type="submit" class="btn btn-primary btn-block btn-lg">Sign Up</button>
                        </div>
                        <div class="m-t-20 m-b-40 p-b-40 text-inverse">
                            Already a member? Click <a href="login">here</a> to login.
                        </div>
                        <hr />
                        <p class="text-center">
                            &copy; Color Admin All Right Reserved 2018
                        </p>
                    </form:form>
                </div>
                <!-- end register-content -->
            </div>
            <!-- end right-content -->
        </div>
        <!-- end register -->
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
	<script src="./assets/plugins/bootstrap-sweetalert/sweetalert.min.js"></script>

	<script>
		$(document).ready(function() {
			App.init();
		});
	</script>
	
	<c:if test="${not empty success}">
		<c:choose>
			<c:when test="${success}">
				<script>
					$(document).ready(function() {
						swal({
							title: '${msg}',
							icon: 'success',
							buttons: {
								cancel: {
									text: 'Cancel',
									value: null,
									visible: true,
									className: 'btn btn-success',
									closeModal: true,
								}
							}
						});
					});
				</script>
			</c:when>
			<c:otherwise>
				<script>
					$(document).ready(function() {
						swal({
							title: '${msg}',
							icon: 'error',
							buttons: {
								cancel: {
									text: 'Cancel',
									value: null,
									visible: true,
									className: 'btn btn-default',
									closeModal: true,
								}
							}
						});
					});
				</script>
			</c:otherwise>
		</c:choose>
	</c:if>
	
	
	
	
</body>
</html>
