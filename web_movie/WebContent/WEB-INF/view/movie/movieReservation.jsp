<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- tag library 선언 : c tag --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
<title>게시물 목록페이지</title>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/common.css" />" />
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/jquery-ui/css/jquery-ui.css" />" />
<style type="text/css">
body { 
	margin-right:0px;
}
.ui-tabs .ui-tabs-panel {
	padding : 0px; !important;
}
</style>
<script type="text/javascript" src="<c:url value="/resources/jquery/js/jquery-3.2.1.js" />"></script>
<script type="text/javascript" src="<c:url value="/resources/jquery-ui/js/jquery-ui.js" />"></script>
<script type="text/javascript" src="<c:url value="/resources/jquery/js/jquery-migrate-1.4.1.js" />"></script>

<script type="text/javascript">


$(document).ready(function(){
	//Tab
	$( "#tabs" ).tabs();
});

// var contents = CKEDITOR.instanses['id'].getData();
// if(contents == ""){
//	alret("내용을 입력하세요");
//	return;
//}

function seatView(){
	
	$.ajax({
		url: '/web_movie/chkSeat.do',
		type: "post",
		data: {'userId' : userId},
		success: function(result, textStatus, jqXHR){
			if(result == 0){ // 중복 안됨
				var frm = document.registerForm;
				// frm = $('form[name=registerForm]')[0];
				frm.action = '/web_portfolio/user/join.do';
				frm.method = 'post';
				frm.submit();
			}
			else { // 중복 되든 문제가 잇음
				// ID가 중복됩니다. (경고참)
				alert("ID가 중복됩니다.");
				// 커서를 id입력하는곳으로 이동
				$('#j_userId').focus();
			}
		},
		error: function(jqXHR, textStatus, errorThrown){
			console.log(jqXHR);
			console.log(textStatus);
			console.log(errorThrown);
		}
	})
}
</script>
<script src="https://cdn.ckeditor.com/4.9.1/standard/ckeditor.js"></script>
</head>
<body>
<div id="tabs">
	<ul>
		<li><a href="#tabs-1">영화 예매</a></li>
	</ul>
	<div id="tabs-1">
		<!-- wrap -->
		<div id="wrap">

			<!-- container -->
			<div id="container">

				<!-- content -->
				<div id="content">

					<!-- board_area -->
					<div class="board_area">
						<form name="writeForm" enctype="multipart/form-data">
							<fieldset>
								<legend>영화 예매</legend>
								<c:if test="${msg != null }">
							${msg }
							</c:if>

								<!-- board write table -->
								<table summary="표 내용은 영화 예매 테이블입니다."
									class="board_write_table">
									<caption>영화 예매 박스</caption>
									<colgroup>
										<col width="20%" />
										<col width="80%" />
									</colgroup>
									<tbody>
										<tr>
											<th class="tright"><label for="board_write_name">제목</label></th>
											<td class="tleft">
												<input name="movieName" type="text" id="name" title="이름 입력박스" class="input_100" value="" readonly="readonly"/>
											</td>
										</tr>
										<tr>
											<th class="tright"><label for="board_write_name">상영관</label></th>
											<td class="tleft">
												<input type="radio" name="privacy" checked="checked" value="1"/>성하점
												<input type="radio" name="privacy" value="2"/>지수점
												<input type="radio" name="privacy" value="3"/>명성점
											</td>
										</tr>
										<tr>
											<th class="tright"><label for="board_write_title">날짜</label></th>
											<td class="tleft"><input name="date" type="text"
												id="board_write_title" title="날짜박스" class="input_300" readonly="readonly"/>
											<input type="button" onclick="" value="달력" title="달력"/>
											</td>
										</tr>
										<tr>
											<th class="tright"><label for="board_write_title">시간
											</label></th>
											<td align="middle">
											<input type="button" onclick="" value="시간보기" title="시간보기" align="middle"/>
											
											</td>
										</tr>
										
									</tbody>
								</table>
								<!-- //board write table -->

								<!-- bottom button -->
								<div class="btn_bottom">
									<div class="btn_bottom_right">
										<input type="button" onclick="seatView()" value="좌석보기" title="좌석보기" />
									</div>
								</div>
								<!-- //bottom button -->

							</fieldset>
						</form>
					</div>
					<!-- //board_area -->

				</div>
				<!-- //content -->

			</div>
			<!-- //container -->

		</div>
		<!-- //wrap -->
	</div>
</div>

</body>
</html>