<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ page session="true"%>

<!doctype html>
<html class="no-js" lang="zxx">
<head>
<style>
#nv_logo{
	width: 161px;
    transition: all 0.4s;
    x: 0px;
    y: 0px;
}
.main-header-area_pc{
    width: 80%;
    margin-left: 80px;
}
.header-area .main-header-area_pc .main-menu ul li a {
    color: white;
    font-size: 18px;
}
.header-area .main-header-area_pc .main-menu ul li .submenu {
    background: transparent;
    box-shadow: none;
}
.header_main_pc_li{
	margin-left: 60px
}
.ti-angle-down_main_pc{
	color: white;
}

body, p, h1, h2, h3, h4, h5, h6, ul, ol, li, dl, dt, dd, table, th, td, form, fieldset, legend, input, textarea, button, select, div {
    margin: 0;
    padding: 0;
}
ul, ol, dl {
    list-style: none;
}
/* nav a {
    display: inline-block;
    transition: color 0.3s;
    z-index: 3;
}
header {
    position: fixed;
    width: 100%;
    box-sizing: border-box;
    z-index: 1000;
    min-width: 1260px;
 }
 header h1 {
    position: absolute;
    left: 70px;
    top: 50%;
    transform: translateY(-50%);
    z-index: 4;
    font-size: 0;
    font-weight: normal;
}
a {
    text-decoration: none;
    color: inherit;
    cursor: pointer;
}
header h1 img {
    width: 161px;
    transition: all 0.4s;
    x: 0px;
    y: 0px;
}
header h1 svg * {
    transition: all 0.3s;
}
:not(svg) {
    transform-origin: 0px 0px;
}
header h1 svg .st0 {
    fill: #FBB584;
}
.grid-box {
    padding-left: 21.35416666666667vw;
}
nav {
    font-weight: 500;
    font-size: 18px;
    color: #fff;
    display: block;
    box-sizing: border-box;
    position: relative;
}
nav>ul {
    box-sizing: border-box;
    display: flex;
    margin: 0;
    padding: 0;
}
nav>ul>li {
	height: 133px;
    display: flex;
    align-items: center;
    transition: height 0.4s;
    vertical-align: top;
}
nav a {
    display: inline-block;
    transition: color 0.3s;
    z-index: 3;
}
nav li+li {
    margin-left: 60px;
}
nav>ul>li .inner {
    height: 0;
    flex: none;
    background-color: #fff;
    position: absolute;
    top: 100%;
    left: 0;
    right: 0;
    z-index: 1;
    opacity: 0;
    visibility: hidden;
    transition: all 0.3s;
}
nav>ul>li .inner .box {
    overflow: hidden;
    height: 100%;
}
nav>ul>li .inner ul {
    display: flex;
    height: 100%;
    align-items: center;
    justify-content: center;
}
nav>ul>li ul li {
    position: relative;
    height: 100%;
    display: flex;
    align-items: center;
    color: #444;
    font-weight: 500;
    font-size: 16px;
    vertical-align: top;
}
nav>ul>li ul li a {
    height: 100%;
    display: flex;
    align-items: center;
}
.nation {
    position: absolute;
    right: 62px;
    top: 50%;
    font-size: 0;
    overflow: hidden;
    text-align: center;
    z-index: 4;
    transform: translateY(-50%);
    transition: all 0.3s;
}
.nation .nation-box {
    box-sizing: border-box;
    height: 41px;
    border-radius: 20px;
    background-color: rgba(255, 255, 255, 0);
    width: 40px;
    white-space: nowrap;
    transition: all 0.4s;
    border: 1px solid rgba(221, 221, 221, 0);
}
.nation a {
    color: #fff;
    transition: color 0.3s, font-size 0.3s;
    font-family: 'Myriad';
    font-size: 14px;
    font-weight: 700;
    position: relative;
    top: 7px;
    opacity: 0;
    transition: all 0.3s;
}
.nation .on {
    display: inline-block;
    opacity: 1;
    font-size: 16px;
}
.nation a+a {
    margin-left: 20px;
}

</style>
</head>
<body>

	<!-- header-start -->
	<header class="white" id="header_main_pc">
      <h1>
        <a href="/"> 
       	 <img id="nv_logo" src="/resources/img/nv_logo.png">
		</a>
      </h1>

		메뉴
		<nav class="grid-box">
			<ul>
				<li class=""><a href="/ko/company/about">회사소개</a></li>

				<li class="">
					<a href="/ko/company/investors/corporate-structure-tab1">투자정보</a>

					2뎁스
					<div class="inner">
						<div class="box">
							<ul>
								<li class=""><a href="/ko/company/investors/earnings-release/list"><span>실적발표</span></a></li>
								<li class=""><a href="/ko/company/investors/ir-schedule/list"><span>IR일정</span></a></li>
								<li class=""><a href="/ko/company/investors/financial-information-tab1"><span>재무정보</span></a></li>
								<li class=""><a href="/ko/company/investors/stock-information-tab1"><span>주식정보</span></a></li>
								<li class=""><a href="/ko/company/investors/official-data"><span>공시자료</span></a></li>
								<li class=""><a href="/ko/company/investors/corporate-structure-tab1"><span>기업지배구조</span></a></li>
							</ul>
						</div>
					</div>
					/2뎁스
				</li>

                <li class=""><a href="/ko/cs/news/list"><span>미디어센터</span></a></li>

                <li class=""><a href="/ko/sustainability/sustainable-management"><span>지속가능경영</span></a></li>
			</ul>
		</nav>
		/메뉴

		<div class="nation">
			<div class="nation-box">
				<a class="on" href="javascript:app.langChange('ko');">KOR</a>
				<a class="" href="javascript:app.langChange('en');">ENG</a>
				<a class="" href="javascript:app.langChange('cn');">CHN</a>
			</div>
		</div>
    </header>
	
</body>
</html>