<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${param.formName}设计预览</title>
<link href="assets/css/lib/bootstrap.min.css" rel="stylesheet">
<link href="assets/css/lib/bootstrap-responsive.min.css" rel="stylesheet">
<link href="assets/css/custom.css" rel="stylesheet">
<style type="text/css">
	.container {
		width:940px;
	}
</style>
</head>
<body>
	<!-- <div id="container">
	    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	      <div class="container-fluid">
	        <div class="navbar-header">
	        <span style="float:left; padding:4px 0 0;">
	          	<img src="/RedseaPlatform/worktile/images/index_img_a/logo.png" width="330px" height="58px"/>
	        </span>
	        </div>
	       </div>
	    </nav>
	 </div> -->
	 <div class="container">
		<div class="middle-m" style="padding:0px 0 30px;">
			${param.formHtml}
		</div>
	</div>
</body>
</html>