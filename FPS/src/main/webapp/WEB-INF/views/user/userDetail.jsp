<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/static/css/userDetail.css">
    <title>${requestScope.subPage.title}</title>
</head>
<body>
    <div id="sub_main">
        <article id="main_wrap">
            <section id="slider_wrap">
                <h1 class="hidden">중고 상품 팔아요</h1>
                <ul id="slider">
                    <li class="slider_item">
                        <div>제품 이미지</div>
                    </li>
                    <li class="slider_item">
                        <div>제품 이미지</div>
                    </li>
                    <li class="slider_item">
                        <div>제품 이미지</div>
                    </li>
                    <li class="slider_item">
                        <div>제품 이미지</div>
                    </li>
                    <li class="slider_item">
                        <div>제품 이미지</div>
                    </li>
                </ul>
                <div class="btns" id="next">
                    <!-- i 태그 안에 있는 class는 이름 변경 불가 -->
                    <i class="fa fa-arrow-right"></i>
                </div>
                <div class="btns" id="prev">
                    <i class="fa fa-arrow-left"></i>
                </div>
                <div id="counter"></div>
                <div id="pagination_wrap">
                    <ul></ul>
                </div>
            </section>

            <section id="profile">
                <div id="profile_link">
                    <a href="#">
                        <h3 class="hidden">프로필</h3>
                        <div class="profile_space_between">
                            <div>
                                <div class="profile_image">
                                    <img src="https://d1unjqcospf8gs.cloudfront.net/assets/users/default_profile_80-7e50c459a71e0e88c474406a45bbbdce8a3bf2ed4f2efcae59a064e39ea9ff30.png" alt="프로필 사진">
                                </div>
                                <div class="profile_left">
                                    <div class="nick_name">닉네임</div>
                                    <div class="region_name">대구시 수성구 만촌동</div>
                                </div>
                            </div>
                            <div class="profile_right">
                                <dl class="temperatrue_wrap">
                                    <dt>매너온도</dt>
                                    <dd class="text_color_01">
                                        36.6
                                        <span>&deg;C</span>
                                    </dd>
                                </dl>
                                <div class="meters">
                                    <div class="bar bar_color_01"></div>
                                </div>
                                <div class="face"></div>
                            </div>
                        </div>
                    </a>
                </div>
            </section>
            <section id="main_ctnt">
                <h1 id="section_title">판매 물품 제목</h1>
                <p class="category">
                    제품 종류 •
                    <time datetime="">n시간 전</time>
                </p>
                <p class="price">
                    제품 가격(원)
                </p>
                <div class="contents">
                    <p>
                        제품 설명<br>
                        하자 없고 산지 얼마 안됐습니다<br>
                        직거래만 원해요<br>
                        연락주세요
                    </p>
                </div>
                <p class="ctnt_counts">
                    관심 0 • 채팅 0 • 조회 0
                </p>
            </section>
        </article>
    </div>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
   <script src="/static/js/userDeailt.js?v=1.0"></script>
</body>
</html>