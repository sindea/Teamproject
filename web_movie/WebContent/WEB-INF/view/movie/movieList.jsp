<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type='text/javascript'>

//오늘 날짜
var d = new Date();
var yy = d.getFullYear();
var mm = d.getMonth() + 1;
var dd = d.getDate() - 1;
var today = `${yy}${mm}${dd}`;

// 비동기로 오늘의 영화 순위 가져오기
var xhr = new XMLHttpRequest();
xhr.open('GET', "http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=4a692216dacd9ef10f5bbff60be6e78f&targetDt="+ today);
xhr.send();
</script>
</body>
</html>