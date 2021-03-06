<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>~~~~~~~~~~~~~</title>

<script type="text/javascript"
	src="<c:url value="/resources/jquery/js/jquery-3.2.1.js" />"></script>
<script type="text/javascript"
	src="<c:url value="/resources/proper/js/proper.js" />"></script>
<script type="text/javascript"
	src="<c:url value="/resources/bootstrap/js/bootstrap.js" />"></script>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/bootstrap/css/bootstrap.css" />" />

<style type="text/css">
.examples {
	padding-left: 10px;
}

.wrp {
	width: 100%;
	text-align: center;
	margin-top: 15px;
}

.frm {
	text-align: left;
	width: 1050px;
	margin: auto;
}

.fldLbl {
	white-space: nowrap;
}

.panel-body {
	font-size: 85%;
	height: 300px;
	overflow: auto;
}

.btn_bottom_right {
	float: right;
}

.btn_bottom_right input[type="button"] {
	height: 25px;
	line-height: 25px;
	padding: 0 10px;
	vertical-align: middle;
	border: 1px solid #e9e9e9;
	background-color: #f7f7f7;
	font-size: 12px;
	text-align: center;
	cursor: pointer;
}
</style>
<script type="text/javascript">

function resize(obj){
	obj.style.height= obj.contentWindow.document.body.scrollHeight +800+'px'; // 스크롤바를 만드는 코드
}

function doLogout(){
	// if(confitm)은 확인창이 나오는데 확인을 누르면 true를 반환 취소를 누르면 false를 반환한다.
	if(confirm("로그아웃 하시겠습니까?")){
	window.location.href = '/web_portfolio/logout.do'
	}
}

        jQuery(document).ready(function () {
            $("#accordion").collapse();
            
            // 초기 페이지 세팅
            $("#demoFrame").attr("src", '<c:url value="/home.do" />');
			//$("span",".gheader").html('Intro Page');
            
			$(".list-group-item").on("click", function(){
				//$("span",".gheader").html( $(this).text() );
			});
			
        });
    </script>
</head>
<body background="<c:url value="/resources/image/Light-Wood-Background-Wallpaper.jpg"/>" style="background-size: 1600px 800px;"  >
	<h4 style="text-align: center;" class="gheader">
		<span style="font-size: medium"></span>
	</h4>
	<div id="Form1" class="wrap">
		<div id="wrap" class="frm">
			<%-- --%>
			<div class="btn-group btn-group-justified" role="group"
				style="margin-bottom: 15px;">
				<div class="btn-group" role="group">
					<a class="btn btn-default" href='<c:url value="/index.do"/>'
						> <span class="glyphicon glyphicon-home"></span>
						HOME
					</a>
				</div>
				<div class="btn-group" role="group">
					<a class="btn btn-default" href='<c:url value="/userpro.do" />'target="demoFrame" >
						예매 내역조회</a>
				</div>
			</div>

			<!-- Content -->
			<table cellspacing="10" cellpadding="10">
				<tr>
					<td colspan="2" style="padding-bottom: 5px; !important">
						<!-- bottom button -->
						<div class="btn_bottom">
							<div class="btn_bottom_right">
								<c:if test='${sessionScope.userId != null}'>
						${sessionScope.userId} 님! 반갑습니다! 
					</c:if>
								&nbsp;<input type="button" onclick="doLogout()" value="로그아웃" title="로그아웃" />
								<c:if test="${sessionScope.userId == null }"><!-- 로그인이되어있으면 로그인창을 안보여주는 코드 -->
									<a href='<c:url value="/gologin.do"/>'><input type="button"
										value="로그인" title="로그인" /></a>
								</c:if>

							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top; width: 250px;">
						<div class="panel-group" id="accordion">
							<!-- 메뉴 그룹 -->
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordion"
											href="#collapse1">메뉴1</a>
									</h4>
								</div>
								<div id="collapse1" class="panel-collapse collapse in">
									<div class="panel-body">
										<div class="examples list-group">
											<a href='<c:url value="/movielist.do"/>'
												class="list-group-item" target="demoFrame"> 영화표 예매 </a>
										</div>
									</div>
								</div>
							</div>
							<c:if test="${sessionScope.userId !='' &&sessionScope.isAdmin == 1 }">
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordion"
											href="#collapse2">메뉴2</a>
									</h4>
								</div>
								
								<div id="collapse2" class="panel-collapse collapse">
									<div class="panel-body">
										<div class="examples list-group">
											 <a href="<c:url value='/user/list.do'/>" class="list-group-item" target="demoFrame"> 회원관리 </a> 
										</div>
									</div>
								</div>
							</div>
							</c:if>
						</div>
					</td>
					<td style="vertical-align: top; width: 800px;">
						<%-- 우측 본문 --%> <iframe id="demoFrame" name="demoFrame"
							style="width: 803px; border-width: 0;" onload="resize(this)"></iframe> <!-- 온로드는 스크롤을 만드는 코드 -->
					</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>