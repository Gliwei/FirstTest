<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="${rootPath}js/jquery-1.7.1.js"></script>
<link rel="stylesheet" type="text/css" href="${rootPath}css/style4.css" />
<title>Mall</title>
<script type="javascript">
$(function(){
	
});
</script>
</head>
<body>
	<%@include file="header.jsp"%>
	<div class="container">
		<div class="base">
		
			<section class="cr-container">				
				<input id="select-img-1" name="radio-set-1" type="radio" class="cr-selector-img-1" checked/>
				<label for="select-img-1" class="cr-label-img-1">1</label>
				
				<input id="select-img-2" name="radio-set-1" type="radio" class="cr-selector-img-2" />
				<label for="select-img-2" class="cr-label-img-2">2</label>
				
				<input id="select-img-3" name="radio-set-1" type="radio" class="cr-selector-img-3" />
				<label for="select-img-3" class="cr-label-img-3">3</label>
				
				<input id="select-img-4" name="radio-set-1" type="radio" class="cr-selector-img-4" />
				<label for="select-img-4" class="cr-label-img-4">4</label>
				
				<div class="clr"></div>	
				<div class="cr-bgimg">
					<div>
						<span>Slice 1 - Image 1</span>
						<span>Slice 1 - Image 2</span>
						<span>Slice 1 - Image 3</span>
						<span>Slice 1 - Image 4</span>
					</div>
					<div>
						<span>Slice 2 - Image 1</span>
						<span>Slice 2 - Image 2</span>
						<span>Slice 2 - Image 3</span>
						<span>Slice 2 - Image 4</span>
					</div>
					<div>
						<span>Slice 3 - Image 1</span>
						<span>Slice 3 - Image 2</span>
						<span>Slice 3 - Image 3</span>
						<span>Slice 3 - Image 4</span>
					</div>
					<div>
						<span>Slice 4 - Image 1</span>
						<span>Slice 4 - Image 2</span>
						<span>Slice 4 - Image 3</span>
						<span>Slice 4 - Image 4</span>
					</div>
				</div>
				<!-- <div class="cr-titles">
					<h3><span>Serendipity</span><span>What you've been dreaming of</span></h3>
					<h3><span>Adventure</span><span>Where the fun begins</span></h3>
					<h3><span>Nature</span><span>Unforgettable eperiences</span></h3>
					<h3><span>Serenity</span><span>When silence touches nature</span></h3>
				</div> -->
			</section>
			
			<div style="height: 500px; text-align: center;">建设中</div>
		</div>
	</div>
	<%@include file="footer.html"%>
</body>
</html>