<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>바니마켓</title>
    <link rel="stylesheet" href="../static/css/common.css">
</head>
<body>
    <header id="fixed-bar">
        <div id="fixed-bar-wrap">
            <h1 class="fixed-bar-logo">
                <a href="#">
                    <span class="sr-only">바니마켓</span>
                    <img class="fixed-logo" src="../static/images/logo.png" alt="BaniMarket">
                </a>
            </h1>
            <section class="fiexd-bar-search">
                <div class="search-input-wrap">
                    <input type="text"
                            name="header-search-input" 
                            class="header-search-input"
                            placeholder="동네 이름, 물품명 등을 검색해보세요!" />
                    <span class="header-search-button">
                        <img src="https://d1unjqcospf8gs.cloudfront.net/assets/home/base/header/search-icon-7008edd4f9aaa32188f55e65258f1c1905d7a9d1a3ca2a07ae809b5535380f14.svg" 
                             alt="검색"
                             class="header-search-icon">
                    </span>
                </div>
            </section>
            <section class="fixed-bar-menu">
                <div class="fixed-download-wrap">
                    <!-- <input type="checkbox" class="fixed-menu-checkbox"> -->
                    <label for="fixed-menu-checkbox" class="fixed-label">
                        다운로드
                       <!-- <svg class="menu-icon-svg" 
                            xmlns="http://www.w3.org/2000/svg">
                            <path d="M1 1L6 6L11 1" stroke="#4D5159"
                                 strokewidth="1.5" strokelinecap="round"
                                 strokelinejoin="round"></path>
                        </svg>-->
                    </label>
                    <ul class="fiexd-menu-ul">
                        <li>
                            <a href="#" target="_blank" class="menu-anchor"
                               id="download-button-ios">ios
                            </a>
                        </li>
                        <li>
                            <a href="#" target="_blank" class="menu-anchor"
                            id="download-button-android">android
                            </a>
                        </li>
                    </ul>
                </div>
                <a href="#" target="_blank"></a>
            </section>
        </div>
    </header>
      <!-- <section class="home-main-section">
        <div id="home-main-top">
            <div class="home-main-desc">
                <h1 class="home-main-title">바니마켓</h1>
                <p class="text-m">
                    중고거래부터 동네정보까지, 이웃과 함께해요.<br>
                    가깝고 따뜻한 당신의 근처를 만들어요.
                </p>
            </div>
            <div class="home-main-image"></div>
        </div>
    </section> -->
    <!-- <section class="home-main-section">
        <div class="home-main-content">
            <div class="home-main-image01"></div>
            <div>
                <h1 class="home-main-title">
                    우리 동네<br>
                    중고 직거래 마켓
                </h1>
                <p class="text-m">
                    동네 주민들과 가깝고 따뜻한 거래를 지금 경험해보세요.
                </p>
                <div class="home-buttons">
                    <a href="#">인기매물 보기</a>
                    <a href="#">믿을 수 있는 중고거래</a>
                </div>
            </div>
        </div>
    </section> -->
    <!-- <section class="home-main-section">
        <div class="home-main-reverse">
            <div class="home-main-image02"></div>
                <div>
                    <h1 class="home-main-title"></h1>
                    <p class="text-m"></p>
                    <ul class="home-story-list">
                        <li class="home-story-item">
                            <div class="icon-story01"></div>
                            <div class="test-s">우리동네질문</div>
                            <div class="text-xs">궁금한 게 있을 땐 이웃에게 물어보세요.</div>
                        </li>
                        <li class="home-story-item">
                            <div class="icon-story02"></div>
                            <div class="text-s">동네분실센터</div>
                            <div class="text-xs">무언가를 잃어버렸을 때, 함께 찾을 수 있어요.</div>
                        </li>
                        <li class="home-story-item">
                            <div class="icon-story03"></div>
                            <div class="text-s">동네모임</div>
                            <div class="text-xs">관심사가 비슷한 이웃과 온오프라인으로 만나요.</div>
                        </li>
                    </ul>
                </div>
        </div>
    </section> -->
    <!-- <section class="home-main-section">
        <div class="home-main-content">
            <div class="home-main-image03"></div>
            <div>
                <h1 class="home-main-title">
                    내 근처에서 찾는
                    <br>
                    동네가게
                </h1>
                <p class="text-m">
                    우리 동네 가게를 찾고 있나요?
                    <br>
                    동네 주민이 남긴 진짜 후기를 함께 확인해보세요!
                </p>
                <div class="home-buttons">
                    <a href="#">당근마켓 동네가게 찾기</a>
                </div>
            </div>
        </div>
    </section> -->
     <section class="home-main-section">
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
    <!-- <section class="home-keywords-content">
        <h2 class="home-main-title">
            <a href="#">중고거래 인기검색어</a>
        </h2>
        <ul>
            <li class="keyword-item text-m"><a href="#"></a></li>
            <li class="keyword-item text-m"><a href="#"></a></li>
            <li class="keyword-item text-m"><a href="#"></a></li>
            <li class="keyword-item text-m"><a href="#"></a></li>
            <li class="keyword-item text-m"><a href="#"></a></li>
            <li class="keyword-item text-m"><a href="#"></a></li>
            <li class="keyword-item text-m"><a href="#"></a></li>
            <li class="keyword-item text-m"><a href="#"></a></li>
            <li class="keyword-item text-m"><a href="#"></a></li>
            <li class="keyword-item text-m"><a href="#"></a></li>
        </ul>
    </section> -->
    <footer id="footer">
        <div class="footer-container">
            <div class="footer-top">
                <div class="footer-logo"></div>
                <ul class="footer-list">
                    <li class="footer-list-item"><a href="#" class="link-highlight">믿을 수 있는 중고거래</a></li>
                    <li class="footer-list-item"><a href="#" class="link-highlight">자주 묻는 질문</a></li>
                </ul>
                <ul class="footer-list">
                    <li class="footer-list-item"><a href="#" class="link-highlight">광고주센터</a></li>
                    <li class="footer-list-item"><a href="#" class="link-highlight">동네가게</a></li>
                </ul>
                <ul class="footer-list">
                    <li class="footer-list-item"><a href="#" class="link-highlight">회사소개</a></li>
                    <li class="footer-list-item"><a href="#" class="link-highlight">채용</a></li>
                </ul>
                <ul class="footer-list">
                    <li class="footer-list-item"><a href="#" class="link-highlight">이용약관</a></li>
                    <li class="footer-list-item"><a href="#" class="link-highlight">개인정보처리방침</a></li>
                    <li class="footer-list-item"><a href="#" class="link-highlight">위치기반서비스 이용약관</a></li>
                </ul>
            </div>
            <div class="footer-bottom">
                <div class="footer-copyright">
                    <ul class="copyright-list">
                        <li class="copyright-list-item">고객문의<a href="#">wogml3270@gmail.com</a></li>
                        <li class="copyright-list-item">제휴문의<a href="#">wogml3270@gmail.com</a></li>
                    </ul>
                    <ul class="copyright-list">
                        <li class="copyright-list-item">지역광고<a href="#">wogml3270@gmail.com</a></li>
                        <li class="copyright-list-item">PR문의<a href="#">wogml3270@gmail.com</a></li>
                    </ul>
                    <ul class="copyright-list">
                        <li class="copyright-list-item">
                            <address>대구광역시 수성구 청호로</address>
                        </li>
                        <li class="copyright-list-item">사업자 등록번호 : 000-00-00000</li>
                        <li class="copyright-list-item">직업정보제공사업 신고번호 : J1200000000000</li>
                    </ul>
                    <div class="social">
                        <ul class="social-list">
                            <li class="social-list-item">
                                <a href="#" class="social-link" target="_blank">
                                    <img src="../static/images/facebook.png" alt="facebook">
                                </a>
                            </li>
                            <li class="social-list-item">
                                <a href="#" class="social-link">
                                    <img src="../static/images/instagram.png" alt="imstagram">
                                </a>
                            </li>
                            <li class="social-list-item">
                                <a href="#" class="social-link">
                                    <img src="../static/images/blog.png" alt="blog">
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="copyright-text">&copy;Bani Market Project Inc.</div>
                </div>
            </div>
        </div>
    </footer>
</body>
</html>