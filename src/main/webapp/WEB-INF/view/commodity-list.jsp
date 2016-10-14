<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Commodity list</title>
<link rel="stylesheet" type="text/css" href="${rootPath}css/commodity-list.css"/>
</head>

<body>
	<%@include file="header.jsp" %>
    <div class="container">
    	<div class="base">
    		<div class="nav">
            	<div class="left-nav">
            		<c:forEach items="${category}" var="item">
						<!-- ${item.name} -->
						<c:forEach items="${item.children}" var="c1">
							
							<c:forEach items="${c1.children}" var="c2">
								<div class="item">
			                		<div class="item-title"><a href="#">${c2.name}</a></div>
			                		<ul>									
									<c:forEach items="${c2.children}" var="c3">
										<li><a href="#">${c3.name}</a></li>		
									</c:forEach>
									</ul>
                				</div>
							</c:forEach>
		                		
						</c:forEach>
					</c:forEach>
                	<!-- <div class="item">
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
                	</div> -->
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
            				<!-- <li><a href="#">56G</a></li>
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
            				<li><a href="#">1886G</a></li> -->
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
                                    <a href="${item.sku}">
                                    	${item.title} ${item.subtitle}
                                   	</a>
                                </div>
                                <div class="c-price"><strong>￥${item.salePrice}</strong></div>
                                <div class="c-re-num">已有<span class="blue">60</span>人评价</div>
                                <div class="c-store">苹果官方旗舰店<span class="FGM">G-Mall自营</span></div>
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
    <%@include file="footer.html" %>
</body>
</html>