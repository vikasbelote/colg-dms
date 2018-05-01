<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
	<meta charset="utf-8" />
	<title>Santan | Dashboard</title>
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
	<tiles:insertAttribute name="page-style" />
	<!-- ================== END PAGE LEVEL STYLE ================== -->
	
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="./assets/plugins/pace/pace.min.js"></script>
	<!-- ================== END BASE JS ================== -->
</head>
<body>
	<!-- begin #page-loader -->
	<div id="page-loader" class="fade show"><span class="spinner"></span></div>
	<!-- end #page-loader -->
	
	<!-- begin #page-container -->
	<div id="page-container" class="fade page-sidebar-fixed page-header-fixed">
		<!-- begin #header -->
		<tiles:insertAttribute name="header" />
		<!-- end #header -->
		
		<!-- begin #sidebar -->
		<tiles:insertAttribute name="sidebar" />
		<!-- end #sidebar -->
		
		<!-- begin #content -->
		<tiles:insertAttribute name="body" />
		<!-- end #content -->
		
		<!-- begin scroll to top btn -->
		<a href="javascript:;" class="btn btn-icon btn-circle btn-success btn-scroll-to-top fade" data-click="scroll-top"><i class="fa fa-angle-up"></i></a>
		<!-- end scroll to top btn -->
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
	
	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
	<tiles:insertAttribute name="page-script" />
	<!-- ================== END PAGE LEVEL JS ================== -->
	
	<script>
		$(document).ready(function() {
			App.init();
		});
	</script>
	
	<!-- ================== BEGIN INLINE SCRIPT ================== -->
	<tiles:insertAttribute name="inline-script" />
	<!-- ================== END INLINE SCRIPT ================== -->
</body>
</html>
