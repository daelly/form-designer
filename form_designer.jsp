<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<link href="assets/css/lib/bootstrap.min.css" rel="stylesheet">
<link href="assets/css/lib/bootstrap-responsive.min.css" rel="stylesheet">
<link href="assets/css/custom.css" rel="stylesheet">
</head>
<body>
	<!-- <a href="https://github.com/minikomi/Bootstrap-Form-Builder/"><img style="z-index: 100000; position: absolute; top: 0; right: 0; border: 0;" src="https://s3.amazonaws.com/github/ribbons/forkme_right_red_aa0000.png" alt="Fork me on GitHub"></a> -->
    <div class="navbar navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <a class="brand" href="#">红海科技表单设计器</a>
        </div>
      </div>
    </div>
    <div class="container">
      <div class="row clearfix">
        <!-- Building Form. -->
        <div class="span6">
          <div class="clearfix">
            <h2>
            	表单设计
            	<div class="" style="float:right;margin-right: 20px;">
	            	<div class="btn-group btn-group-sm" role="group">
	            		<button type="button" class="btn btn-default" onclick="formPreview()">单独预览</button>
	            		<button type="button" class="btn btn-default">保存</button>            		
	            	</div>
	            </div>
            </h2>
            
            <hr>
            <div id="build">
              <form id="target" class="form-horizontal">
              </form>
            </div>
          </div>
        </div>
        <!-- / Building Form. -->

        <!-- Components -->
        <div class="span6">
          <h2>将组件拖拽到左边表单</h2>
          <hr>
          <div class="tabbable">
            <ul class="nav nav-tabs" id="formtabs">
              <!-- Tab nav -->
            </ul>
            <form class="form-horizontal" id="components">
              <fieldset>
                <div class="tab-content">
                  <!-- Tabs of snippets go here -->
                </div>
              </fieldset>
            </form>
          </div>
        </div>
        <!-- / Components -->

      </div>

      <div class="row clearfix">
        <div class="span12">
          <hr>
          By Adam Moore (<a href="http://twitter.com/minikomi" >@minikomi</a>).<br/>
          Source on (<a href="https://github.com/minikomi/Bootstrap-Form-Builder" >Github</a>).
        </div>
      </div>

    </div> <!-- /container -->

    <script data-main="assets/js/main.js" src="assets/js/lib/require.js" ></script>
    <script>
      (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
    
      ga('create', 'UA-13083321-13', 'minikomi.github.io');
      ga('send', 'pageview');
	  
      function formPreview(){
    	  var postForm = document.createElement("form");//表单对象 
    	  postForm.method="post" ; 
    	  postForm.action = '/RedseaPlatform/jsp/workFlow/processFrom/wfWorkForm/fromDesigner/form_designer_preview.jsp';
    	  postForm.target = '_blank';
    	  var input =  document.createElement("input");
    	  input.setAttribute("name","formHtml");
    	  input.setAttribute("value",$("#render").val());
    	  postForm.appendChild(input);
    	  document.body.appendChild(postForm);
    	  postForm.submit() ; 
    	  document.body.removeChild(postForm) ;
    	  
      }
    </script>
</body>
</html>