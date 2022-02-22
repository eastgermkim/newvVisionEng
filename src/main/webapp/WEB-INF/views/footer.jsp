<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ page session="true" %>

<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>footer</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- <link rel="manifest" href="site.webmanifest"> -->
    <link rel="shortcut icon" type="image/x-icon" href="/resources/img/nvicon.png">
    <!-- Place favicon.ico in the root directory -->
  
  <!-- 반응형  -->
<style>

	.mobile{
		display: none;
	}

  	@media ( max-width : 767.5px) {
		.desktop{
			display: none;
		}
		.mobile{
			display:block;
		}
	}
  	@media ( max-width : 991.5px) {
		.desktop-contact{
			display: none;
		}
	}
	.footer_li{
		display: inline-block;
  		vertical-align: middle;
		margin-right: 20px;
	}
  </style>
  
</head>

<body>

	<!-- footer-start -->
    <footer class="footer-area" style="padding:3% 0 3%;display: flex;">
        <div class="container">
                <div class="desktop" style="float: left;">
                	<div>
                		<ul>
                			<li class="footer_li"><a href="/company/introduce">회사소개</a></li>
                			<li class="footer_li"><a href="/business/business_cctv">사업소개</a></li>
                			<li class="footer_li"><a href="/business/result"">사업실적</a></li>
                			<li class="footer_li"><a href="/support/notice">고객지원</a></li>
                			<li class="footer_li"><a href="/recruit/list">채용정보</a></li>
                			
                			<sec:authorize access="isAnonymous()">
                				<li class="footer_li"><a href="/login" style="color: grey;">Admin</a></li>
							</sec:authorize>
							<sec:authorize access="isAuthenticated()">
                				<li class="footer_li"><a href="/logout">
                						<span style="color:mediumblue;">로그아웃</span>(${admin_Login_id})
                				</a></li>
							</sec:authorize>
                		</ul>
                	</div>
                
                    <div class="single-footer-widget footer_1">
                       	<p style="margin:auto;text-align: left;font-size: 0.8em; padding-top: 1em;">
                       	본사 : (08590)서울시 금천구 가산디지털1로 88, 704-C (가산동,IT프리미어타워)
                       	/ 사업자등록번호 : 101-86-05239
                     	<br>대표자명 : 전대순 / 대표전화 : 02–743–6977~8 / Fax : 02–762–2588 / 이메일 : nv3000@empas.com
                       	<br>COPYRIGHT &copy; 2021 NEWVISIONENG CO LTD. ALL RIGHTS RESERVED.
                        </p>
                    </div>
                </div>
                
              <div class="desktop-contact" style="float: right;text-align: right;">
              		<p style="font-size: 14px;font-weight: 500;line-height: 1;position: relative;margin: auto;">
              			Contact
              		</p>
		            <a href="tel:02-743–6977" style="display: block;font-size: 24px;letter-spacing: 0.05em;">
		            	02)743–6977~8
		            </a>
		            <ul>
		                <li style="display: block;font-size: 14px;font-weight: 400;color: #828282;line-height: 20px;">
		                	MON-FRI 09:00 - 18:00<br>( Lunch 12:00 - 13:00 )
		                </li>
		            </ul>
		       </div>
		       
       
                <div class="mobile" >
                    <div class="single-footer-widget footer_1" style="margin: auto;">
                       	<p style="margin:auto;text-align: center;font-size: 0.8em;line-height:1.6;padding-top: 3%">
                       	<span>서울시 금천구 가산디지털1로 88, 704-C<br>(가산동,IT프리미어타워)</span>
                       	<span>/ 대표자명 : 전대순</span>
                     	<br><span>사업자등록번호 : 101-86-05239</span>
                     	<br><span>대표전화 : 02)743–6977~8</span><span> / Fax : 02)762–2588</span>
                     	<br><span>이메일 : nv3000@empas.com</span>
                        <p style="margin:auto;text-align: center;font-size: 0.8em;line-height:1.6;padding-top: 3%;padding-bottom: 3%;">
                       	COPYRIGHT &copy; 2021 NEWVISIONENG CO LTD.<br>ALL RIGHTS RESERVED.
                       	</p>
                    </div>
                </div>
        </div>
       
    </footer>
    <!-- footer-end -->
    
    <!-- JS here -->
    <script src="/resources/js/vendor/modernizr-3.5.0.min.js"></script>
    <script src="/resources/js/vendor/jquery-1.12.4.min.js"></script>
    <script src="/resources/js/popper.min.js"></script>
    <script src="/resources/js/bootstrap.min.js"></script>
    <script src="/resources/js/owl.carousel.min.js"></script>
    <script src="/resources/js/isotope.pkgd.min.js"></script>
    <script src="/resources/js/ajax-form.js"></script>
    <script src="/resources/js/waypoints.min.js"></script>
    <script src="/resources/js/jquery.counterup.min.js"></script>
    <script src="/resources/js/imagesloaded.pkgd.min.js"></script>
    <script src="/resources/js/scrollIt.js"></script>
    <script src="/resources/js/jquery.scrollUp.min.js"></script>
    <script src="/resources/js/wow.min.js"></script>
    <script src="/resources/js/nice-select.min.js"></script>
    <script src="/resources/js/jquery.slicknav.min.js"></script>
    <script src="/resources/js/jquery.magnific-popup.min.js"></script>
    <script src="/resources/js/plugins.js"></script>
    <script src="/resources/js/materialize.js"></script>
	
    <!--contact js -->
    <script src="/resources/js/jquery.ajaxchimp.min.js"></script>
    <script src="/resources/js/jquery.form.js"></script>
    <script src="/resources/js/jquery.validate.min.js"></script>
    <script src="/resources/js/mail-script.js"></script>
                 
    <script src="/resources/js/main.js"></script>
    
    <!-- aos --> 
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script> 
    <script src="https://code.jquery.com/jquery-1.11.3.min.js"></script> 

  
</body>
</html>