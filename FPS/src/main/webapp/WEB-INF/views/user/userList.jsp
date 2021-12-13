
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>바로 근처의 바니마켓!!</title>

    <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
    <script type="text/javascript"
      src="http://maps.googleapis.com/maps/api/js?key=AIzaSyAbd1vRe5hqCzX0Cvjb9ho5BUVtyoeYoew&sensor=FALSE"></script>

	<script src="../static/js/geolocation.js"></script>

    <link rel="stylesheet" href="../static/css/common.css">
    <link rel="stylesheet" href="../static/css/header.css">
    <link rel="stylesheet" href="../static/css/userList.css">
    <link rel="stylesheet" href="../static/css/footer.css">
    
    <script type="text/javascript">
	    $(function(){
	    	// json 형식으로 데이터 set
            var params = {name:'은'};
	    	$.ajax({
	    		//나는야 post 방식 확인방법
	    		type : "GET",
                //type : "POST",            // HTTP method type(GET, POST) 형식이다.
                url : "/user/selectGoodsListPs",      // 컨트롤러에서 대기중인 URL 주소이다.
                data : params,            // Json 형식의 데이터이다.
                success : function(res){ // 비동기통신의 성공일경우 success콜백으로 들어옵니다. 'res'는 응답받은 데이터이다.
                    // 응답코드 > 0000
                    alert(res.code);
                },
                error : function(request, status, error){ // 비동기 통신이 실패할경우 error 콜백으로 들어옵니다.
                    alert("통신 실패."+error);
                }
            });
	    });
    </script>
</head>
<body>

<%@ include file="header.jsp" %>

	<section class="home-main-section">
		<div class="home-banner-wrap">
			<img src="../static/images/bani_banner.jpg">
		</div>

		<div class="section-wrap">
			<div class="home-hot-content">
				<h1 class="home-main-title">중고거래 인기매물</h1>
				<div class="cards-wrap">
					<article class="card-top">
						<a href="#" class="card-link">
							<div class="card-photo">
								<img src="../static/images/code.png" alt="">
							</div>
							<div class="card-desc">
								<h2 class="card-title">#</h2>
								<div class="card-price">#</div>
								<div class="card-region-name">#</div>
								<div class="card-counts">
									<span>#</span>
									<span>#</span>
								</div>
							</div>
						</a>
					</article>
					<article class="card-top">
						<a href="#" class="card-link">
							<div class="card-photo">
								<img src="../static/images/code.png" alt="">
							</div>
							<div class="card-desc">
								<h2 class="card-title">#</h2>
								<div class="card-price">#</div>
								<div class="card-region-name">#</div>
								<div class="card-counts">
									<span>#</span>
									<span>#</span>
								</div>
							</div>
						</a>
					</article>
					<article class="card-top">
						<a href="#" class="card-link">
							<div class="card-photo">
								<img src="../static/images/code.png" alt="">
							</div>
							<div class="card-desc">
								<h2 class="card-title">#</h2>
								<div class="card-price">#</div>
								<div class="card-region-name">#</div>
								<div class="card-counts">
									<span>#</span>
									<span>#</span>
								</div>
							</div>
						</a>
					</article>
					<article class="card-top">
						<a href="#" class="card-link">
							<div class="card-photo">
								<img src="../static/images/code.png" alt="">
							</div>
							<div class="card-desc">
								<h2 class="card-title">#확인 테스트 123</h2>
								<div class="card-price">#</div>
								<div class="card-region-name">#</div>
								<div class="card-counts">
									<span>#</span>
									<span>#</span>
								</div>
							</div>
						</a>
					</article>
					<article class="card-top">
						<a href="#" class="card-link">
							<div class="card-photo">
								<img src="../static/images/code.png" alt="">
							</div>
							<div class="card-desc">
								<h2 class="card-title">#확인 테스트 123</h2>
								<div class="card-price">#</div>
								<div class="card-region-name">#</div>
								<div class="card-counts">
									<span>#</span>
									<span>#</span>
								</div>
							</div>
						</a>
					</article>
					<article class="card-top">
						<a href="#" class="card-link">
							<div class="card-photo">
								<img src="../static/images/code.png" alt="">
							</div>
							<div class="card-desc">
								<h2 class="card-title">#확인 테스트 123</h2>
								<div class="card-price">#</div>
								<div class="card-region-name">#</div>
								<div class="card-counts">
									<span>#</span>
									<span>#</span>
								</div>
							</div>
						</a>
					</article>
					<article class="card-top">
						<a href="#" class="card-link">
							<div class="card-photo">
								<img src="../static/images/code.png" alt="">
							</div>
							<div class="card-desc">
								<h2 class="card-title">#</h2>
								<div class="card-price">#</div>
								<div class="card-region-name">#</div>
								<div class="card-counts">
									<span>#</span>
									<span>#</span>
								</div>
							</div>
						</a>
					</article>
					<article class="card-top">
						<a href="#" class="card-link">
							<div class="card-photo">
								<img src="../static/images/code.png" alt="">
							</div>
							<div class="card-desc">
								<h2 class="card-title">#</h2>
								<div class="card-price">#</div>
								<div class="card-region-name">#</div>
								<div class="card-counts">
									<span>#</span>
									<span>#</span>
								</div>
							</div>
						</a>
					</article>
				</div>
				<div class="text-center">
					<a href="#">인기매물 더 보기</a>
				</div>
			</div>

			
			<div class="home-near-content">
				<h1 class="home-main-title">우리동네매물</h1>
				<h3 class="home-addr"></h3>
				<div id="msg"></div>
				<div id="map_canvas"></div>
				<div class="cards-wrap">
					<article class="card-top">
						<a href="#" class="card-link">
							<div class="card-photo">
								<img src="../static/images/code.png" alt="">
							</div>
							<div class="card-desc">
								<h2 class="card-title">#</h2>
								<div class="card-price">#</div>
								<div class="card-region-name">#</div>
								<div class="card-counts">
									<span>#</span>
									<span>#</span>
								</div>
							</div>
						</a>
					</article>
					<article class="card-top">
						<a href="#" class="card-link">
							<div class="card-photo">
								<img src="../static/images/code.png" alt="">
							</div>
							<div class="card-desc">
								<h2 class="card-title">#</h2>
								<div class="card-price">#</div>
								<div class="card-region-name">#</div>
								<div class="card-counts">
									<span>#</span>
									<span>#</span>
								</div>
							</div>
						</a>
					</article>
					<article class="card-top">
						<a href="#" class="card-link">
							<div class="card-photo">
								<img src="../static/images/code.png" alt="">
							</div>
							<div class="card-desc">
								<h2 class="card-title">#</h2>
								<div class="card-price">#</div>
								<div class="card-region-name">#</div>
								<div class="card-counts">
									<span>#</span>
									<span>#</span>
								</div>
							</div>
						</a>
					</article>
					<article class="card-top">
						<a href="#" class="card-link">
							<div class="card-photo">
								<img src="../static/images/code.png" alt="">
							</div>
							<div class="card-desc">
								<h2 class="card-title">#확인 테스트 123</h2>
								<div class="card-price">#</div>
								<div class="card-region-name">#</div>
								<div class="card-counts">
									<span>#</span>
									<span>#</span>
								</div>
							</div>
						</a>
					</article>
					<article class="card-top">
						<a href="#" class="card-link">
							<div class="card-photo">
								<img src="../static/images/code.png" alt="">
							</div>
							<div class="card-desc">
								<h2 class="card-title">#확인 테스트 123</h2>
								<div class="card-price">#</div>
								<div class="card-region-name">#</div>
								<div class="card-counts">
									<span>#</span>
									<span>#</span>
								</div>
							</div>
						</a>
					</article>
					<article class="card-top">
						<a href="#" class="card-link">
							<div class="card-photo">
								<img src="../static/images/code.png" alt="">
							</div>
							<div class="card-desc">
								<h2 class="card-title">#확인 테스트 123</h2>
								<div class="card-price">#</div>
								<div class="card-region-name">#</div>
								<div class="card-counts">
									<span>#</span>
									<span>#</span>
								</div>
							</div>
						</a>
					</article>
					<article class="card-top">
						<a href="#" class="card-link">
							<div class="card-photo">
								<img src="../static/images/code.png" alt="">
							</div>
							<div class="card-desc">
								<h2 class="card-title">#</h2>
								<div class="card-price">#</div>
								<div class="card-region-name">#</div>
								<div class="card-counts">
									<span>#</span>
									<span>#</span>
								</div>
							</div>
						</a>
					</article>
					<article class="card-top">
						<a href="#" class="card-link">
							<div class="card-photo">
								<img src="../static/images/code.png" alt="">
							</div>
							<div class="card-desc">
								<h2 class="card-title">#</h2>
								<div class="card-price">#</div>
								<div class="card-region-name">#</div>
								<div class="card-counts">
									<span>#</span>
									<span>#</span>
								</div>
							</div>
						</a>
					</article>
				</div>
				<div class="text-center">
					<a href="#">우리동네매물 더 보기</a>
				</div>
			</div>
		</div>
    </section>

<%@ include file="footer.jsp" %>
</body>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>당신 근처의 당근마켓!!</title>

    <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
    <script type="text/javascript"
      src="http://maps.googleapis.com/maps/api/js?key=AIzaSyAbd1vRe5hqCzX0Cvjb9ho5BUVtyoeYoew&sensor=FALSE"></script>

	<script src="../static/js/geolocation.js"></script>

    <link rel="stylesheet" href="../static/css/common.css">
    <link rel="stylesheet" href="../static/css/header.css">
    <link rel="stylesheet" href="../static/css/userList.css">
    <link rel="stylesheet" href="../static/css/footer.css">
    
    <script type="text/javascript">
    	let populPaper = 1;
	    $(function(){
	    	showMoreGoods();
	    });
	    
	    //21.12.09 리스트 추가 버튼
	    function showMoreGoods() {
	    	// json 형식으로 데이터 set
            let params = {page : populPaper};
	    	$.ajax({
	    		//나는야 post 방식 확인방법
	    		type : "GET",
                //type : "POST",            // HTTP method type(GET, POST) 형식이다.
                url : "/user/selectGoodsListPs",      // 컨트롤러에서 대기중인 URL 주소이다.
                data : params,            // Json 형식의 데이터이다.
                success : function(res){ // 비동기통신의 성공일경우 success콜백으로 들어옵니다. 'res'는 응답받은 데이터이다.
                	let html = "";
                	for(idx in res.goodList){
                		let goodDetail = res.goodList[idx]
                		
                		html += "<article class=\"card-top\"><a href=\"#\" class=\"card-link\"><div class=\"card-photo\">";
                		html += "<img src=\"../static/images/code.png\" alt=\"\">";
                		html += "</div>";
                		html += "<div class=\"card-desc\">";
                		html += "<h2 class=\"card-title\">#</h2>";
                		html += "<div class=\"card-price\">#</div>";
                		html += "<div class=\"card-region-name\">#</div>";
                		html += "<div class=\"card-counts\">";
                		html += "<span>"+goodDetail.production_title+"</span><span>"+goodDetail.production_content+"</span>";
                		html += "</div></div></a></article>";
                	}
                	$("#populGoods").append(html);
                	populPaper = populPaper + 1;
                },
                error : function(request, status, error){ // 비동기 통신이 실패할경우 error 콜백으로 들어옵니다.
                    alert("통신 실패."+error);
                }
            });
		}
    </script>
</head>
<body>

<%@ include file="header.jsp" %>

	<section class="home-main-section">
		<div class="home-banner-wrap">
			<img src="../static/images/bani_banner.jpg">
		</div>

		<div class="section-wrap">
			<div class="home-hot-content">
				<h1 class="home-main-title">중고거래 인기매물</h1>
				<div class="cards-wrap" id="populGoods">
					<!-- <article class="card-top">
						<a href="#" class="card-link">
							<div class="card-photo">
								<img src="../static/images/code.png" alt="">
							</div>
							<div class="card-desc">
								<h2 class="card-title">#</h2>
								<div class="card-price">#</div>
								<div class="card-region-name">#</div>
								<div class="card-counts">
									<span>#</span>
									<span>#</span>
								</div>
							</div>
						</a>
					</article>
					<article class="card-top">
						<a href="#" class="card-link">
							<div class="card-photo">
								<img src="../static/images/code.png" alt="">
							</div>
							<div class="card-desc">
								<h2 class="card-title">#</h2>
								<div class="card-price">#</div>
								<div class="card-region-name">#</div>
								<div class="card-counts">
									<span>#</span>
									<span>#</span>
								</div>
							</div>
						</a>
					</article>
					<article class="card-top">
						<a href="#" class="card-link">
							<div class="card-photo">
								<img src="../static/images/code.png" alt="">
							</div>
							<div class="card-desc">
								<h2 class="card-title">#</h2>
								<div class="card-price">#</div>
								<div class="card-region-name">#</div>
								<div class="card-counts">
									<span>#</span>
									<span>#</span>
								</div>
							</div>
						</a>
					</article>
					<article class="card-top">
						<a href="#" class="card-link">
							<div class="card-photo">
								<img src="../static/images/code.png" alt="">
							</div>
							<div class="card-desc">
								<h2 class="card-title">#확인 테스트 123</h2>
								<div class="card-price">#</div>
								<div class="card-region-name">#</div>
								<div class="card-counts">
									<span>#</span>
									<span>#</span>
								</div>
							</div>
						</a>
					</article>
					<article class="card-top">
						<a href="#" class="card-link">
							<div class="card-photo">
								<img src="../static/images/code.png" alt="">
							</div>
							<div class="card-desc">
								<h2 class="card-title">#확인 테스트 123</h2>
								<div class="card-price">#</div>
								<div class="card-region-name">#</div>
								<div class="card-counts">
									<span>#</span>
									<span>#</span>
								</div>
							</div>
						</a>
					</article>
					<article class="card-top">
						<a href="#" class="card-link">
							<div class="card-photo">
								<img src="../static/images/code.png" alt="">
							</div>
							<div class="card-desc">
								<h2 class="card-title">#확인 테스트 123</h2>
								<div class="card-price">#</div>
								<div class="card-region-name">#</div>
								<div class="card-counts">
									<span>#</span>
									<span>#</span>
								</div>
							</div>
						</a>
					</article>
					<article class="card-top">
						<a href="#" class="card-link">
							<div class="card-photo">
								<img src="../static/images/code.png" alt="">
							</div>
							<div class="card-desc">
								<h2 class="card-title">#</h2>
								<div class="card-price">#</div>
								<div class="card-region-name">#</div>
								<div class="card-counts">
									<span>#</span>
									<span>#</span>
								</div>
							</div>
						</a>
					</article>
					<article class="card-top">
						<a href="#" class="card-link">
							<div class="card-photo">
								<img src="../static/images/code.png" alt="">
							</div>
							<div class="card-desc">
								<h2 class="card-title">#</h2>
								<div class="card-price">#</div>
								<div class="card-region-name">#</div>
								<div class="card-counts">
									<span>#</span>
									<span>#</span>
								</div>
							</div>
						</a>
					</article> -->
				</div>
				<div class="text-center">
					<a href="#none" onclick="showMoreGoods()">인기매물 더 보기</a>
				</div>
			</div>

			
			<div class="home-near-content">
				<h1 class="home-main-title">우리동네매물</h1>
				<h3 class="home-addr"></h3>
				<div id="msg"></div>
				<div id="map_canvas"></div>
				<div class="cards-wrap">
					<article class="card-top">
						<a href="#" class="card-link">
							<div class="card-photo">
								<img src="../static/images/code.png" alt="">
							</div>
							<div class="card-desc">
								<h2 class="card-title">#</h2>
								<div class="card-price">#</div>
								<div class="card-region-name">#</div>
								<div class="card-counts">
									<span>#</span>
									<span>#</span>
								</div>
							</div>
						</a>
					</article>
					<article class="card-top">
						<a href="#" class="card-link">
							<div class="card-photo">
								<img src="../static/images/code.png" alt="">
							</div>
							<div class="card-desc">
								<h2 class="card-title">#</h2>
								<div class="card-price">#</div>
								<div class="card-region-name">#</div>
								<div class="card-counts">
									<span>#</span>
									<span>#</span>
								</div>
							</div>
						</a>
					</article>
					<article class="card-top">
						<a href="#" class="card-link">
							<div class="card-photo">
								<img src="../static/images/code.png" alt="">
							</div>
							<div class="card-desc">
								<h2 class="card-title">#</h2>
								<div class="card-price">#</div>
								<div class="card-region-name">#</div>
								<div class="card-counts">
									<span>#</span>
									<span>#</span>
								</div>
							</div>
						</a>
					</article>
					<article class="card-top">
						<a href="#" class="card-link">
							<div class="card-photo">
								<img src="../static/images/code.png" alt="">
							</div>
							<div class="card-desc">
								<h2 class="card-title">#확인 테스트 123</h2>
								<div class="card-price">#</div>
								<div class="card-region-name">#</div>
								<div class="card-counts">
									<span>#</span>
									<span>#</span>
								</div>
							</div>
						</a>
					</article>
					<article class="card-top">
						<a href="#" class="card-link">
							<div class="card-photo">
								<img src="../static/images/code.png" alt="">
							</div>
							<div class="card-desc">
								<h2 class="card-title">#확인 테스트 123</h2>
								<div class="card-price">#</div>
								<div class="card-region-name">#</div>
								<div class="card-counts">
									<span>#</span>
									<span>#</span>
								</div>
							</div>
						</a>
					</article>
					<article class="card-top">
						<a href="#" class="card-link">
							<div class="card-photo">
								<img src="../static/images/code.png" alt="">
							</div>
							<div class="card-desc">
								<h2 class="card-title">#확인 테스트 123</h2>
								<div class="card-price">#</div>
								<div class="card-region-name">#</div>
								<div class="card-counts">
									<span>#</span>
									<span>#</span>
								</div>
							</div>
						</a>
					</article>
					<article class="card-top">
						<a href="#" class="card-link">
							<div class="card-photo">
								<img src="../static/images/code.png" alt="">
							</div>
							<div class="card-desc">
								<h2 class="card-title">#</h2>
								<div class="card-price">#</div>
								<div class="card-region-name">#</div>
								<div class="card-counts">
									<span>#</span>
									<span>#</span>
								</div>
							</div>
						</a>
					</article>
					<article class="card-top">
						<a href="#" class="card-link">
							<div class="card-photo">
								<img src="../static/images/code.png" alt="">
							</div>
							<div class="card-desc">
								<h2 class="card-title">#</h2>
								<div class="card-price">#</div>
								<div class="card-region-name">#</div>
								<div class="card-counts">
									<span>#</span>
									<span>#</span>
								</div>
							</div>
						</a>
					</article>
				</div>
				<div class="text-center">
					<a href="#">우리동네매물 더 보기</a>
				</div>
			</div>
		</div>
    </section>

<%@ include file="footer.jsp" %>
</body>
>>>>>>> branch 'main' of https://github.com/banibani-project/baniMarketProject.git
</html>