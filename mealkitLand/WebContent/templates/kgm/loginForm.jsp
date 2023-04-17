<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>밀키트랜드</title>
<link rel="stylesheet" href="../../static/css/kgm/login.css">
</head>
<body>
	<%@include file="/templates/kgm/header.jsp"%>
	<section id="contents" class="container">

		<div class="login-container">
			<div class="login-area">
				<div class="login-greeting">
					<strong class="txt">안녕하세요 :) </strong>
					<p class="message">
						<i class="ico-logo-login"></i><span class="blind">밀키트랜드</span>입니다.
					</p>
				</div>
				<!--// login-greeting -->

				<form id="login_form" name="login_form" action="/auth/login"
					method="post" onsubmit="return onSubmitLogin();">
					<input type="hidden" name="encId" value=""> <input
						type="hidden" name="endPw" value="">

					<fieldset>
						<legend>아이디/비밀번호 입력</legend>
						<div class="input-group w-full">
							<label for="id" class="blind">아이디</label> <input type="text"
								id="id" name="id" class="input-text type-lg" placeholder="아이디"
								maxlength="100">
						</div>
						<div class="input-group w-full">
							<label for="pw" class="blind">비밀번호</label> <input type="password"
								id="pw" class="input-text type-lg" placeholder="비밀번호"
								maxlength="100">
						</div>
						<div class="chk-area remember-me-con">
							<div class="custom-checkbox remember-me1-con">
								<input type="checkbox" id="remember-me" class="checkbox"
									name="remember-me" checked="checked"><label for="remember-me">
									자동로그인</label>
							</div>
							<div class="custom-checkbox">
								<input type="checkbox" id="remember-me2" class="checkbox"
									name="remember-me2" checked="checked"><label
									for="remember-me2"> 아이디저장</label>
							</div>
						</div>
						<button type="submit" class="btn-basic-lg2 btn-primary w-full">
							<span>로그인</span>
						</button>
					</fieldset>

					<div class="page-guide-center find-con">
						<ul class="txt-link-list">
							<li><a href="/auth/findid" class="text-black2">아이디 찾기</a></li>
							<li><a href="/auth/findpw" class="text-black2">비밀번호 찾기</a></li>
						</ul>
					</div>

					<div id="member-login-error-text" style="display: none;"></div>

					<input type="hidden" name="cartType" value=""> <input
						type="hidden" name="nonmemberYn" value="">

					<div>
						<input type="hidden" name="_csrf"
							value="885d1ba5-c5d8-41dc-93ae-0297ea677b25">
					</div>
				</form>
				</div>
			</div>
				
				<!-- <div class="sns-login">
					<ul class="sns-login-list">
						<li><a href="javascript:loginWithNaver()"><i
								class="ico-sns-loin naver"></i><span class="blind">네이버
									로그인</span></a></li>
						<li><a href="javascript:loginWithApple()"><i
								class="ico-sns-loin apple"></i><span class="blind">애플 로그인</span></a>
						</li>
						<li><a href="javascript:loginWithKakao();"><i
								class="ico-sns-loin kakao"></i><span class="blind">카카오
									로그인</span></a></li>
						[Dev] 20220304 카카오 페이스북 로그인 추가
						
                        <li><a href="/oauth2/authorization/facebook"><i class="ico-sns-loin facebook"></i><span class="blind">페이스북 로그인</span></a></li>
                       
						// [Dev] 20220304 카카오 페이스북 로그인 추가
					</ul>
				</div> -->
				<!--// sns-login -->

				<!-- <div class="btn-bottom-area">
					<a href="/member/join/general"
						class="btn-basic-lg2 btn-default w-full"><span>간편회원가입</span></a>
				</div> -->

				<!-- <div class="page-guide-center">
					[Dev] 20211007 수정
					<ul class="txt-link-list">
						<li><a href="/auth/nonmemberOrderSearch"><span
								class="text-grey">비회원주문조회</span></a></li>
					</ul>
					// [Dev] 20211007 수정

					[Dev] 20211007 기존 삭제 :
                        <a href="#" class="btn-link-txt6 text-grey3"><u>비회원주문조회</u></a>
                   
				</div> -->

				<!-- <div class="log-benefit-bnr">
					<a href="javascript:void(0)"><img
						src="https://file.rankingdak.com/image/RANK/BANNER/AR_IMG_1/20220803/IMG1659ZBD516953587.png"
						alt="로그인배너"></a>
				</div>
			</div>
			// login-area
		</div>

		<form id="frm" name="frm" action="/auth/nonmemberOrderAgree"
			method="post">
			<input type="hidden" name="cartType" value=""> <input
				type="hidden" name="nonmemberYn" value="">
			<div>
				<input type="hidden" name="_csrf"
					value="885d1ba5-c5d8-41dc-93ae-0297ea677b25">
			</div>
		</form> -->
		<!-- <input type="hidden" id="RSAModulus"
			value="b038ca381c6f1911bca2b21e3e19f8c3355bb1c62a0e53fe426ad520a19f87dfb5b9101c5ea1bc20087cf13d841e01845eae7ac1b5cfb2ed8b32de86c8f9bab6a64adcc92ac9944f1d9fb62ba6493e6f8f3bce77047240995b08c3b1dfc219bf02d869fa72a35441b42cfeee6b76b26665be3cf8ff2136d7ab2069bb5648e553">
		<input type="hidden" id="RSAExponent" value="10001">

		<script src="/resources/common/js/rsa/rsa.js"></script>
		<script src="/resources/common/js/rsa/jsbn.js"></script>
		<script src="/resources/common/js/rsa/prng4.js"></script>
		<script src="/resources/common/js/rsa/rng.js"></script>
		<script type="text/javascript"
			src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
		<script type="text/javascript">
			var isLoginProcessing = false;
			$(document).ready(function() {

				Kakao.init('d679fde4261b811dbb01e38679baf518');

				var userInputId = getCookie("userInputId").trim();
				$("input[name='id']").val(userInputId);

				if ($("input[name='id']").val() != "") {
					$("#remember-me2").attr("checked", true);
				}

				$("#remember-me2").change(function() {
					if ($("#remember-me2").is(":checked")) {
						var userInputId = $("input[name='id']").val().trim();
						setCookie("userInputId", userInputId, 7);
					} else {
						deleteCookie("userInputId");
					}
				});

				$("input[name='id']").keyup(function() {
					if ($("#remember-me2").is(":checked")) {
						var userInputId = $("input[name='id']").val().trim();
						setCookie("userInputId", userInputId, 7);
					}
				});

			});

			function setCookie(cookieName, value, exdays) {
				var exdate = new Date();
				exdate.setDate(exdate.getDate() + exdays);
				var cookieValue = escape(value)
						+ ((exdays == null) ? "" : "; expires="
								+ exdate.toGMTString());
				document.cookie = cookieName + "=" + cookieValue;
			}

			function deleteCookie(cookieName) {
				var expireDate = new Date();
				expireDate.setDate(expireDate.getDate() - 1);
				document.cookie = cookieName + "= " + "; expires="
						+ expireDate.toGMTString();
			}

			function getCookie(cookieName) {
				cookieName = cookieName + '=';
				var cookieData = document.cookie;
				var start = cookieData.indexOf(cookieName);
				var cookieValue = '';
				if (start != -1) {
					start += cookieName.length;
					var end = cookieData.indexOf(';', start);
					if (end == -1)
						end = cookieData.length;
					cookieValue = cookieData.substring(start, end);
				}
				return unescape(cookieValue);
			}

			function onSubmitLogin() {

				// 대문자 로그인처리 안되는 부분
				const loginId = $('#id').val().toLowerCase().trim();
				const password = $('#pw').val();
				if (loginId.length === 0) {
					alert('회원 아이디를 입력해주세요.');
					return false;
				}
				if ($("#remember-me2").is(":checked")) {
					setCookie("userInputId", loginId, 7);
				}
				/* AS-IS ID 생성규칙이 달라 해당검증 주석처리
				const isValid = (loginId.length >= 4 && loginId.length <= 16) && (loginId.search(/^[a-zA-Z]+(\w+)*$/) !== -1);
				if (!isValid) {
				    alert('4~16자 영문 또는 숫자만 사용 가능합니다. 첫 글자는 숫자가 아니어야 합니다.');
				    return false;
				}
				 */

				if (password.length === 0) {
					alert('비밀번호를 입력해주세요.');
					return false;
				}

				let rsa = new RSAKey();
				rsa.setPublic($('#RSAModulus').val(), $('#RSAExponent').val());

				$('input[name=encId]').val(rsa.encrypt(loginId));
				$('input[name=endPw]').val(rsa.encrypt(password));

				$('#login_form').attr('action', '/auth/loginProc');
				return true;
			}

			// 비회원주문 클릭
			function fnNonmemberOrder(e) {
				e.preventDefault();
				$('#frm').submit();
			}

			function loginWithKakao() {
				if (isLoginProcessing)
					return;
				document.cookie = "isRememberMe="
						+ $("#remember-me").prop("checked");
				Kakao.Auth
						.authorize({
							redirectUri : 'https://www.rankingdak.com/auth/loginWithKaKao',
						});
				isLoginProcessing = true;
				setTimeout(function() {
					isLoginProcessing = false;
				}, 5000)
			}

			function loginWithApple() {
				if (isLoginProcessing)
					return;
				document.cookie = "isRememberMe="
						+ $("#remember-me").prop("checked");
				document.location.href = "/auth/login/apple";
				isLoginProcessing = true;
				setTimeout(function() {
					isLoginProcessing = false;
				}, 5000)
			}

			function loginWithNaver() {
				if (isLoginProcessing)
					return;
				document.location.href = "/oauth2/authorization/naver";
				isLoginProcessing = true;
				setTimeout(function() {
					isLoginProcessing = false;
				}, 5000)
			}
		</script> -->

	</section>


	<%@include file="/templates/kgm/footer.jsp"%>

</body>
</html>