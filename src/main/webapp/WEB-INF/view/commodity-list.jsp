<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Commodity list</title>
<link rel="stylesheet" type="text/css" href="/ft/css/leftFixed.css"/>
<script type="text/javascript" src="/ft/js/jquery-1.7.1.js"></script>
<script type="text/javascript" src="/ft/js/leftFixed.js"></script>
</head>

<body>
	<div class="header">
		<div class="top-bar"></div>
    	<div class="base">
        	<div class="search-wrap">
        		<div class="logo">
        		</div>
        		<div class="search-box">
        		</div>
            </div>
            <div class="bar-warp">
            	<ul class="bar">
            		<li class="f">~</li>
            		<li>Home</li>
            		<li>团购</li>
            		<li>秒杀</li>
            	</ul>
            </div>
        </div>
    </div>
    <div class="container">
    	<div class="base">
    		<div class="nav">
            	<div class="inner">
                	This is nav
                </div>
            </div>
            <div class="content">
            	<div class="select-box">
                	select-box
                </div>
                <div class="commodity-box">
                    <ul class="clist">
                    
                    	<c:forEach items="${list}" var="item">
                        <li>
                            <div class="inner">
                                <div class="c-picture">
                                    <a href="${item.sku}">
                                        <img src="${item.mainPicture}" width="220px" hignt="220px">
                                    </a>
                                </div>
                                <div class="c-title">
                                    <a href="${item.sku}">${item.title} ${item.subtitle}</a>
                                </div>
                                <div class="c-price"><strong>￥${item.salePrice}</strong></div>
                            </div>
                        </li>
                        </c:forEach>
                        
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="footer">
    	<div class="base">
        	<div class="inner">
    			<a href="https://github.com/Gliwei/FirstTest" style="color:#EEE">Source</a>
    			&nbsp;&nbsp;Powered by Gliwei.
            </div>
        </div>
    </div>
</body>
</html>