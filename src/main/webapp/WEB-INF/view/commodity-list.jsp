<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Commodity list</title>
<link rel="stylesheet" type="text/css" href="/mall/css/leftFixed.css"/>
<script type="text/javascript" src="/mall/js/jquery-1.7.1.js"></script>
<script type="text/javascript" src="/mall/js/jquery-color.js"></script>
<script type="text/javascript" src="/mall/js/leftFixed.js"></script>
</head>

<body>
	<div class="header">
		<div class="top-bar">
			<div class="base">
				<ul class="left-menu">
					<li><a href="#">G-Mall首页</a></li>
					<li><a href="#">Welcome to G-Mall</a></li>
					<li><a href="#">请登录</a></li>
					<li><a href="#">免费注册</a></li>
				</ul>
				<ul class="right-menu">
					<li><a href="#">我的订单</a></li>
					<li><a href="#">购物车(0)</a></li>
					<li><a href="#">收藏夹</a></li>
					<li><a href="#">我的关注</a></li>
				</ul>
			</div>
		</div>
    	<div class="base">
        	<div class="logo-line">
        		<div class="logo">G-Mall</div>
        		<div class="search-warp">
        			<div class="s-box">
        				<input class="s-inp" type="text" placeholder="输入关键字搜索"/>
        				<input class="s-sbm" type="button" value="Search"/>
        			</div>
        			<div class="s-label-line">
        				<a href="#">mac</a>
        				<a href="#">iPhone</a>
        				<a href="#">iPad</a>
       				</div>
        		</div>
            </div>
            <div class="bar-warp">
            	<div class="category">全部商品分类</div>
            	<ul class="top-menu">
            		<li><a href="#">Home</a></li>
            		<li><a href="#">团购</a></li>
            		<li><a href="#">秒杀</a></li>
            	</ul>
            </div>
        </div>
    </div>
    <div class="container">
    	<div class="base">
    		<div class="nav">
            	<div class="left-nav">
                	<div class="item">
                		<div class="item-title"><a href="#">电子产品</a></div>
                		<ul>
                			<li><a href="#">笔记本电脑</a></li>
                			<li><a href="#">智能手机</a></li>
                			<li><a href="#">智能手表</a></li>
                		</ul>
                	</div>
                	<div class="item">
                		<div class="item-title"><a href="#">服饰鞋帽</a></div>
                		<ul>
                			<li><a href="#">T恤</a></li>
                			<li><a href="#">牛仔裤</a></li>
                			<li><a href="#">皮鞋</a></li>
                		</ul>
                	</div>
                </div>
            </div>
            <div class="content">
            	<div class="select-box">
            		<div class="row">
            			<div class="label">品牌:</div>
            			<ul>
            				<li><a href="#">Apple</a></li>
            				<li><a href="#">Dell</a></li>
            				<li><a href="#">联想</a></li>
            			</ul>
            		</div>
            		<div class="row">
            			<div class="label">CPU:</div>
            			<ul>
            				<li><a href="#">酷睿i3</a></li>
            				<li><a href="#">酷睿i5</a></li>
            				<li><a href="#">酷睿i7</a></li>
            			</ul>
            		</div>
            		<div class="row">
            			<div class="label">内存:</div>
            			<ul>
            				<li><a href="#">2G</a></li>
            				<li><a href="#">4G</a></li>
            				<li><a href="#">16G</a></li>
            				<li><a href="#">26G</a></li>
            				<li><a href="#">36G</a></li>
            				<li><a href="#">46G</a></li>
            				<li><a href="#">56G</a></li>
            				<li><a href="#">66G</a></li>
            				<li><a href="#">76G</a></li>
            				<li><a href="#">882136G</a></li>
            				<li><a href="#">886123G</a></li>
            				<li><a href="#">883126G</a></li>
            				<li><a href="#">8123186G</a></li>
            				<li><a href="#">8836G</a></li>
            				<li><a href="#">881236G</a></li>
            				<li><a href="#">881236G</a></li>
            				<li><a href="#">881236G</a></li>
            				<li><a href="#">8286G</a></li>
            				<li><a href="#">1886G</a></li>
            			</ul>
            		</div>
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
                        <c:if test="${empty list}">
                        	<div class="error-msg">没有商品</div>
                       	</c:if>
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