<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<%@ taglib uri="page" prefix="page"%>
<%@page isELIgnored="false"%>
<!doctype html>
<html lang="en" class="app">
<head>
<meta charset="utf-8" />
<title>视频播放</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="">
<meta name="keywords" content="index">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<meta name="apple-mobile-web-app-title" content="WeChat" />
<link rel="shortcut icon" href="${ctx}/assets/images/logo_title.png"
	type="image/x-icon" />



</head>

<body>
	<div class="modal-shiftfix">
<%@include file="../public/top.jsp" %>
		<!-- 内容 -->
		<!-- End Navigation -->
		<div class="container-fluid main-content">
			<div class="page-title">
				<h1>视频名称:${file.originalName}</h1>
			</div>
			<!-- Gallery with captions -->
			<div class="row">
				<!-- 文件内容 -->
					<div class="widget-container fluid-height " style="" align="center">
						<object width="1000" height="800" id="MediaPlayer1" classid="CLSID:22D6f312-B0F6-11D0-94AB-0080C74C7E95" codebase="http://activex.microsoft.com/activex/controls/mplayer/en/nsmp2inf.cab#Version=5,1,52,701" type="application/x-oleobject" standby="Loading Microsoft Windows Media Player components..."><param name="FileName" value="http://vod.psfshl.pudong-edu.sh.cn/xxzzsp/SesameEnglish/TransformwithJohnnyGalecki.wmv"></object>

						</div>
					</div>

			</div>
		</div>
</body>
</html>

