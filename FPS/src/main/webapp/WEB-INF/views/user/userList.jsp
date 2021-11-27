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
</head>
<body>

<%@ include file="header.jsp" %>

	<section class="home-main-section">
		<div class="home-banner-wrap">
			<img src="../static/images/bani_banner.jpg">
		</div>
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
    </section>

<%@ include file="footer.jsp" %>
</body>
</html>