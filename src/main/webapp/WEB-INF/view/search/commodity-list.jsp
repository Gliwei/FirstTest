<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Commodity list</title>
<link rel="stylesheet" type="text/css" href="${rootPath}css/commodity-list.css"/>
</head>

<body>
	<%@include file="/WEB-INF/view/header.jsp" %>
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
                </div>
            </div>
            <div class="content">
            	<div class="crumbs">全部结果 > 
            		<c:forEach items="${fqArr}" var="item">
            			<span class="spec">
            				${spec[fn:substring(item, 0, fn:indexOf(item, "@"))].name}:${fn:substring(item, fn:indexOf(item, "@")+1, -1)}
           					<span><a href="${rootPath}solr/query?kw=${kw}&fq=${fn:replace(fq, item, '')}">×</a></span>
           				</span>
            			> 
            		</c:forEach> 
            		${kw}
           		</div>
            	<div class="select-box">
            		<c:forEach items="${facets}" var="facets">
            			<div class="row">
	            			<div class="label">${spec[facets.key].name}：</div>
	            			<ul>
		            			<c:forEach items="${facets.value}" var="facetItem">
		            				<li><a href="${rootPath}solr/query?kw=${kw}&fq=<c:if test="${!empty fq}">${fq},</c:if>${spec[facets.key].id}@${facetItem.name}">${facetItem.name}(${facetItem.count})</a></li>
		            			</c:forEach>
	            			</ul>
            			</div>
            		</c:forEach>
                </div>
                <div class="commodity-box">
                    <ul class="clist">
                    	
                    	<c:forEach items="${list}" var="item">
                        <li>
                            <div class="inner">
                                <div class="c-picture">
                                    <a href="${rootPath}c/${item.sku}">
                                        <img src="${item.mainPicture}" width="220px" hignt="220px">
                                    </a>
                                </div>
                                <div class="c-title">
                                    <a href="${rootPath}c/${item.sku}">
                                    	${item.title} ${item.subtitle}
                                   	</a>
                                </div>
                                <div class="c-price"><strong>￥${item.salePrice}</strong></div>
                                <div class="c-re-num">已有<span class="blue">60</span>人评价</div>
                                <div class="c-store">苹果官方旗舰店<span class="FGM">自营</span></div>
                            </div>
                        </li>
                        </c:forEach>
                        <c:if test="${empty list}">
                        	<div class="error-msg">没有商品</div>
                       	</c:if>
                    </ul>
                </div>
                <div class="search-debug">
                     解析查询参数耗时：${searchParam} |
                     查询耗时：${search} |
                     解析查询结果耗时：${resultData} |
                     查询商品耗时：${commodityData} |
                     查询分类耗时：${categoryData}
                 </div>
            </div>
        </div>
    </div>
    <%@include file="/WEB-INF/view/footer.html" %>
</body>
</html>