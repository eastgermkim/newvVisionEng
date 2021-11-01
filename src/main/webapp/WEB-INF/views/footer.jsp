<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>footer</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- <link rel="manifest" href="site.webmanifest"> -->
    <link rel="shortcut icon" type="image/x-icon" href="resources/img/nvicon.png">
    <!-- Place favicon.ico in the root directory -->
  
  <!-- 반응형(모바일에서는 footer에 로고 없어지도록) -->
  <style>
  	@media ( max-width : 767.5px) {
		.col-del{
			display: none;
		}
	}
  </style>
  
</head>

<body>
	     <!-- footer-start -->
    <footer class="footer-area ">
        <div class="container">
            <div class="row justify-content-between">
            <div class="col-del col-md-4 col-xl-3">
            	<div class="single-footer-widget footer_1">
                    <a href="index.html"> <img src="resources/img/nv_logo.png" alt="" 
                    style="width: 100%;height: 100%;"> </a>
            	</div>
            </div>
                <div class="col-sm-6 col-md-5 col-xl-6">
                    <div class="single-footer-widget footer_1">
                     
                     		  <ul>
	                                <li>
	                                    <strong>사업자등록번호</strong> : 101-86-05239
	                                   	<br> 서울시 금천구 가산디지털1로 88, 704-C (가산동,IT프리미어타워)
	                                </li>
			                   </ul>
                    
                    </div>
                </div>
                <div class="col-sm-6 col-md-3 col-xl-3">
                    <div class="single-footer-widget footer_1">
                     		  <ul>
	                                <li>
	                                	<strong>대표이사</strong> : 전대순
	                                	<br><strong>이메일</strong> : nv3000@nate.com
	                                   	<br><strong>대표번호</strong> : 02–743–6977~8
			                        	<br>(<strong>Fax</strong> : 02–762–2588)
	                                </li>
			                   </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="copyright_part_text text-center">
                        <p class="footer-text m-0">
							Copyright &copy; NewVisionEng. All rights reserved.
						</p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- footer-end -->

  
</body>
</html>