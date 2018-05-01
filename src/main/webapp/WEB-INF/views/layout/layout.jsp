<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
	<meta charset="utf-8" />
	<title>Santan Group</title>
	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	
	<!-- ================== BEGIN BASE CSS STYLE ================== -->
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
	<link href="./assets/plugins/bootstrap3/css/bootstrap.min.css" rel="stylesheet" />
	<link href="./assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
	<link href="./assets/plugins/animate/animate.min.css" rel="stylesheet" />
	<link href="./assets/css/e-commerce/style.min.css" rel="stylesheet" />
	<link href="./assets/css/e-commerce/style-responsive.min.css" rel="stylesheet" />
	<link href="./assets/css/e-commerce/theme/default.css" id="theme" rel="stylesheet" />
	<!-- ================== END BASE CSS STYLE ================== -->
	
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="./assets/plugins/pace/pace.min.js"></script>
</head>
<body>
    <!-- BEGIN #page-container -->
    <div id="page-container" class="fade">
        <!-- BEGIN #top-nav -->
        <tiles:insertAttribute name="top-navbar" />
        <!-- END #top-nav -->
    
        <!-- BEGIN #header -->
        <tiles:insertAttribute name="header" />
        <!-- END #header -->
        
        <!-- BEGIN #slider -->
        <tiles:insertAttribute name="slider" />
        <!-- END #slider -->
    
        <!-- BEGIN #promotions -->
        <tiles:insertAttribute name="promotions" />
        <!-- END #promotions -->
        
        <!-- BEGIN #policy -->
        <tiles:insertAttribute name="policy" />
        <!-- END #policy -->
    
        <!-- BEGIN #subscribe -->
        <tiles:insertAttribute name="subscribe" />
        <!-- END #subscribe -->
    
        <!-- BEGIN #footer -->
        <tiles:insertAttribute name="footer" />
        <!-- END #footer -->
    </div>
    <!-- END #page-container -->
	
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="./assets/plugins/jquery/jquery-3.2.1.min.js"></script>
	<script src="./assets/plugins/bootstrap3/js/bootstrap.min.js"></script>
	<script src="./assets/plugins/js-cookie/js.cookie.js"></script>
	<script src="./assets/js/e-commerce/apps.min.js"></script>
	<!-- ================== END BASE JS ================== -->
	
	<script>
	    $(document).ready(function() {
	        App.init();
	    });
	</script>
</body>
</html>
