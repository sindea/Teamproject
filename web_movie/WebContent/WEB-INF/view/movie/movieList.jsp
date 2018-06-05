<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- tag library 선언 : c tag --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type='text/javascript'>
(function(global, XHR){
	'use strict';
	var createXHR = (function() {
		XHR = XHR || ActiveXObject('Microsoft.XMLHTTP');
		return function() {
			return new XHR;
		};
	})();
	var xhr = createXHR();
	var result_view = document.querySelector('.ajax-result');
	//오늘 날짜
	var d = new Date();
	var yy = d.getFullYear();
	var mm = d.getMonth() + 1;
	var dd = d.getDate() - 1;
	var today = `20180604`;
	xhr.open('GET', "http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=4a692216dacd9ef10f5bbff60be6e78f&targetDt="+ today);
	xhr.send();
	xhr.onreadystatechange = function() {
		if ( this.status === 200 && this.readyState === 4 ) {
			console.log('통신 데이터 전송 성공! ^^');
			console.log("콘솔로그" + this.response);
			// text file
			var getmovies = this.response;
			var template = '';
			// text -> object
			getmovies = JSON.parse(getmovies);
			// json파일내에 있는 속성 results
			var movies = getmovies.boxOfficeResult.dailyBoxOfficeList;
			// movies 반복 순환 처리
			for(var movie of movies) {
				template += [
					'<li class="movie-contents">',
						'<strong class="rank">'+'No.'+movie.rank+'</strong>',
						'<h3 class="name">'+movie.movieNm+'</h3>',
						'<p class="opendt small">'+'개봉일 : '+'<span>'+movie.openDt+'</span>'+'</p>',
						'<p class="audiacc small">'+'누적 관객 수 : '+'<span>'+movie.audiAcc+'</span>'+'명'+'</p>',
						'<p class="rankinten small">'+'순위 변화 : '+'<span class="rank-change">'+movie.rankInten+'</span>'+'</p>',
					'</li>'
				].join('');
			}
		} else {
			console.log('통신 데이터 전송 실패');
		}
	}
})(this, this.XMLHttpRequest);
</script>