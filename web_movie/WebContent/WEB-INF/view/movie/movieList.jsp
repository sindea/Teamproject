<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- tag library 선언 : c tag --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js";></script>
<script type='text/javascript'>
	function callAjax() {
	    $.ajax({
	       url : "http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=4a692216dacd9ef10f5bbff60be6e78f&targetDt=${today}",
	       success : function(data) {
	    	   var BoxOfficedata = data;
	           //영화 제목과 순위출력
	            for(var i=0; i<data['boxOfficeResult']['dailyBoxOfficeList'].length; i++){
	            document.write(data['boxOfficeResult']['dailyBoxOfficeList'][i]['rank']+"위 : "+data['boxOfficeResult']['dailyBoxOfficeList'][i]['movieNm'] +"<br>")
	            }
	           }
	        });
	 }

</script>
</head>
<body onload="callAjax()">
</body>
</html>