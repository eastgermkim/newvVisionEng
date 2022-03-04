<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ page session="true"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>New Vision ENG</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="shortcut icon" type="image/x-icon"
	href="/resources/img/nvicon.png">

<!-- swiperjs. -->
<link rel="stylesheet"
	href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>


<!-- CSS here -->
<link rel="stylesheet" href="/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="/resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="/resources/css/magnific-popup.css">
<link rel="stylesheet" href="/resources/css/font-awesome.min.css">
<link rel="stylesheet" href="/resources/css/themify-icons.css">
<link rel="stylesheet" href="/resources/css/nice-select.css">
<link rel="stylesheet" href="/resources/css/flaticon.css">
<link rel="stylesheet" href="/resources/css/animate.css">
<link rel="stylesheet" href="/resources/css/slicknav.css">
<link rel="stylesheet" href="/resources/css/style.css">
<!-- <link rel="stylesheet" href="/resources/css/materialize.css"> -->
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

<!-- AOS -->
<link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
<script src="https://unpkg.com/aos@next/dist/aos.js"></script>

<style>
#header_main_pc {
	display: none;
	position: fixed;
	width: 100%;
	z-index: 5;
}

@media ( min-width : 991.5px) {
	#header_main_mobile {
		display: none;
	}
	#header_main_pc {
		display: block;
	}
}

.slider-area .single-slider {
	height: 100vh;
}

.slider-area .slider-active .owl-dots {
	display: flex;
	width: 40%;
	height: 5%;
	top: 40%;
	left: 11%;
}

.slider-area .slider-active .owl-dots div {
	border: none;
	width: auto;
	height: 100%;
	background: transparent;
	display: block;
	margin: 0;
	color: #c9c9c9;
	font-size: 1.1em;
	font-weight: 300;
}

.slider-area .slider-active .owl-dots div.active {
	background: transparent;
	color: #fff;
	font-weight: 500;
}

.slider-area .slider-active .owl-dots .owl-dot .business {
	color: #fff;
	font-size: 1.5em;
}

.slider-area .slider-active .owl-dots .owl-dot:not (:first-child )::before
	{
	content: "";
	display: inline-block;
	width: 1px;
	height: 13px;
	margin: 0 2em;
	background-color: #c9c9c9;
}
</style>
<!-- 마우스 스크롤 -->
<style>
.scroll {
	padding-top: 60px;
}

.scroll span {
	position: fixed;
	top: 90%;
	left: 95%;
	width: 30px;
	height: 50px;
	border: 2px solid #fff;
	border-radius: 50px;
	box-sizing: border-box;
	z-index: 5;
	background: rgba(248, 248, 248, 0.3);
}

.scroll span::before {
	position: absolute;
	top: 10px;
	left: 50%;
	content: '';
	width: 6px;
	height: 6px;
	margin-left: -3px;
	background-color: #fff;
	border-radius: 100%;
	-webkit-animation: sdb 2s infinite;
	animation: sdb 2s infinite;
	box-sizing: border-box;
}

.scroll span.active {
	position: fixed;
	top: 90%;
	left: 95%;
	width: 30px;
	height: 50px;
	border: 2px solid #4c4646;
	border-radius: 50px;
	box-sizing: border-box;
	z-index: 5;
	background: rgba(248, 248, 248, 0.3);
}

.scroll span.active::before {
	position: absolute;
	top: 10px;
	left: 50%;
	content: '';
	width: 6px;
	height: 6px;
	margin-left: -3px;
	background-color: #4c4646;
	border-radius: 100%;
	-webkit-animation: sdb 2s infinite;
	animation: sdb 2s infinite;
	box-sizing: border-box;
}

@
-webkit-keyframes sdb { 0% {
	-webkit-transform: translate(0, 0);
	opacity: 0;
}

40%
{
opacity
:
 
1;
}
80%
{
-webkit-transform
:
 
translate
(0
,
20
px
);

    
opacity
:
 
0;
}
100%
{
opacity
:
 
0;
}
}
@
keyframes sdb { 0% {
	transform: translate(0, 0);
	opacity: 0;
}

40%
{
opacity
:
 
1;
}
80%
{
transform
:
 
translate
(0
,
20
px
);

    
opacity
:
 
0;
}
100%
{
opacity
:
 
0;
}
}

/* 글씨 & 글씨 애니미에션 */
.scroll-text {
	position: fixed;
	z-index: 5;
	left: 94.6%;
	color: #fff;
	top: 96%;
}

.main_sentence {
	z-index: 5;
	color: #fff;
	margin-left: 10%;
	font-weight: 700;
	font-size: 3em;
	line-height: 1em;
	/* 	transform: translateY(6rem);
	animation: up 500ms linear forwards; */
}

.main_sentence_sub {
	z-index: 5;
	color: #fff;
	margin-left: 10%;
	margin-right:10%;
	font-weight: 300;
	font-size: 1.5em;
	line-height: 1em;
	/* 	transform: translateY(6rem);
	animation: up 500ms linear forwards; */
}

.position1 .sentence_ani, .position2 .sentence_ani, .position3 .sentence_ani
	{
	transform: translateY(6rem);
	animation: up 500ms linear forwards;
	visibility: initial !important;
}

.owl-item.active .sentence_ani {
	transform: translateY(6rem);
	animation: up 500ms linear forwards;
}

@keyframes up { 100% {
	transform: translateY(0);
	}

}
.sentence-container {
	width: 100%;
	overflow: hidden;
	position: absolute;
	z-index: 3;
	top: 45%;
}

.sentence-wrapper {
	overflow: hidden;
}

.position2 {
	top: 15%;
	position: relative;
	overflow: hidden;
}

.position3 {
	top: 15%;
	position: relative;
	overflow: hidden;
}


.focus::before {
	content: "";
	height: 90%;
	top: 3%;
	width: 0.4em;
	background-color: #f36d20;
	position: absolute;
	left: 9%;
	animation: fadeInDown .7s forwards;
}

.business_wrapper {
	margin-top: 25vh;
	margin-left: 10%;
	margin-right: 10%;
	width: 80%;
}

.business_wrapper img {
	width: 100%;
	height: 60vh;
	object-fit: cover;
}

.business_wrapper .business_sentence {
	position: absolute;
	/* top: 50%; */
	padding-top: 35vh;
	color: #fff;
	background: rgba(0, 0, 0, 0.25);
	height: 100%;
	width: 100%;
}

.business_wrapper .business_sentence h4 {
	color: #fff;
	margin-left: 5%;
	margin-right: 5%;
	font-size: 1.2em;
}

.business_wrapper .business_sentence h3 {
	color: #fff;
	margin-left: 5%;
	margin-right: 5%;
	font-size: 1.4vw;
	font-weight: 700;
	word-break: break-word;
	width: auto;
}

.business_wrapper .business_sentence p {
	color: rgba(255, 255, 255, 0.7);
	margin-left: 5%;
	margin-right: 5%;
	font-size: 1em;
}

.business_wrapper .team-link {
	margin: 0 1em 0;
	text-align:left!important;
}

.business_wrapper .team-link img {
	width: 5em !important;
	height: auto;
}

.business_wrapper .team-link h3 {
	color: #fff;
	opacity: 0;
	font-size: 1.5vw;
	font-weight: 700;
	word-break: break-word;
}

.single-team:hover .team-link h3 {
	-webkit-animation: fadeInUp .7s forwards;
	animation: fadeInUp .7s forwards;
	animation-delay: .5s;
}

.business_wrapper .team-link p {
	color: #fff;
	opacity: 0;
	font-size: 1.25em;
}

.single-team:hover .team-link p {
	-webkit-animation: fadeInUp .7s forwards;
	animation: fadeInUp .7s forwards;
	animation-delay: 1s;
}

/* arrow */

.the-arrow {
  width: 1px;
  transition: all 0.2s;
}
.the-arrow.-left {
  position: absolute;
  top: 60%;
  left: 0;
}
.the-arrow.-left > .shaft {
  width: 0;
  background-color: #fff;
}
.the-arrow.-left > .shaft:before, .the-arrow.-left > .shaft:after {
  width: 0;
  background-color: #fff;
}
.the-arrow.-left > .shaft:before {
  transform: rotate(0);
}
.the-arrow.-left > .shaft:after {
  transform: rotate(0);
}
.the-arrow.-right {
  top: 3px;
}
.the-arrow.-right > .shaft {
  width: 1px;
  transition-delay: 0.2s;
}
.the-arrow.-right > .shaft:before, .the-arrow.-right > .shaft:after {
  width: 8px;
  transition-delay: 0.3s;
  transition: all 0.5s;
}
.the-arrow.-right > .shaft:before {
  transform: rotate(40deg);
}
.the-arrow.-right > .shaft:after {
  transform: rotate(-40deg);
}
.the-arrow > .shaft {
  background-color: #fff;
  display: block;
  height: 1px;
  position: relative;
  transition: all 0.2s;
  transition-delay: 0;
  will-change: transform;
}
.the-arrow > .shaft:before, .the-arrow > .shaft:after {
  background-color: #fff;
  content: "";
  display: block;
  height: 1px;
  position: absolute;
  top: 0;
  right: 0;
  transition: all 0.2s;
  transition-delay: 0;
}
.the-arrow > .shaft:before {
  transform-origin: top right;
}
.the-arrow > .shaft:after {
  transform-origin: bottom right;
}

.single-team:hover .team-link .animated-arrow {
    display: inline-flex;
    color: #fff;
    font-size: 1.25em;
    text-decoration: none;
    position: absolute;
    transition: all 0.2s;
    float: left;
    -webkit-animation: fadeInUp .7s forwards;
    animation: fadeInUp .7s forwards;
    animation-delay: 1.5s;
    opacity: 0;
    width: 100%;
    left: 0;
    bottom: -4em;
}
.animated-arrow:hover {
    color: #f36d20!important;
}
.animated-arrow:hover > .the-arrow.-left > .shaft {
  width: 64px;
  transition-delay: 0.1s;
  background-color: #f36d20;
}
.animated-arrow:hover > .the-arrow.-left > .shaft:before, .animated-arrow:hover > .the-arrow.-left > .shaft:after {
  width: 8px;
  transition-delay: 0.1s;
  background-color: #f36d20;
}
.animated-arrow:hover > .the-arrow.-left > .shaft:before {
  transform: rotate(40deg);
}
.animated-arrow:hover > .the-arrow.-left > .shaft:after {
  transform: rotate(-40deg);
}
.animated-arrow:hover > .main {
  transform: translateX(17px);
  transform: translateX(80px);
}
.animated-arrow:hover > .main > .the-arrow.-right > .shaft {
  width: 0;
  transform: translateX(200%);
  transition-delay: 0;
}
.animated-arrow:hover > .main > .the-arrow.-right > .shaft:before, .animated-arrow:hover > .main > .the-arrow.-right > .shaft:after {
  width: 0;
  transition-delay: 0;
  transition: all 0.1s;
}
.animated-arrow:hover > .main > .the-arrow.-right > .shaft:before {
  transform: rotate(0);
}
.animated-arrow:hover > .main > .the-arrow.-right > .shaft:after {
  transform: rotate(0);
}
.animated-arrow > .main {
  display: inline-flex;
  align-items: center;
  transition: all 0.2s;
}
.animated-arrow > .main > .text {
  margin: 0 16px 0 0;
  line-height: 1;
}
.animated-arrow > .main > .the-arrow {
  position: relative;
}

.business_wrapper .single-team .team-thumb .team-hover {
	-webkit-transition: all ease .8s;
	transition: all ease .8s;
	transform: translateY(100%);
}

.team-area .single-team .team-thumb .team-hover::before {
	transition: all ease .8s;
}

.team-area .single-team:hover .team-hover {
	transform: translateY(0px);
}

.team-area .single-team:hover .team-thumb {
	box-shadow: 0px 30px 30px -15px rgb(0 0 0/ 60%);
	transition: box-shadow 500ms ease-in-out, transform 500ms ease-in-out;
}

.single-team:hover .team-link .icon_ani {
	-webkit-animation: fadeInUp .7s forwards;
	animation: fadeInUp .7s forwards;
}

.single-team .team-link .icon_ani {
	opacity: 0;
	margin-bottom:10%;
}

.team-area .single-team:hover .business_sentence {
	animation: fadein 3s;
	display: none;
}

@
keyframes fadeout {from { opacity:1;
	
}

to {
	opacity: 0;
}

}

/* 뉴스 */
.news_container {
	width: 40%;
	overflow: hidden;
	position: absolute;
	z-index: 3;
	top: 20%;
	display: flex;
	justify-content: space-between;
	margin-left: 10%;
	height: 1.5em;
}
.news_container h3{
    font-size: 1.5em;
    margin-bottom: 0;
    line-height: 1em;
}

.news_group {
	width: 70%;
	position: relative;
	/* bottom: 1.4em; */
}

.news_group li {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	color: #fff !important;
}

.news_sentence {
	font-weight: 300;
	font-size: 1.25em;
	line-height: 1em;
}

.news_navi {
	width: 20%;
	overflow: hidden;
	z-index: 3;
	top: 90%;
	color: #fff;
	display: flex;
	justify-content: space-between;
}

/* 페이지 바 표시 */
.homePageGroup {
	position: sticky;
	z-index: 5;
	top: 20%;
	margin-left: 85%;
}

.homePageGroup .pageGroup {
	display: flex;
	background: transparent;
	color: #fff;
}

.homePageGroup .pageGroup h3 {
	color: #fff;
	font-size: 2.5em;
	font-weight: 700;
	display: flex;
	align-items: center;
	margin-right: 0.3em;
}

.homePageGroup .pageGroup .pageNumber {
	margin-top: 0.7em;
	margin-right: 0.5em;
	display: block;
	text-indent: -999em;
	overflow: hidden;
	background-color: #fff;
	width: 2px;
	height: 2em;
	transition: width .2s ease-out, background .2s;
}

.homePageGroup .pageGroup .pageNumber.active {
	width: 4px;
	background: #f36d20 !important;
}

.view_indicator {
    position: fixed;
    right: 3.5%;
    top: 50%;
    width: auto;
    white-space: nowrap;
    margin-left: -16rem;
    z-index: 15;
    transform-origin: right 0;
    transform: translateY(14rem) rotate(90deg);
}

.view_indicator ul li {
    display: inline-block;
    vertical-align: middle;
}

.view_indicator ul li + li {
    margin-left: 1.5rem;
}

.view_indicator ul li button {
	cursor: pointer;
    background: transparent;
    border: none;
    padding: 0;
    margin: 0;
}

.view_indicator ul li.is_active button {
    color: #ffffff;
}

.view_indicator ul li.is_active button .indi_bul {
    border-color: #f36d20;
    background: #f36d20;
}

.view_indicator ul li button .indi_bul {
    display: inline-block;
    width: 1rem;
    height: 1rem;
    border: 0.2rem solid #999999;
    border-radius: 50%;
    background: transparent;
    vertical-align: middle;
    transition: 1s;
}

.view_indicator ul li.is_active button .cont_tit {
    color: #ffffff;
}

.view_indicator ul li.is_active button .cont_tit {
    display: inline-block;
    font-size: 1.2rem;
    color: #000000;
    font-weight: 500;
}

.view_indicator ul li.white button .cont_tit {
    color: #fff!important;
}

.view_indicator ul li button .cont_tit {
    position: relative;
    display: none;
    margin: 0 4.5rem 0 1.3rem;
    vertical-align: middle;
}

.view_indicator ul .indicator button .cont_tit:after {
    position: absolute;
    display: block;
    content: '';
    left: calc(100% + 1.2rem);
    top: 50%;
    height: 1px;
    width: 3rem;
    background: #000000;
}

.view_indicator ul .white button .cont_tit:after {
    background: #fff!important;
}

/* 슬라이드 버튼 */
.owl-carousel .owl-nav div {
	border: 1px solid #c9c9c9;
	color: #c9c9c9;
	opacity: 0.5;
}

.owl-carousel .owl-nav {
	left: 5em;
}

.owl-carousel .owl-nav .owl-prev, .owl-carousel .owl-nav .owl-next {
	width: 3em;
	height: 3em;
	border-radius: 50%;
	line-height: 3.25em;
}

.owl-carousel .owl-nav i {
	font-size: 2em;
}

.owl-carousel .owl-dots.disabled, .owl-carousel .owl-nav.disabled {
	position: absolute;
	display: block;
	top: 65%;
	left: 10%;
}

.owl-carousel:hover .owl-nav div:hover {
	color: #fff;
	line-height: 3.25em;
}
</style>

<style>
.swiper {
	width: 100%;
	/* height: 100%; */
	/* margin-top: 125px; */
	/* margin-top: 60px; */
	margin-top: 25vh;
	padding-right: 5%;
	padding-left: 5%;
}
/* @media (max-width: 768px){
	.swiper{
	    margin-top: 45px;
	}
}
@media (max-width: 640px){
	.swiper{
	    margin-top: 25px;
	}
} */
.swiper-slide {
	text-align: center;
	font-size: 18px;
	/* Center slide text vertically */
	display: -webkit-box;
	display: -ms-flexbox;
	display: -webkit-flex;
	display: flex;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	-webkit-justify-content: center;
	justify-content: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	-webkit-align-items: center;
	align-items: center;
}

.swiper-slide img {
	display: block;
	width: 100%;
	height: 100%;
	object-fit: cover;
}

.swiper-slide.swiper-slide-active {
	left: 12.5%;
	margin-top: 10vh;
	z-index: 1;
}

.swiper-slide.swiper-slide-duplicate-active {
	right: 40%;
	margin-top: 15vh;
}

.swiper-slide.swiper-slide-duplicate-active img {
	height: 80% !important;
}

.swiper-slide.swiper-slide-duplicate-active .business-text {
	display: none;
}

.swiper-slide.swiper-slide-duplicate.swiper-slide-duplicate-active {
	right: 40%;
	margin-top: 15vh;
}

.swiper-slide.swiper-slide-duplicate.swiper-slide-duplicate-active img {
	height: 80% !important;
}

.swiper-slide.swiper-slide-duplicate.swiper-slide-duplicate-active .business-text
	{
	display: none;
}

.swiper-slide.swiper-slide-duplicate-prev {
	right: 12.5%;
	margin-top: 10vh;
	z-index: 1;
}

.swiper-slide.swiper-slide-prev {
	left: 40%;
	margin-top: 15vh;
}

.swiper-slide.swiper-slide-prev img {
	height: 80% !important;
}

.swiper-slide.swiper-slide-prev .business-text {
	display: none;
}

.swiper-slide.swiper-slide-duplicate.swiper-slide-prev {
	left: 40%;
	margin-top: 15vh;
}

.swiper-slide.swiper-slide-duplicate.swiper-slide-prev img {
	height: 80% !important;
}

.swiper-slide.swiper-slide-duplicate.swiper-slide-prev .business-text {
	display: none;
}

.swiper-slide.swiper-slide-next {
	transition: all ease;
	margin-top: 10vh;
	z-index: 2;
}

.swiper-slide.swiper-slide-next img {
	transform: scaleX(1.35) scaleY(1.2);
	transition: all ease 0.5s;
}

.swiper-button-next, .swiper-button-prev {
	font-weight: bold;
	color: white;
	text-shadow: 0px 0px 10px black;
	top: 39%;
}

.swiper-button-prev {
	left: 4%;
}

.swiper-button-next {
	right: 4%;
}

.swiper-pagination {
	position: initial;
	margin-top: 12px;
}

:root { -
	-swiper-theme-color: #f36d20;
}

.img-wrapper {
	position: relative;
	margin-bottom: 60px;
}

.img-wrapper img {
	position: absolute;
	top: 0;
	left: 0;
	transform: translate(50, 50);
	width: 100%;
	height: 100%;
	object-fit: cover;
	margin: auto;
	border-radius: 1em;
}

<style>
	/* ====================================================================================== */
	.position3 .main_sentence {
	position: relative;
	visibility: hidden;
}

.position3 .main_sentence_sub {
	word-break: keep-all;
	margin-left: 10%;
	visibility: hidden;
}
/* @media (max-width: 767.5px){
	.position3 .main_sentence {
	    font-size: 35px;
	}
	.position3 .main_sentence::before {
	    height: 5px;
	    width: 21px;
	    left: -24px;
	    top: 5px;
	}
	.position3 .main_sentence_sub {
	    font-size: 14px;
	}
}
@media (max-width: 450px){
	.position3 .main_sentence::before {
		width: 15px;
	    left: -15px;
	} */
}
</style>

<style>
.business-text {
	width: 100%;
	position: absolute;
	/*  bottom: 15px; */
	bottom: -33px;
}

.business-text>p {
	/* color: #fff; */
	color: #1c1c1c;
	font-size: 1em;
	line-height: 1em;
	/* text-shadow: 0px 0px 3px black; */
	font-weight: 500;
	margin: 1%;
}

.business-text>p:first-child {
	/* font-size: 24px; */
	height: 20px;
}

.business-text>p:last-child {
	font-size: 17px;
	color: #fff;
	margin-bottom: 0px;
	margin-top: 7px;
	display: none;
}

@media ( max-width : 767.5px) {
	.business-text>p:first-child {
		font-size: 18px;
	}
	.business-text>p:last-child {
		font-size: 15px;
	}
}
</style>

<style>
@media ( max-width : 991.5px) {
	.homePageGroup {
		display: none;
	}
}

@media ( max-width : 767.5px) {
	.position3 .main_sentence {
		margin-left: 12%;
	}
	.position3 .main_sentence_sub {
		margin-left: 12%;
	}
}

.br1999 {
	display: none;
}

@media ( max-width : 1199px) {
	.br1999 {
		display: initial;
	}
}

/* 사업실적 */
.carousel {
	overflow: hidden;
	width: 80%;
	margin-left: 10%;
	margin-right: 10%;
	margin-top:20vh;
	height: 25em;
	/*   -webkit-perspective: 500px; */
	perspective: 500px;
	-webkit-transform-style: preserve-3d;
	transform-style: preserve-3d;
	-webkit-transform-origin: 0% 50%;
	transform-origin: 0% 50%;
}

.carousel.carousel-slider {
	top: 0;
	left: 0;
}

.carousel.carousel-slider .carousel-fixed-item {
	position: absolute;
	left: 0;
	right: 0;
	bottom: 20px;
	z-index: 1;
}

.carousel.carousel-slider .carousel-fixed-item.with-indicators {
	bottom: 68px;
}

.carousel.carousel-slider .carousel-item {
	width: 100%;
	height: 100%;
	min-height: 400px;
	position: absolute;
	top: 0;
	left: 0;
}

.carousel.carousel-slider .carousel-item h2 {
	font-size: 24px;
	font-weight: 500;
	line-height: 32px;
}

.carousel.carousel-slider .carousel-item p {
	font-size: 15px;
}

.carousel .carousel-item {
	visibility: hidden;
	width: 43em;
	height: fit-content;
	position: absolute;
	top: 0;
	left: 0;
	box-shadow: 2px 2px 19px 0px rgb(0 0 0/ 20%);
	background: #fff;
	display: flex;
	justify-content: space-between;
}

.carousel .carousel-item>img {
	width: 24em;
	height: 18em;
	border-radius: 0.5em;
	margin: 2em;
	object-fit: cover;
}

.carousel .carousel-item .carousel-item-text {
	width: 37%;
	height: fit-content;
	margin-top: 20%;
	margin-right: 1em;
}

.carousel .indicators {
	position: absolute;
	text-align: center;
	left: 0;
	right: 0;
	bottom: 0;
	margin: 0;
}

.carousel .indicators .indicator-item {
	display: inline-block;
	position: relative;
	cursor: pointer;
	height: 8px;
	width: 8px;
	margin: 24px 4px;
	background-color: rgba(255, 255, 255, 0.5);
	-webkit-transition: background-color .3s;
	transition: background-color .3s;
	border-radius: 50%;
}

.carousel .indicators .indicator-item.active {
	background-color: #fff;
}

.carousel.scrolling .carousel-item .materialboxed, .carousel .carousel-item:not
	(.active ) .materialboxed {
	pointer-events: none;
}

.warn_wrapper{
	width:80%;
	margin:0 10% 0 10%;
	position:relative;
}
.warn{
	width: fit-content;
	margin-left: auto; 
	text-decoration: underline; 
	text-underline-position: under; 
	font-size: 1em;
	line-height: inherit;
	float:right;
}

.brand-area.gray-bg{
	background: transparent;
    width: 100%;
    position: absolute;
    bottom: 0;
    padding:0;
    margin-top:5%;
}

.brand-area .row{
	margin:0;
}

.owl-nav.disabled {
	display: none !important;
}

@media ( min-width :1445px) {
	.brand-area .container {
		max-width: 80%;
	}
}

.brand-area .brand-active .single-brand img {
	width: auto;
    max-height: 1.5em;
    max-width:100%;
}

.owl-carousel.owl-drag .owl-item {
	/* 	margin-right: 1%!important;
    width: min-content!important; */
	margin-right:
}

.owl-carousel .owl-stage {
	display: flex;
	justify-content: space-between;
}

@media ( max-width : 991.5px) {
	/* common */
	.slider-area .single-slider {
		/* height:100%; */
		
	}
	.scroll, .scroll-text {
		display: none;
	}
	.main_sentence_sub{
		font-size:1em;
		line-height:1.5em;
	}
	
	.position2 .main_sentence, .position3 .main_sentence{
		margin-bottom:1em;
	} 
	.position2 .main_sentence_sub, .position3 .main_sentence_sub{
		margin-top:2em;
	} 
	
	.main_sentence{
		font-size:2em; 
	}
	
	/* position1 */
	.news_container {
		width: 80%;
	}
	.news_container h3{
		font-size:1em;
		line-height:normal;
	}
	.news_sentence{
		font-size:1em;
	}
	
	.position1 .main_sentence_sub{
		font-size:1em;
	}

	/* position2 */
	.business-area{
		height:auto!important;
	}
	.sentence-container.position2 {
		top: 5%;
		width: 90%;
		margin: 5% 5% 0;
	}
	.position2 .main_sentence, .position2 .main_sentence_sub {
		margin-left: 0;
		color: #4c4646;
	}
	.position2 .sentence-wrapper::before {
	    content: "";
	    background-color: #f36d20;
	    position: absolute;
	    height: 0.2em;
	    width: 2em;
	    left: 0%;
	    top: 3.9em;
	}
	.business_wrapper {
		margin-top: 5%;
		margin-left: 5%;
		margin-right: 5%;
		width: 90%;
	}
	.business_wrapper img {
		height: 100%;
	}
	.business_wrapper .business_sentence {
		padding-top: 3.5em;
	}
	.business_wrapper .business_sentence h1, .business_wrapper .business_sentence h2,
		.business_wrapper .business_sentence h3, .business_wrapper .business_sentence h4,
		.business_wrapper .business_sentence h5, .business_wrapper .business_sentence h6
		{
		line-height: 1em;
	}
	.business_wrapper .business_sentence h4 {
		font-size: 1.5em;
	}
	.business_wrapper .business_sentence h3 {
		font-size: 1.5em;
	}
	.business_wrapper .business_sentence p {
		display: none;
	}
	.team-area .single-team {
		margin-bottom: 3% !important;
	}
	.single-team .team-link .icon_ani {
		display: none;
	}
	.single-team:hover .team-link h3 {
		display: none;
	}
	.single-team:hover .team-link p {
		text-align: justify;
		width:100%;
		font-size:1.25em;
		margin-bottom:2em;
	}
	.team-thumb {
		height: 10em;
	}
	.single-team:hover .team-link .animated-arrow{
		bottom:0em;
	}
	

	/* position3 */
	.projects-area{
		height:auto!important;
	}
	.sentence-container.position3 {
		top: 10%;
		width: 90%;
		margin: 5% 5% 0;
	}
	.position3 .main_sentence, .position3 .main_sentence_sub {
		margin-left: 0 !important;
		visibility: visible;
		color:#4c4646;
	}
	.position3 .sentence-wrapper::before {
		content: "";
	    background-color: #f36d20;
	    position: absolute;
	    height: 0.2em;
	    width: 2em;
	    left: 0%;
	    top: 3.9em;
	}
	.carousel {
		width: 90% !important;
		margin: 10% 5% 0 !important;
	}
	.carousel .carousel-item {
		width: 20em !important;
		display: block;
	}
	.carousel .carousel-item>img {
		width: 18em;
		height: 13.5em;
		border-radius: 0.5em;
		margin: 1em;
		object-fit: cover;
	}
	.carousel-item-text {
		margin: 1em;
		width: 90% !important;
		margin-top: 1em !important;
	}
		.warn_wrapper{
		width:90%;
		margin:0 5% 0 5%;
	}
	
	.warn{
		float:none;
	}
	.brand-area.gray-bg{
	    position: relative;
	    margin-bottom:5%;
	}
	
}

@media ( max-width : 767.5px) {
	.sentence-container {
		top: 25%;
	}
	.sentence-container.position2, .sentence-container.position3 {
      margin: 10% 5% 0;
   	}
   	.position2 .main_sentence_sub, .position3 .main_sentence_sub{
   		margin-top:1.5em;
   	}
   	.main_sentence{
   		font-size:1.5em;
   	}
	.slider-area .single-slider {
		height: 25em;
		background-position-y: 5em;
		background-repeat: no-repeat;
		background-color: #151515;
	}
	.news_container {
		width: 80%;
		overflow: hidden;
		position: absolute;
		z-index: 5;
		top: 15%;
		display: flex;
		justify-content: space-between;
		margin-left: 10%;
		height: 1.6em;
		font-size: 70%;
	}
	.news_container h3 {
		line-height: 100%;
		font-size: 1.3em;
	}
	.position2 .sentence-wrapper::before ,.position3 .sentence-wrapper::before{
		content: "";
	    background-color: #f36d20;
	    position: absolute;
	    height: 0.2em;
	    width: 2em;
	    left: 0%;
	    top: 2.9em;
	}
	
	.position2 .main_sentence, .position2 .main_sentence_sub {
		color: #4c4646;
	}
	.business_wrapper{
		margin-top:10%;
	}
	.business_wrapper .business_sentence h3{
		font-size:1em;
	}
	.business_wrapper .team-link .e-large {
		font-size: 75%;
	}
	.sentence-container.position3{
		top:5%;
	}
	.carousel{
		top: 15%;
	}
	.brand-area.gray-bg{
		top: 75%!important;
	}
	.carousel-item-text p{
		font-size:1em!important;
		line-height:1em!important;
	}
	.brand-area .brand-active .single-brand{
		width: 100%;
    	height: 100%;
	}
	.brand-area .brand-active .single-brand img {
    	display: inline-block;
    	max-height:inherit;
	}
	.Opening-hour{
		display: none;
	}
}
@media(max-width:450px){
	.news_navi{
		display:none;
	}
	.news_container{
		justify-content:flex-start;
	}
	.news_group{
		width:80%;
	}
	.carousel .carousel-item{
		width:16em!important
	}
	.carousel .carousel-item>img{
		width:14em!important
	}
	.carousel{
		height: 27em;
	}

}

@media ( max-width : 380px) {
	.carousel .carousel-item{
		width:15em!important
	}
	.carousel .carousel-item>img{
		width:13em!important
	}
}
</style>

</head>
<body>
	<script>
		AOS.init();
	</script>
	<!-- header-start -->
	<c:import url="header.jsp" charEncoding="UTF-8"></c:import>
	<!-- header-end -->


	<!-- number -->
<!-- 	<div class="homePageGroup">
		<div class="pageGroup sentence-container">
			<h3>Page.</h3>
			<a class="pageNumber active" id="num1" href="#top">1</a> 
			<a class="pageNumber" id="num2" href="#page2">2</a>
			<a class="pageNumber" id="num3">3</a>
		</div>
	</div> -->
	
	<!-- paging -->
	<div class="view_indicator">
        <ul>
            <li class="indicator is_active white" id="num0"><button type="button"><span class="indi_bul"></span><span class="cont_tit">HOME</span></button></li>
            <li class="indicator" id="num1"><button type="button"><span class="indi_bul"></span><span class="cont_tit">BUSINESS</span></button></li>
            <li class="indicator" id="num2"><button type="button"><span class="indi_bul"></span><span class="cont_tit">PROJECTS</span></button></li>
            <li class="indicator" id="num3"><button type="button"><span class="indi_bul"></span><span class="cont_tit">END</span></button></li>
        </ul>
    </div>
	

	<!-- scroll -->
	<a class="scroll"><span> </span></a>
	<span class="scroll-text">Scroll</span>


	<!-- slider-area-start -->
	<div class="slider-area">
		<div class="sentence-container position1">
			<div class="sentence-wrapper">
				<h3 class="main_sentence sentence_ani">새로운 비전</h3>
			</div>
			<div class="sentence-wrapper">
				<h3 class="main_sentence sentence_ani"
					style="animation-delay: 0.5s;">새로운 가능성</h3>
			</div>
			<h4 class="main_sentence_sub sentence_ani"
				style="animation-delay: 1s;">고객들에게 새로운 시각과 노하우 있는 솔루션을 제공합니다.</h4>
		</div>

		<div class="news_container">
			<h3 style="margin-right: 2%; color: #fff;">news>></h3>
			<ul class="news_group" id="news_group">
				<c:forEach var="news" items="${news_list}">
					<li><a class="news_sentence sentence_ani" href="/company/news"
						style="color: #fff;"> ${news.newsTitle} </a></li>
				</c:forEach>
			</ul>
			<div class="news_navi">
				<a class="prev"> <i class="fa fa-backward"></i>
				</a> <a class="next"> <i class="fa fa-forward"></i>
				</a> <a class="pause" id="pause"> <i class="fa fa-pause"
					id="pause_icon"></i>
				</a>
			</div>
		</div>

		<c:import url="header_main_pc.jsp" charEncoding="UTF-8"></c:import>
		<div class="single-slider bg-img-main"></div>
	</div>


	<div class="slider-area business-area" style="background: transparent; height: 100vh;">
		<div class="sentence-container position2">
			<div class="sentence-wrapper" id="page2">
				<h3 class="main_sentence">Business</h3>
			</div>
			<!-- 				<div class="sentence-wrapper">
					<h3 class="main_sentence" style="animation-delay:0.5s;">CCTV</h3>
				</div> -->
			<h4 class="main_sentence_sub" style="animation-delay: 0.5s;">설치부터 유지관리까지 <br class="br1999"> 축적된 노하우로 고객들과 소통합니다.</h4>
		</div>
		<div>
			<div class="business_wrapper team-area">
				<div class="row" data-aos="fade-up" data-aos-duration="1000">
					<div class="col-xl-3 col-lg-3 col-md-12">
						<div class="single-team">
							<div class="team-thumb">
								<div class="business_sentence">
									<h4>CCTV 설치</h4>
									<h3>INSTALLATION</h3>
									<p>15년 경력의 보안 전문가와의 상담을 통해 맞춤형 서비스 설계와 신속,정확한 유지보수를 제공합니다.</p>
								</div>
								<img
									src="https://nv3000nv.cdn3.cafe24.com/business/main_cctv.jpg"
									alt="" style="object-position: 25%;">
								<div class="team-hover">
									<div class="team-link">
										<div class="icon_ani">
											<img src="/resources/img/icon/install_w.png">
										</div>
										<h3>
											CCTV<br>INSTALLATION
										</h3>
										<p>15년 경력의 보안 전문가와의 상담을 통해 맞춤형 서비스 설계와 신속,정확한 유지보수를 제공합니다.</p>
										 <a class='animated-arrow' href='/business/business_cctv'>
									        <span class='the-arrow -left'>
									          <span class='shaft'></span>
									        </span>
									        <span class='main'>
									          <span class='text'>
									            CCTV 솔루션 사업소개
									          </span>
									          <span class='the-arrow -right'>
									            <span class='shaft'></span>
									          </span>
									        </span>
									      </a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-lg-3 col-md-12">
						<div class="single-team">
							<div class="team-thumb">
								<div class="business_sentence">
									<h4>군사시설</h4>
									<h3>SOLUTION</h3>
									<p>노하우를 바탕으로 더욱 향상된, 요청한 환경에 맞는 적합한 서비스를 적시에 설계 및 제공합니다.</p>
								</div>
								<img
									src="https://nv3000nv.cdn3.cafe24.com/business/main_army.jpg"
									alt="" style="object-position: 85%;">
								<div class="team-hover">
									<div class="team-link">
										<img class="icon_ani" src="/resources/img/icon/military_w.png">
										<h3>
											MILITARY<br>SOLUTION
										</h3>
										<p>노하우를 바탕으로 더욱 향상된, 요청한 환경에 맞는 적합한 서비스를 적시에 설계 및 제공합니다.</p>
										<a class='animated-arrow' href='/business/business_army'>
									        <span class='the-arrow -left'>
									          <span class='shaft'></span>
									        </span>
									        <span class='main'>
									          <span class='text'>
									            	군사시설 CCTV 사업소개
									          </span>
									          <span class='the-arrow -right'>
									            <span class='shaft'></span>
									          </span>
									        </span>
									      </a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-lg-3 col-md-12">
						<div class="single-team">
							<div class="team-thumb">
								<div class="business_sentence">
									<h4>특수시설</h4>
									<h3>SHIELD CCTV</h3>
									<p>전자파 맞춤형 영상 장비 설비를 구축합니다.</p>
								</div>
								<img src="https://nv3000nv.cdn3.cafe24.com/business/main_sp.jpg"
									alt="" style="object-position: 20%;">
								<div class="team-hover">
									<div class="team-link">
										<img class="icon_ani" src="/resources/img/icon/special_w.png">
										<h3>
											SPECIAL CCTV<br>SOLUTION
										</h3>
										<p>전자파 맞춤형 영상 장비 설비를 구축합니다.</p>
										<a class='animated-arrow' href='/business/business_sp'>
									        <span class='the-arrow -left'>
									          <span class='shaft'></span>
									        </span>
									        <span class='main'>
									          <span class='text'>
									            	특수시설 CCTV 사업소개
									          </span>
									          <span class='the-arrow -right'>
									            <span class='shaft'></span>
									          </span>
									        </span>
									      </a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-lg-3 col-md-12">
						<div class="single-team">
							<div class="team-thumb">
								<div class="business_sentence">
									<h4>정보통신</h4>
									<h3>TELECOMMUNICATION</h3>
									<p>전산환경 및 통신환경을 분석해 송수신, 통신장비를 위한 설계, 시공, 통신 연결 업무를 수행합니다.</p>
								</div>
								<img
									src="https://nv3000nv.cdn3.cafe24.com/business/main_lan.jpg"
									alt="" style="object-position: 20%;">
								<div class="team-hover">
									<div class="team-link">
										<img class="icon_ani" src="/resources/img/icon/lan_w.png">
										<h3>TELECOMMUNICATION</h3>
										<p>전산환경 및 통신환경을 분석해 송수신, 통신장비를 위한 설계, 시공, 통신 연결 업무를 수행합니다.</p>
										<a class='animated-arrow' href='/business/business_com'>
									        <span class='the-arrow -left'>
									          <span class='shaft'></span>
									        </span>
									        <span class='main'>
									          <span class='text'>
									            	정보통신 사업소개
									          </span>
									          <span class='the-arrow -right'>
									            <span class='shaft'></span>
									          </span>
									        </span>
									      </a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="slider-area projects-area"
		style="background: transparent; height: 100vh; position: relative;">
		<div class="sentence-container position3">
			<div class="sentence-wrapper" id="page3">
				<p class="main_sentence">Projects
				</p>
			</div>
			<p class="main_sentence_sub"
				style="color: rgb(76, 70, 70); animation-delay: 0.5s; margin-bottom: 0.5rem; width:100%;">
				(주)뉴비젼이엔지의 주요 프로젝트 실적<br class="br1999"> 그리고 주요 협력사 입니다. <a href="/business/result"
					style="font-size: 1em; font-weight: bold; color: #f36d20; float:right;">+More</a>
			</p>
		</div>
		
		<div class="carousel">
			<c:forEach items="${business_list}" var="business">
				<div class="carousel-item">
					<img
						src="/resources/img/business_result/main_imgs/${business.imgName}">
					<div class="carousel-item-text">
						<p
							style="font-size: 1.5em; font-weight: 500; text-decoration-line: overline;">${business.resultClass}</p>
						<p style="font-size: 1.2em; line-height: 1.2em;">${business.resultContents}</p>
					</div>
				</div>
			</c:forEach>
		</div>
		
		<div class="warn_wrapper">
			<p class="warn">※해당 이미지는 프로젝트와 무관한 사진일 수 있습니다.</p>
		</div>
		
		
		<div class="brand-area gray-bg">
			<div class="container"
				style="padding-left: 0 !important; padding-right: 0 !important;">
				<div class="row">
					<div class="col-xl-12">
						<div class="brand-active owl-carousel">
							<div class="single-brand">
								<img src="/resources/img/brand/idis-c.png" alt="">
							</div>
							<div class="single-brand">
								<img src="/resources/img/brand/commax-c.png" alt="">
							</div>
							<div class="single-brand">
								<img src="/resources/img/brand/cudo-c.png"
									alt="">
							</div>
							<div class="single-brand">
								<img src="/resources/img/brand/kica-c.png" alt="">
							</div>
							<div class="single-brand">
								<img src="/resources/img/brand/kwomen-c.png" alt="">
							</div>
							<div class="single-brand">
								<img src="/resources/img/brand/hanwha-c.png" alt="">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	
	<div class="addres-area black-bg section-padding" style="display:none;">
        <div class="container">
            <div class="row">
                <div class="col-xl-4 col-md-4">
                    <div class="single-address text-center">
                        <div class="addres-icon">
                            <img src="/resources/img/icon/1.png" alt="">
                        </div>
                        <h3>Our Location</h3>
                        <p>(08590) 서울시 금천구 가산디지털1로 88,<br>
                             704-C (가산동, IT프리미어타워)</p>
                        <a class="underline-hover" href="/company/location">Get Direction</a>
                    </div>
                </div>
                <div class="Opening-hour col-xl-4 col-md-4">
                    <div class="single-address text-center">
                        <div class="addres-icon">
                            <img src="/resources/img/icon/2.png" alt="">
                        </div>
                        <h3>Opening hour</h3>
                        <p>월요일-금요일 (09:00-18:00) <br>
                            (점심시간 12:00 - 13:00)</p>
                            <a class="underline-hover" href="/support/notice">Notice</a>
                    </div>
                </div>
                <div class="col-xl-4 col-md-4">
                    <div class="single-address text-center">
                        <div class="addres-icon">
                            <img src="/resources/img/icon/3.png" alt="">
                        </div>
                        <h3>Contact</h3>
                        <p>nv3000@empas.com <br>
                            02)743-6977~8</p>
                        <a class="underline-hover" href="/support/customer">Mail Us</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

	<div class="slider-area">
		<!-- footer-start -->
		<c:import url="footer.jsp" charEncoding="UTF-8"></c:import>
		<!-- footer-end -->
	</div>
	<script src="/resources/js/jquery-ui.min.js"></script>
	<script src="/resources/js/materialize.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('.carousel').carousel({
				'dist' : -110
			});
		});
	</script>
</body>
<script>
	/* 새로고침 시 스크롤 상단 이동 */
	window.onload = function() {
		setTimeout(function() {
			scrollTo(0, 0);

		}, 100);

	}

	/* 스크롤 */
	window.addEventListener("wheel", function(e) {
		e.preventDefault();
	}, {
		passive : false
	});

	var $html = $("html");

	var page = 1;

	var lastPage = $(".slider-area").length;

	$html.animate({
		scrollTop : 0
	}, 0);

	/* 미디어쿼리 767.5(모바일)넘을때만 휠 애니메이션 */
	if (matchMedia("screen and (min-width: 991.5px)").matches) {
		$(window).on(
				"wheel",
				function(e) {

					if ($html.is(":animated"))
						return;

					if (e.originalEvent.deltaY > 0) {
						if (page == lastPage)
							return;

						page++;
					} else if (e.originalEvent.deltaY < 0) {
						if (page == 1)
							return;

						page--;
					}
					var posTop = (page - 1) * $(window).height() + 1;

					$html.animate({
						scrollTop : posTop
					}, 1000, 'easeInQuart');

					/* 페이지 표시 */
/* 					if (page == "1") {
						$("#num1").addClass("active");
						$("#num2").removeClass("active");
					} else if (page == "2") {
						$("#num1").removeClass("active");
						$("#num2").addClass("active");
						$("#num3").removeClass("active");
					} else if (page == "3") {
						$("#num1").removeClass("active");
						$("#num2").removeClass("active");
						$("#num3").addClass("active");
					} */
					
					/* 페이지 표시 */
					if (page == "1") {
						$("#num0").addClass("is_active");
						$("#num1").removeClass("is_active");
						$("#num2").removeClass("is_active");
						$("#num3").removeClass("is_active");
					} else if (page == "2") {
						$("#num0").removeClass("is_active");
						$("#num1").addClass("is_active");
						$("#num2").removeClass("is_active");
						$("#num3").removeClass("is_active");
					} else if (page == "3") {
						$("#num0").removeClass("is_active");
						$("#num1").removeClass("is_active");
						$("#num2").addClass("is_active");
						$("#num3").removeClass("is_active");
					} else if(page == "4"){
						$("#num0").removeClass("is_active");
						$("#num1").removeClass("is_active");
						$("#num2").removeClass("is_active");
						$("#num3").addClass("is_active");
					}
					
					

					/* 2페이지 */
					if (page == "2") {
						setTimeout(function() {
							$(".scroll span").addClass("active");
							$(".scroll-text").css("color", "#4c4646");
							$(".position2").addClass("focus");
							$(".position2 .sentence-wrapper .main_sentence")
									.css("color", "#4c4646");
							$(".position2 .main_sentence_sub").css("color",
									"#4c4646");
							$(".position2 .sentence-wrapper .main_sentence")
									.addClass("sentence_ani");
							$(".position2 .main_sentence_sub").addClass(
									"sentence_ani");
						}, 1200);
						/* 헤더 바뀌는게 스크롤 끝날때쯤으로 변경 */
						setTimeout(function() {
							$('#header_main_pc').addClass("mousein");
							$('.main-menu ul li a').addClass("mousein");
							$('.ti-angle-down_main_pc').addClass("mousein");
							$('#nv_logo_white').removeClass("mousein");
							$('#nv_logo_black').addClass("mousein");
							$(".homePageGroup .pageGroup h3").css('opacity',
									'0').stop().css("color", "#4C4646")
									.animate({
										opacity : "1"
									}, 700);
							$(".homePageGroup .pageGroup .pageNumber").css(
									'opacity', '0').stop().css(
									"background-color", "#4C4646").animate({
								opacity : "1"
							}, 700);
						}, 1000);
					} else if (page == "3") {
						setTimeout(function() {
							$(".scroll span").addClass("active");
							$(".scroll-text").css("color", "#4c4646");
							$(".position3").addClass("focus");
							$(".position3 .sentence-wrapper .main_sentence")
									.css("color", "#4c4646");
							$(".position3 .main_sentence_sub").css("color",
									"#4c4646");
							$(".position3 .sentence-wrapper .main_sentence")
									.addClass("sentence_ani");
							$(".position3 .main_sentence_sub").addClass(
									"sentence_ani");
						}, 1000);
						/* 헤더 바뀌는게 스크롤 끝날때쯤으로 변경 */
						setTimeout(function() {
							$('#header_main_pc').addClass("mousein");
							$('.main-menu ul li a').addClass("mousein");
							$('.ti-angle-down_main_pc').addClass("mousein");
							$('#nv_logo_white').removeClass("mousein");
							$('#nv_logo_black').addClass("mousein");
							/* $(".homePageGroup .pageGroup h3").css('opacity','0').stop().css("color","#4C4646").animate({opacity: "1"}, 700);
							$(".homePageGroup .pageGroup .pageNumber").css('opacity','0').stop().css("background-color","#4C4646").animate({opacity: "1"}, 700); */
						}, 1000);
					} else if (page == "1") {
						$('#header_main_pc').removeClass("mousein");
						setTimeout(function() {
							$(".scroll span").removeClass("active");
							$(".scroll-text").css("color", "#fff");
							$('.main-menu ul li a').removeClass("mousein");
							$('.ti-angle-down_main_pc').removeClass("mousein");
							$('#nv_logo_white').addClass("mousein");
							$('#nv_logo_black').removeClass("mousein");
							$(".homePageGroup .pageGroup h3").css('opacity',
									'0').stop().css("color", "#fff").animate({
								opacity : "1"
							}, 700);
							$(".homePageGroup .pageGroup .pageNumber").css(
									'opacity', '0').stop().css(
									"background-color", "#fff").animate({
								opacity : "1"
							}, 700);
						}, 1000);
					}
				});
	}

	/* owl-dot 글씨 변경 */
	$(function() {
		$(".owl-dot span").addClass("business");

		$(".owl-dot").eq(0).text('CCTV 설치');
		$(".owl-dot").eq(1).text('군사시설 CCTV');
		$(".owl-dot").eq(2).text('전자파용 CCTV');
		$(".owl-dot").eq(3).text('정보통신공사');
	});

	/* 뉴스 애니메이션 */
	jQuery(function($) {
		var news_group = function() {
			timer = setTimeout(function() {
				$('#news_group li:first').animate(
						{
							marginTop : '-20px'
						},
						800,
						function() {
							$(this).detach().appendTo('ul#news_group')
									.removeAttr('style');
						});
				news_group();
			}, 2000);
		};

		// 0번 이전 기능
		$(document).on(
				'click',
				'.prev',
				function() {
					clearTimeout(timer);
					$('#news_group li:first').prependTo($('#news_group'))
							.animate(
									{
										marginTop : '+20px'
									},
									500,
									function() {
										$('#news_group li:last').detach()
												.prependTo('ul#news_group')
												.removeAttr('style');
										$(this).removeAttr('style');
									});
					news_group();
					if ($('#pause_icon').hasClass("fa-play") == true) {
						$('#pause_icon').addClass('fa-pause');
						$("#pause_icon").removeClass("fa-play");
					}
					;
				}); // 0번 기능 끝

		// 1. 클릭하면 다음 요소 보여주기... 클릭할 경우 setTimeout 을 clearTimeout 해줘야 하는데 어떻게 하지..
		$(document).on('click', '.next', function() {
			clearTimeout(timer);
			$('#news_group li:first').animate({
				marginTop : '-20px'
			}, 500, function() {
				$(this).detach().appendTo('ul#news_group').removeAttr('style');
			});
			news_group();
			//3 함수와 연계 시작
			if ($('#pause_icon').hasClass("fa-play") == true) {
				$('#pause_icon').addClass('fa-pause');
				$("#pause_icon").removeClass("fa-play");
			}
			; //3 함수와 연계
		}); // next 끝. timer 를 전연변수보다 지역변수 사용하는게 나을 것 같은데 방법을 모르겠네요.

		//2. 재생정지기능 시작, 아직 다음 기능과 연동은 안됨...그래서 3을 만듦
		var autoplay = true;
		$(document).on('click', '#pause', function() {
			if (autoplay == true) {
				clearTimeout(timer);
				$('#pause_icon').removeClass('fa-pause');
				$("#pause_icon").addClass("fa-play");
				autoplay = false;
				clearTimeout(timer);
			} else {
				autoplay = true;
				$('#pause_icon').addClass('fa-pause');
				$("#pause_icon").removeClass("fa-play");
				news_group();
				clearTimeout(timer);
			}
		});
		// 재생정지기능 끝  

		// 3. 재생정지 함수 시작. 2와 기능 동일함.
		var news_group_pause = function() {
			$('#pause').click(function() {
				$this = $(this);
				if ($('#pause_icon').hasClass("fa-pause") == true) {
					$('#pause_icon').removeClass('fa-pause');
					$("#pause_icon").addClass("fa-play");
					clearTimeout(timer);
				} else {
					clearTimeout(timer);
					news_group();
					$('#pause_icon').addClass('fa-pause');
					$("#pause_icon").removeClass("fa-play");
				}
			});

		};
		news_group_pause();
		//3 재생정지 함수 끝

		//4 마우스를 올렸을 때 기능 정지
		var news_group_over = function() {
			$('#news_group').mouseover(function() {
				clearTimeout(timer);
			});
			$('#news_group').mouseout(function() {
				news_group();
			});
		};
		news_group_over();
		// 4 끝
		news_group();

	});
</script>

<!-- 로그인, 로그아웃 알림 -->
	<script>
		$(function() {
			var responseMessage = "<c:out value="${login}" />";
			if (responseMessage != "") {
				alert(responseMessage)
			}
			var responseMessage2 = "<c:out value="${logout}" />";
			if (responseMessage2 != "") {
				alert(responseMessage2)
			}
			var responseMessage2 = "<c:out value="${access_denied}" />";
			if (responseMessage2 != "") {
				alert(responseMessage2)
			}
			var responseMessage2 = "<c:out value="${joinOK}" />";
			if (responseMessage2 != "") {
				alert(responseMessage2)
			}
		})
	</script>




</html>