<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>마이페이지</title>

	<script type="text/javascript" src="../static/js/common.js"></script>
    <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

    <link rel="stylesheet" href="../static/css/common.css">
    <link rel="stylesheet" href="../static/css/header.css">
    <link rel="stylesheet" href="../static/css/mypage.css">
    <link rel="stylesheet" href="../static/css/footer.css">

	<script>
		$(document).ready(function() {
			$('.item_setting img').mouseover(function() {
				$(this).siblings('ul').css('display', 'block');
			});
			$('.item_setting, .item_setting ul').mouseleave(function() {
				$('.item_setting ul').css('display', 'none');
			});
		});

		function profilePopup() {
			window.open("profile_popup.html", '프로필 수정', 'width=400, height=400, left=100, top=100');
		}
	</script>
</head>

<body>

<%@ include file="header.jsp" %>

	<div id="mypage_wrap">
		<div class="mypage_box profile_box">
			<div class="profile_img"></div>
			<div class="profile_text">
				<p class="profile_name">익명이</p>
				<p class="profile_code">조남동 #123456789</p>
				<a class="profile_edit" onclick="profilePopup();">프로필 수정</a>
			</div>
		</div>

		<p class="manner_tit">
			<u>매너온도</u> <span class="manner_i">i</span>
			<span class="manner_sub">
				매너온도는 당근마켓 사용자로부터 받은<br>
				칭찬, 후기, 비매너평가, 운영자 징계등을<br>
				종합해서 만든 매너 지표입니다.
			</span>
		</p>

		<div class="mypage_box manner_box">
			
			<div class="manner_data">
				<img class="manner_data_face data_face_c" src="../static/images/manner_face_icon.png">
				<p class="manner_data_num data_num_c">36.5℃</p>
			</div>
			<div class="manner_data_bar bar_total">
				<div class="manner_data_bar bar_result bar_result_c" style="width: 36.5%;"></div>
				<p class="manner_first">첫 온도 36.5℃<br>▼</p>
			</div>
		</div>

		<div class="mypage_box list_box">
			<input type="radio" name="mypage_list" id="list_sell" checked="checked">
			<input type="radio" name="mypage_list" id="list_buy">
			<input type="radio" name="mypage_list" id="list_like">
			<input type="radio" name="mypage_list" id="list_manner">

			<div class="list_tab">
				<label for="list_sell" class="mypage_listbox listbox_cell">
					<img src="../static/images/cell_icon.png"><br>
					<span>판매내역</span>
				</label>
				<label for="list_buy" class="mypage_listbox listbox_buy">
					<img src="../static/images/buy_icon.png"><br>
					<span>구매내역</span>
				</label>
				<label for="list_like" class="mypage_listbox listbox_like">
					<img src="../static/images/like_icon.png"><br>
					<span>관심목록</span>
				</label>
				<label for="list_manner" class="mypage_listbox listbox_manner">
					<img src="../static/images/manner_icon.png"><br>
					<span>받은 매너 평가</span>
				</label>
			</div>

			<div class="menu_box sell_box">
				<h3>판매내역</h3>
				
				<input type="radio" name="sell_tab" id="sell_tab1" checked="checked">
				<input type="radio" name="sell_tab" id="sell_tab2">
				<input type="radio" name="sell_tab" id="sell_tab3">

				<div class="sell_tab_wrap">
					<label for="sell_tab1" class="sell_tab_ing">판매중</label>
					<label for="sell_tab2" class="sell_tab_end">거래완료</label>
					<label for="sell_tab3" class="sell_tab_hide">숨김</label>
				</div>

				<ul class="sell_list sell_ing_box">
					<li>
						<div class="item_img_box"><img src="../static2/images/album_img.jpg"></div>
						<div class="item_info_box">
							<p class="item_name">BTS 앨범</p>
							<P class="item_info">조남동 · 9달 전 · 끌올 11회</P>
							<p class="item_price">7,000원</p>
						</div>
						<div class="item_setting">
							<img src="../static2/images/setting.png">
							<ul>
								<li><a>게시글 수정</a></li>
								<li><a>끌어올리기</a></li>
								<li><a>숨기기</a></li>
								<li><a>삭제</a></li>
							</ul>
						</div>
						<span class="item_like">관심 5 · 댓글 10</span>
						<div class="item_change">
							<a href="#" class="item_bt">예약중으로 변경</a>
							<a href="#" class="item_bt">거래완료로 변경</a>
						</div>
					</li>

					<li>
						<div class="item_img_box"><img src="../static2/images/album_img.jpg"></div>
						<div class="item_info_box">
							<p class="item_name">BTS 앨범</p>
							<P class="item_info">조남동 · 9달 전 · 끌올 11회</P>
							<p class="item_price"><span class="symbol res_symbol">예약중</span> 7,000원</p>
						</div>
						<div class="item_setting">
							<img src="../static2/images/setting.png">
							<ul>
								<li><a>게시글 수정</a></li>
								<li><a>끌어올리기</a></li>
								<li><a>숨기기</a></li>
								<li><a>삭제</a></li>
							</ul>
						</div>
						<span class="item_like">관심 5 · 댓글 10</span>
						<div class="item_change">
							<a href="#" class="item_bt">판매중으로 변경</a>
							<a href="#" class="item_bt">거래완료로 변경</a>
						</div>
					</li>
				</ul>

				<ul class="sell_list sell_end_box">
					<li>
						<div class="item_img_box"><img src="../static2/images/album_img.jpg"></div>
						<div class="item_info_box">
							<p class="item_name">BTS 앨범</p>
							<P class="item_info">조남동 · 9달 전 · 끌올 11회</P>
							<p class="item_price"><span class="symbol end_symbol">거래완료</span> 7,000원</p>
						</div>
						<div class="item_setting">
							<img src="../static2/images/setting.png">
							<ul>
								<li><a>숨기기</a></li>
								<li><a>삭제</a></li>
							</ul>
						</div>
						<span class="item_like">관심 5 · 댓글 10</span>
						<div class="item_change">
							<a href="#" class="item_bt">거래 후기 보내기</a>
						</div>
					</li>
				</ul>

				<ul class="sell_list sell_hide_box">
					<li>
						<div class="item_img_box"><img src="../static2/images/album_img.jpg"></div>
						<div class="item_info_box">
							<p class="item_name">BTS 앨범</p>
							<P class="item_info">조남동 · 9달 전 · 끌올 11회</P>
							<p class="item_price">7,000원</p>
						</div>
						<div class="item_setting">
							<img src="../static2/images/setting.png">
							<ul>
								<li><a>게시글 수정</a></li>
								<li><a>숨기기 해제</a></li>
								<li><a>삭제</a></li>
							</ul>
						</div>
						<span class="item_like">관심 5 · 댓글 10</span>
						<div class="item_change">
							<a href="#" class="item_bt">숨기기 해제</a>
						</div>
					</li>
				</ul>
			</div>
			<div class="menu_box buy_box">
				<h3>구매내역</h3>

				<ul class="buy_list">
					<li>
						<div class="item_img_box"><img src="../static2/images/album_img.jpg"></div>
						<div class="item_info_box">
							<p class="item_name">BTS 앨범</p>
							<P class="item_info">조남동 · 9달 전 · 끌올 11회</P>
							<p class="item_price"><span class="symbol end_symbol">거래완료</span> 7,000원</p>
						</div>
						<div class="item_setting">
							<img src="../static2/images/setting.png">
							<ul>
								<li><a>삭제</a></li>
							</ul>
						</div>
						<span class="item_like">관심 5 · 댓글 10</span>
						<div class="item_change">
							<a href="#" class="item_bt">거래 후기 보내기</a>
						</div>
					</li>
				</ul>
			</div>
			<div class="menu_box like_box">
				<h3>관심목록</h3>

				<ul class="like_list">
					<li>
						<div class="item_img_box"><img src="../static2/images/album_img.jpg"></div>
						<div class="item_info_box">
							<p class="item_name">BTS 앨범</p>
							<P class="item_info">조남동 · 9달 전 · 끌올 11회</P>
							<p class="item_price">7,000원</p>
						</div>
						<div class="item_setting">
							<img src="../static2/images/setting.png">
							<ul>
								<li><a>관심목록 해제</a></li>
							</ul>
						</div>
						<span class="item_like">관심 5 · 댓글 10</span>
						<div class="item_change">
							<a href="#" class="item_bt">댓글 달기</a>
						</div>
					</li>
				</ul>
			</div>
			<div class="menu_box manner_box">
				<h3>받은 매너 평가</h3>
			</div>
		</div>
	</div>

<%@ include file="footer.jsp" %>
</body>
</html>