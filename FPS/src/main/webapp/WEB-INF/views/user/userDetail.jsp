<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/static/css/main.css">
    <title>${requestScope.subPage.title}</title>
</head>
<body>
    <div id="sub-main">
        <article id="main-wrap">
            <section id="slider-wrap">
                <h1 class="hidden">중고 상품 팔아요</h1>
                <ul id="slider">
                    <li class="slider-item">
                        <div>제품 이미지</div>
                    </li>
                    <li class="slider-item">
                        <div>제품 이미지</div>
                    </li>
                    <li class="slider-item">
                        <div>제품 이미지</div>
                    </li>
                    <li class="slider-item">
                        <div>제품 이미지</div>
                    </li>
                    <li class="slider-item">
                        <div>제품 이미지</div>
                    </li>
                </ul>
                <div class="btns" id="next">
                    <i class="fa fa-arrow-right"></i>
                </div>
                <div class="btns" id="prev"><i class="fa fa-arrow-left"></i></div>
                <div id="counter"></div>
                <div id="pagination-wrap">
                    <ul></ul>
                </div>
            </section>

            <section id="profile">
                <div id="profile-link">
                    <a href="#">
                        <h3 class="hidden">프로필</h3>
                        <div class="profile-space-between">
                            <div>
                                <div class="profile-image">
                                    <img src="https://d1unjqcospf8gs.cloudfront.net/assets/users/default_profile_80-7e50c459a71e0e88c474406a45bbbdce8a3bf2ed4f2efcae59a064e39ea9ff30.png" alt="프로필 사진">
                                </div>
                                <div class="profile-left">
                                    <div class="nick-name">닉네임</div>
                                    <div class="region-name">대구시 수성구 만촌동</div>
                                </div>
                            </div>
                            <div class="profile-right">
                                <dl class="temperatrue-wrap">
                                    <dt>매너온도</dt>
                                    <dd class="text-color-01">
                                        36.6
                                        <span>&deg;C</span>
                                    </dd>
                                </dl>
                                <div class="meters">
                                    <div class="bar bar-color-01"></div>
                                </div>
                                <div class="face"></div>
                            </div>
                        </div>
                    </a>
                </div>
            </section>
            <section id="title-ctnt">
                <h1 id="section-title">판매 물품 제목</h1>
                <p class="category">
                    제품 종류 •
                    <time datetime="">n시간 전</time>
                </p>
                <p class="section-price">
                    제품 가격(원)
                </p>
                <div class="section-ctnt">
                    <p>
                        <!-- 제품 설명<br>
                        하자 없고 산지 얼마 안됐습니다<br>
                        직거래만 원해요<br>
                        연락주세요 -->
                        ${goodUserVo.production_content }
                    </p>
                </div>
                <p class="section-counts">
                    관심 0 • 채팅 0 • 조회 0
                </p>
            </section>
        </article>
    </div>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
   <script src="/static/js/main.js"></script>
</body>
</html>