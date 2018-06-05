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

function doWrite(){
	var frm = document.writeForm;
	frm.action = "/web_portfolio/bbs/free/write.do";
	frm.method = "post";
	frm.submit();
}
</script>
<script src="https://cdn.ckeditor.com/4.9.1/standard/ckeditor.js"></script>
</head>
<body>
<div id="tabs">
	<ul>
		<li><a href="#tabs-1">자유게시판 작성</a></li>
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
								<legend>Ses & Food 글쓰기</legend>
								<c:if test="${msg != null }">
							${msg }
							</c:if>

								<!-- board write table -->
								<table summary="표 내용은 Ses & Food 글쓰기 박스입니다."
									class="board_write_table">
									<caption>Ses & Food 글쓰기 박스</caption>
									<colgroup>
										<col width="20%" />
										<col width="80%" />
									</colgroup>
									<tbody>
										<tr>
											<th class="tright"><label for="board_write_name">이름</label></th>
											<td class="tleft">
												<input name="name" type="text" id="name" title="이름 입력박스" class="input_100" value="${sessionScope.nickname}" readonly="readonly"/>
											</td>
										</tr>
										<tr>
											<th class="tright"><label for="board_write_name">공개 설정</label></th>
											<td class="tleft">
												<input type="radio" name="privacy" checked="checked" value="0"/>공개
												<input type="radio" name="privacy" value="1"/>비공개
											</td>
										</tr>
										<tr>
											<th class="tright"><label for="board_write_title">제목</label></th>
											<td class="tleft"><input name="title" type="text"
												id="board_write_title" title="제목 입력박스" class="input_380" />
											</td>
										</tr>
										<tr>
											<th class="tright"><label for="board_write_title">내용</label></th>
											<td class="tleft">
												<div class="editer">
													<p>
														<textarea id="editor1" name="contents" rows="25" cols="100"></textarea>
														<script>
														CKEDITOR.replace( 'editor1' );
														</script>
														
													</p>
												</div>
											</td>
										</tr>
										<tr>
											<th class="tright">첨부파일</th>
											<td class="tleft">
												<input type="file" name="attachFile"/><br/>
												<input type="file" name="attachFile"/>						
											</td>
										</tr>
									</tbody>
								</table>
								<!-- //board write table -->

								<!-- bottom button -->
								<div class="btn_bottom">
									<div class="btn_bottom_right">
										<input type="button" onclick="window.history.back()" value="작성취소" title="작성취소" />
										<input type="button" onclick="doWrite()" value="완료" title="완료" />
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