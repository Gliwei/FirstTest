<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Commodity List</title>
<link rel="stylesheet" type="text/css" href="${rootPath}css/commodity.css"/>
</head>
<body>
	<%@include file="header.jsp" %>
	<div class="container">
   		<div class="top">
   			<div class="base">
	    		<div class="left">
	    			<div><img src="${commodity.mainPicture}"></div>
	    		</div>
	    		<div class="middle">
					<div>${commodity.title}</div>
					<div>${commodity.subtitle}</div>
				</div>
	    		<div class="right">right</div>
    		</div>
		</div>
	</div>
	<%@include file="footer.html" %>
</body>
</html>