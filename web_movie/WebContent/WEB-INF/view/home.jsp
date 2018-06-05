<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/jquery-ui/css/jquery-ui.css" />" />
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/common/css/common.css" />" />
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/movieList.css" />" />

<script type="text/javascript"
	src="<c:url value="/resources/jquery/js/jquery-3.2.1.js" />"></script>
<script type="text/javascript"
	src="<c:url value="/resources/jquery-ui/js/jquery-ui.js" />"></script>
<script type="text/javascript"
	src="<c:url value="/resources/jquery/js/jquery-migrate-1.4.1.js" />"></script>

<script type="text/javascript">

$(document).ready(function(){
	//Tab
	$( "#tabs" ).tabs();
});
</script>
<title></title>
</head>
<body>

	<div id="tabs">
		<ul>
			<li><a href="#tabs-1">박스 오피스 순위</a></li>
			<li><a href="#tabs-2">Info</a></li>
		</ul>
		<div id="tabs-1">
			<div id="pricing-table" class="clear">
				<div class="plan">
					<h3>
						Enterprise<span>$59</span>
					</h3>
					<br/>
					<ul>
						<li><b>10GB</b> Disk Space</li>
						<li><b>100GB</b> Monthly Bandwidth</li>
						<li><b>20</b> Email Accounts</li>
						<li><b>Unlimited</b> subdomains</li>
					</ul>
				</div>
				<div class="plan" id="most-popular">
					<h3>
						Professional<span>$29</span>
					</h3>
					<br/>
					<ul>
						<li><b>5GB</b> Disk Space</li>
						<li><b>50GB</b> Monthly Bandwidth</li>
						<li><b>10</b> Email Accounts</li>
						<li><b>Unlimited</b> subdomains</li>
					</ul>
				</div>
				<div class="plan">
					<h3>
						Standard<span>$17</span>
					</h3>
					<br/>
					<ul>
						<li><b>3GB</b> Disk Space</li>
						<li><b>25GB</b> Monthly Bandwidth</li>
						<li><b>5</b> Email Accounts</li>
						<li><b>Unlimited</b> subdomains</li>
					</ul>
				</div>
			</div>
		</div>
		<div id="tabs-2">
			이 페이지는 아래 항목을 이용하여 구현하였습니다.<br />
			<ul class="page_desc">
				<li>Spring Framework 4.3.14.RELEASE</li>
				<li>myBatis 3.4.1</li>
				<li>jUnit 4.12</li>
			</ul>
			<br /> last update.... 2018. 06. 05
			<table id="deptGrid"></table>
			<div id="deptGrid-pager"></div>
		</div>
	</div>

</body>
</html>