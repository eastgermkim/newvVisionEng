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
	padding: 7% 0%;
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
		<form method="post" action="/support/notice_write" enctype="multipart/form-data">

			<table>
				<thead>
					<!-- 데스크탑 -->
					<tr>
						<th><h4 style="margin-bottom: 0;">제목</h4></th>
						<th><input class="single-input" name="noticeTitle"
							type="text" placeholder="제목을 입력하세요"></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th><h4 style="margin-bottom: 0;">작성자</h4></th>
						<th><input class="single-input" name="noticeWriter"
							type="text" placeholder="작성자를 입력하세요" value="관리자"></th>
					</tr>
					<!-- <tr>
						<th><h4 style="margin-bottom: 0;">파일첨부</h4></th>
						<th><input type="file"></th>
					</tr> -->
				</tbody>
			</table>
			<textarea id="editor" rows="5" name="noticeContents"
				placeholder="내용을 입력하세요" style="display: none;"></textarea>
			<hr>
			<div class="col-12">
				<input type="submit" value="등록" class="primary">
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
	        xhr.open( 'POST', '/file/noticeImg', true );
	        xhr.responseType = 'json';
	    }

	    // Initializes XMLHttpRequest listeners.
	    _initListeners( resolve, reject, file ) {
	        const xhr = this.xhr;
	        const loader = this.loader;
	        const genericErrorText = '${ savedName } 파일을 업로드 할 수 없습니다.\n(20MB 이하 이미지 파일만 첨부가능)';

	        xhr.addEventListener( 'error',() => reject( genericErrorText ) );
	        xhr.addEventListener( 'abort',() =>  reject() );
	        xhr.addEventListener( 'load',() =>  {
	            const response = xhr.response;

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
	            resolve( {
	           default : response.url
	            } );
	        } );

	        // Upload progress when it is supported. The file loader has the #uploadTotal and #uploaded
	        // properties which are used e.g. to display the upload progress bar in the editor
	        // user interface.
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
	    _sendRequest( file ) {
	        // Prepare the form data.
	        const data = new FormData();

	        data.append( 'upload', file );

	        // Important note: This is the right place to implement security mechanisms
	        // like authentication and CSRF protection. For instance, you can use
	        // XMLHttpRequest.setRequestHeader() to set the request headers containing
	        // the CSRF token generated earlier by your application.

	        // Send the request.
	     this.xhr.send( data );
	    }
	}

	// ...

	function MyCustomUploadAdapterPlugin( editor ) {
	    editor.plugins.get( 'FileRepository' ).createUploadAdapter = ( loader ) => {
	        // Configure the URL to the upload script in your back-end here!
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