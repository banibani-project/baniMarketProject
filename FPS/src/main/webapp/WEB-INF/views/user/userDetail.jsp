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
                <h2 id="section_title">판매 물품 제목</h2>
                <p class="category">
                    제품 종류 •
                    <time datetime="">n</time>시간 전
                </p>
                <p class="price">
                    제품 가격(원)
                </p>
                <div class="contents">
                    <p>
                        <%--제품 설명<br>
                        하자 없고 산지 얼마 안됐습니다<br>
                        직거래만 원해요<br>
                        연락주세요--%>
                        ${goodUserVo.production_content }
                    </p>
                </div>
            </section>
            <section id="main_cmt">
                <div id="cmt_wrap">
                    <form id="cmt_frm" action="" method="post">
                        <h2 id="cmt_title">Comment</h2>
                        <div class="comment-count">
                            관심 0 • 댓글 <span id="count">0</span> • 조회 0
                        </div>
                        <div id="comments"></div>
                        <div id="cmt_content">
                            <textarea name="cmt_comment" id="comment-input" placeholder="댓글을 입력하세요."></textarea>
                        </div>
                        <label class="cmt_secret">
                            비밀 댓글 
                            <input type="checkbox" id="cmt_hide" value="비밀 댓글">
                        </label>
                        <input type="button" id="submit" value="댓글 남기기">
                    </form>
                </div>
            </section>
        </article>
    </div>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
   <script src="/static/js/userDetail.js"></script>
   <script src="/static/js/comment.js"></script>
</body>
</html>