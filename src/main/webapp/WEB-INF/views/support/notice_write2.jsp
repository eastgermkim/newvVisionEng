<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>New Vision ENG</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- <link rel="manifest" href="site.webmanifest"> -->
<link rel="shortcut icon" type="image/x-icon"
	href="/resources/img/nvicon.png">

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
<!-- <link rel="stylesheet" href="resources/css/responsive.css"> -->

<script
	src="${pageContext.request.contextPath}/resources/js/ckeditor5/ckeditor.js"></script>
<style>
.board {
	padding: 4% 0%;
}

.align-left {
	text-align: left;
	width: 62%;
}

.small-width-page {
	display: none;
}

.small-width-table {
	display: none;
}

.small-width-title {
	font-size: large;
	font-weight: 500;
}

@media ( max-width : 767.5px) {
	.align-left {
		width: 80%
	}
	.big-width-page {
		display: none;
	}
	.small-width-page {
		display: flex;
	}
	.big-width-table {
		display: none;
	}
	.small-width-table {
		display: table-row;
	}
	.board {
		padding: 7% 3%;
	}
}

table {
	width: 100%;
	border-collapse: collapse;
	line-height: 2em;
}

table td, th {
	border-collapse: collapse;
	text-align: center;
	padding: 1em;
	font-weight: 300;
}

tbody {
	font-size: 0.95em;
}

th {
	padding: 1% 1%;
	font-weight: 400;
	border-top: 1px solid;
	border-bottom: 1px solid #d8d8d8;
}

td {
	border-bottom: 1px solid #d8d8d8;
}

a {
	text-decoration: none;
	color: black;
}

a:hover {
	color: #ED1E23;
}

a:active {
	color: blue;
}

.pagination .page-item.active .page-link {
	font-weight: 600;
	color: darkblue;
	border-color: darkblue;
}
</style>

<style>
.ck.ck-editor {
	margin: 3% 0;
}

.ck-editor__editable {
	min-height: 500px;
}
</style>

<style>
.single-input {
	border-bottom: inset;
	background: none;
}
u {
	color:inherit;
}
.ck-splitbutton{
	display: none;
}
</style>

<style>
.genric-btn.primary-border {
    color: black;
    border: 1px solid black;
    font-size: 1em;
    margin: 1% 0;
}
.genric-btn.primary-border:hover {
	color: black;
	background: #D8D8D8;
}
.genric-btn.primary {
    font-size: 1em;
}
.genric-btn.primary:hover {
    background: #ED1E23;
    color: #fff;
}
</style>

</head>
<body data-editor="ClassicEditor" data-collaboration="false"
	data-revision-history="false">
	<!-- header.jsp import -->
	<c:import url="../header2.jsp" charEncoding="UTF-8"></c:import>
	<script>
		addClassName4();
	</script>

	<!-- breadcrumb-start -->
	<section class="breadcrumb breadcrumb_bg banner-bg-1 overlay2 ptb200">
		<div class="container">
			<div class="row">
				<div class="col-lg-7 offset-lg-1">
					<div class="breadcrumb_iner">
						<div class="breadcrumb_iner_item">
							<h2>공지사항</h2>
							<p style="opacity: 0.6">New Vision ENG. Notice</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- breadcrumb-end -->


	<div class="container board">
		<form method="post" action="/support/notice_write2" enctype="multipart/form-data">

			<table>
				<thead>
					<tr>
						<th class="big-width-table"><span>제목</span></th>
						<th><input class="single-input" name="noticeTitle"
							type="text" placeholder="제목을 입력하세요"></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th class="big-width-table"><span>작성자</span></th>
						<th><input class="single-input" name="noticeWriter"
							type="text" placeholder="작성자를 입력하세요(ex. 관리자)"></th>
					</tr>
				</tbody>
			</table>
			<textarea id="editor" rows="5" name="noticeContents"
				placeholder="내용을 입력하세요" style="display: none;"></textarea>
			<hr>
			<div class="col-12" style="text-align: center;padding: 1%;">
				<input type="submit" value="등록" class="genric-btn primary circle" style="margin-right: 1%;">
				<a href="/support/notice" class="genric-btn primary-border circle">목록으로 돌아가기</a>
			</div>
		</form>
 </div>





	<c:import url="../footer2.jsp" charEncoding="UTF-8"></c:import>

	<script>
	class MyUploadAdapter {
	    constructor( loader ) {
	        // The file loader instance to use during the upload.
	        this.loader = loader;
	    }

	    // Starts the upload process.
	    upload() {
	        return this.loader.file
	        .then( file => new Promise( ( resolve, reject ) => {
	                this._initRequest();
	                this._initListeners( resolve, reject, file );
	                this._sendRequest( file );
	            } ) );
	    }

	    // Aborts the upload process.
	    abort() {
	        if ( this.xhr ) {
	            this.xhr.abort();
	        }
	    }

	    // Initializes the XMLHttpRequest object using the URL passed to the constructor.
	    _initRequest() {
	        const xhr = this.xhr = new XMLHttpRequest();

	        // Note that your request may look different. It is up to you and your editor
	        // integration to choose the right communication channel. This example uses
	        // a POST request with JSON as a data structure but your configuration
	        // could be different.

	        //여기서는 POST 요청과 json으로 응답을 받지만 어떤 포맷으로 하든 너의 선택이다.
	        xhr.open( 'POST', '/file/noticeImg', true );
	        xhr.responseType = 'json';
	    }

	    // Initializes XMLHttpRequest listeners.

	    //XHR 리스너 초기화 하기
	    _initListeners( resolve, reject, file ) {
	        const xhr = this.xhr;
	        const loader = this.loader;
	        const genericErrorText = '파일을 업로드 할 수 없습니다.\n(20MB 이하 이미지 파일만 첨부가능)';

	        xhr.addEventListener( 'error',() => reject( genericErrorText ) );
	        xhr.addEventListener( 'abort',() =>  reject() );
	        xhr.addEventListener( 'load',() =>  {
	            const response = xhr.response;
	         // 이 예제에서는 XHR서버에서의 response 객체가 error와 함께 올 수 있다고 가정한다. 이 에러는 
	         // 메세지를 가지며 이 메세지는 업로드 프로미스의 매개변수로 넘어갈 수 있다.

	            // This example assumes the XHR server's "response" object will come with
	            // an "error" which has its own "message" that can be passed to reject()
	            // in the upload promise.
	            //
	            // Your integration may handle upload errors in a different way so make sure
	            // it is done properly. The reject() function must be called when the upload fails.
	            if ( !response || response.error ) {
	                return reject( response && response.error ? response.error.message : genericErrorText );
	            }

	            // If the upload is successful, resolve the upload promise with an object containing
	            // at least the "default" URL, pointing to the image on the server.
	            // This URL will be used to display the image in the content. Learn more in the
	            // UploadAdapter#upload documentation.
	          
	            // 만약 업로드가 성공했다면, 업로드 프로미스를 적어도 default URL을 담은 객체와 함께 resolve하라. 
	            // 이 URL은 서버에 업로드된 이미지를 가리키며, 컨텐츠에 이미지를 표시하기 위해 사용된다.
	            resolve( {
	           default : response.url
	            } );
	        } );

	        // Upload progress when it is supported. The file loader has the #uploadTotal and #uploaded
	        // properties which are used e.g. to display the upload progress bar in the editor
	        // user interface.
	        
	        // 파일로더는 uploadTotal과 upload properties라는 속성 두개를 갖는다. 
	        // 이 두개의 속성으로 에디터에서 업로드 진행상황을 표시 할 수 있다.
	        if ( xhr.upload ) {
	            xhr.upload.addEventListener( 'progress', evt => {
	                if ( evt.lengthComputable ) {
	                    loader.uploadTotal = evt.total;
	                    loader.uploaded = evt.loaded;
	                }
	            } );
	        }
	    }

	    // Prepares the data and sends the request.
	    //데이터를 준비하고 서버에 전송한다.
	    _sendRequest( file ) {
	        // Prepare the form data.
	        // 폼 데이터 준비
	        const data = new FormData();

	        data.append( 'upload', file );

	        // Important note: This is the right place to implement security mechanisms
	        // like authentication and CSRF protection. For instance, you can use
	        // XMLHttpRequest.setRequestHeader() to set the request headers containing
	        // the CSRF token generated earlier by your application.
	        
	        // 여기가 인증이나 CSRF 방어와 같은 방어 로직을 작성하기 좋은 곳이다. 
	        // 예를들어, XHR.setREquestHeader()를 사용해 요청 헤더에 CSRF 토큰을 넣을 수 있다.

	        // Send the request.
	     this.xhr.send( data );
	    }
	}

	// ...

	function MyCustomUploadAdapterPlugin( editor ) {
	    editor.plugins.get( 'FileRepository' ).createUploadAdapter = ( loader ) => {
	        // Configure the URL to the upload script in your back-end here!
	        // Configure the URL to the upload script in your back-end here! 
	        // 결국엔 내가 구현해 주어야 할 것은, 
	        // FileRepository가 어떤 업로드 어댑터를 사용하게 하느냐만 설정해주면 된다. 
	        // 나머지 이미지 업로드 플러그인, 파일 로더, FileRepository등등은 이미 만들어져 있다.
	        return new MyUploadAdapter( loader );
	    };
	}

	// ...

	ClassicEditor
	    .create( document.querySelector( '#editor' ), {
	    	
	        extraPlugins: [ MyCustomUploadAdapterPlugin ],

	        // ...
	    } )
	    .then( editor => {
	    	
	    } )
	    .catch( error => {
	        console.log( error );
	    } );
	
	
	
		</script>
</body>


</html>