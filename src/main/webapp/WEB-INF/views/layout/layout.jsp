<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!DOCTYPE HTML>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<title>Spring Boot</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<!-- Header -->
<tiles:insertAttribute name="header" />
</head>
<body>
	<!-- Menu -->
	<tiles:insertAttribute name="menu" />
	<!-- Body -->
	<tiles:insertAttribute name="body" />
	<!-- Footer -->
	<tiles:insertAttribute name="footer" />
</body>
</html>