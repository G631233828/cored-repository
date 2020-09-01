<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" /> 
<%@page isELIgnored="false"%> 
<!doctype html>
<html lang="en" class="app">
<head>  
  <meta charset="utf-8" />
  <title>首页－全媒体资源中心</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="description" content="">
  <meta name="keywords" content="index">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp" />
  <meta name="apple-mobile-web-app-title" content="WeChat" />
  <link rel="shortcut icon" href="${ctx}/assets/images/logo_title.png" 
   type="image/x-icon" />
</head>


<body>
<div class="modal-shiftfix">
<%@include file="public/top.jsp" %>
<!-- 内容 -->
  <div class="container-fluid main-content">
        <!-- Statistics -->
        <div class="row">
          <div class="col-lg-12">
            <div class="widget-container stats-container">
              <div class="col-md-3">
              <a href="${ctx}/resourcesCenter/center?resourcesType=video">
                <div class="number">
                  <div class="icon-facetime-video"></div>
                  ${video}<small></small>
                </div>
                <div class="text">
                 视频 数量
                </div>
                </a>
              </div>
              <div class="col-md-3">
              <a href="${ctx}/resourcesCenter/center?resourcesType=picture">
                <div class="number">
                  <div class="icon-camera-retro"></div>
                  ${picture}
                </div>
                <div class="text">
                  图片 数量
                </div>
                </a>
              </div>
              <div class="col-md-3">
              <a href="${ctx}/resourcesCenter/center?resourcesType=document">
                <div class="number">
                  <div class="icon-file"></div>
                  <small></small>${document}
                </div>
                <div class="text">
                  文档 数量
                </div>
                </a>
              </div>
              <div class="col-md-3">
              <a href="${ctx}/resourcesCenter/center?resourcesType=other">
                <div class="number">
                  <div class="icon-hdd"></div>
                  ${other}
                </div>
                <div class="text">
                  其 他
                </div>
                </a>
              </div>
            </div>
          </div>
        </div>
        <!-- End Statistics -->
        <div class="row">
          <!-- Weather -->
          <div class="col-md-12">
          <!-- 
          	语文 icon-file-text-alt
			数学 icon-superscript
			英语 	icon-sort-by-alphabet-alt
			综合 icon-leaf
			德育 icon-dribbble
			校园 icon-home
			七色花电台 icon-magic
           -->
         <c:forEach items="${listSub}" var="items" varStatus="status">
           		<div class="col-sm-3">
           		<!-- http://127.0.0.1:8080/cored-repository/resourcesCenter/center?pageNo=1&resourcesType=ALL&subject=560e06d88b6b730336b96b5e -->
           	
	             		<div id="hidden-items" style="padding-bottom: 10px;">
	             		 	<a href="${pageContext.request.contextPath}/resourcesCenter/center?pageNo=1&resourcesType=ALL&subject=${items.id}">
	                	<div class="item social-widget twitter">
	                		<c:choose>
	                			<c:when test="${items.name =='语文'}">
	                					<i class="icon-file-text-alt"></i>
	                			</c:when>
	                			<c:when test="${items.name =='数学'}">
	                				<i class="icon-superscript"></i>
	                			</c:when>
	                			<c:when test="${items.name =='英语'}">
	                					<i class="icon-sort-by-alphabet-alt"></i>
	                			</c:when>
	                			<c:when test="${items.name =='综合'}">
	                					<i class="icon-leaf"></i>
	                			</c:when>
	                			<c:when test="${items.name =='德育'}">
	                					<i class="icon-dribbble"></i>
	                			</c:when>
	                			<c:when test="${items.name =='校园'}">
	                					<i class="icon-home"></i>
	                			</c:when>
	                			<c:when test="${items.name =='icon-magic'}">
	                					<i class="icon-file-text-alt"></i>
	                			</c:when>
	                			<c:otherwise>
	                				<i class="icon-eye-open"></i>
	                			</c:otherwise>
	                		</c:choose>
	      					
	     					 <div class="social-data"> <h3>${items.name }</h3>科目分类资源信息
	     					 </div>
	    				</div>
	    				</a>
	                	</div>
	             	</div>
	          </c:forEach>   	
	             	
          </div>
         
          <!-- End Bar Graph -->
        </div>
        
        
        
<!--                 <div class="row"> -->
<!--           Task List -->
<!--           <div class="col-lg-6"> -->
<!--             <div class="widget-container scrollable list task-widget"> -->
<!--               <div class="heading"> -->
<!--                 <i class="icon-list"></i>最新上传资源 -->
<!--               </div> -->
<!--               <div class="widget-content"> -->
<!--                 <ul> -->
<%--                 <c:forEach items="${listNewResources.datas}" var="items" varStatus="status"> --%>
<%--                  <a href="${ctx}/resourcesCenter/getResourceDetail?resourceId=${items.id}"> --%>
<!--                   <li> -->
<!--                     <label> -->
<%--                       <c:forEach items="${items.myFiles}" var="fileImg" varStatus="status"> --%>
<%--                        <c:choose > --%>
<%-- 		                    <c:when test="${fileImg.fileType =='PICTURE'}"> --%>
<!-- 			                     <div class="label label-warning pull-right"> -->
<!-- 			                        图片 -->
<!-- 			                      </div> -->
<%-- 			                </c:when> --%>
<%-- 			                <c:when test="${fileImg.fileType =='DOCUMENT'}"> --%>
<!-- 			                     <div class="label label-success pull-right"> -->
<!-- 			                        文档 -->
<!-- 			                      </div> -->
<%-- 			                </c:when> --%>
<%-- 			                <c:when test="${fileImg.fileType =='OTHER'}"> --%>
<!-- 			                     <div class="label label-success pull-right"> -->
<!-- 			                        其他 -->
<!-- 			                      </div> -->
<%-- 			                </c:when> --%>
<%-- 			                <c:when test="${fileImg.fileType =='VIDEO'}"> --%>
<!-- 			                     <div class="label label-warning pull-right"> -->
<!-- 			                        视频 -->
<!-- 			                      </div> -->
<%-- 			                </c:when> --%>
		                     		
<%-- 		               </c:choose> --%>
<%--                      </c:forEach> --%>
                      
<%--                     ${items.name}- --%>
<%--                     ${items.resourcesType.name}  --%>
<!--                     </label> -->
<!--                   </li> -->
<!--                   </a> -->
<%--                   </c:forEach> --%>
                 
<!--                 </ul> -->
<!--               </div> -->
<!--             </div> -->
<!--           </div> -->
<!--           End Task List --><!-- Ratings -->
<!--           <div class="col-lg-6"> -->
<!--             <div class="widget-container scrollable list rating-widget"> -->
<!--               <div class="heading"> -->
<!--                 <i class="icon-comment"></i>公告通知 -->
<!--               </div> -->
<!--               <div class="widget-content"> -->
<!--                 <ul> -->
<!--                 公告通知 -->
<%--                <c:forEach items="${listNotifcation}" var="items" varStatus="status"> --%>
              
<!--                   <li> -->
<!--                     <div class="reviewer-info"> -->
<!--                       <div class="star-rating pull-right"> -->
<%--                        ${items.title} --%>
<!--                       </div> -->
<!--                       <img width="30" height="30" src="assets/images/avatar-male.jpg" /> -->
<%--                       <a href="#">aaron</a><em> ${items.sendDate}</em> --%>
<!--                     </div> -->
<!--                     <div class="review-text"> -->
<!--                       <p> -->
<%--                        ${items.content} --%>
<!--                       </p> -->
<!--                     </div> -->
<!--                   </li> -->
<%--                    </c:forEach> --%>
<!--                 </ul> -->
<!--               </div> -->
<!--             </div> -->
<!--           </div> -->
<!--           End Ratings -->
<!--         </div> -->
        
  
      </div>
</div>
</body>
</html>
