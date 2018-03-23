<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../page/common/includes.jsp"%>
<%
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
<title>筷赚平台</title>
<%-- <link rel="shortcut icon" href="<%=contextPath%>/favicon.ico"
	type="image/x-icon" />
<link href="<%=contextPath%>/system/login/skin65/style.css"
	rel="stylesheet" type="text/css" id="skin" />
 --%>
 <link rel="stylesheet" type="text/css" href="<%=contextPath%>/system/login/@media4/style.css"/>
 
<script type="text/javascript" src="<%=contextPath%>/libs/js/jquery.js"></script>
<script type="text/javascript" src="<%=contextPath%>/libs/js/jquery.cookie.js"></script>
<script type="text/javascript" src="<%=contextPath%>/libs/js/login.js"></script>

<!--居中显示start-->
<script type="text/javascript"
	src="<%=contextPath%>/libs/js/method/center-plugin.js"></script>
<!--居中显示end-->

<style>
/*提示信息*/
#cursorMessageDiv {
	position: absolute;
	z-index: 99999;
	border: solid 1px #cc9933;
	background: #ffffcc;
	padding: 2px;
	margin: 0px;
	display: none;
	line-height: 150%;
}
.forgetpwd{
    position: absolute;
    left: 564px;
    top: 344px;
}
.businessregist{
 position: absolute;
    left: 510px;
    top: 344px;
}
/*提示信息*/
/* .register_right {
    position:absolute;
	float: right;
	margin: 80px 80px 0 0;
	font-weight: blod;
	font-family: 微软雅黑, 黑体;
	font-size: 1.3em;
	color: #fff;
} */
</style>
<%
String ucenter=(String)request.getAttribute("ucenter");
if(ucenter==null){
	ucenter="";
}
%>
<%=ucenter%>
</head>
<body>
	<%-- <div class="login_main">
		<div class="login_middle">
			<div class="login_middleleft"></div>
			<div class="login_middlecenter">
				<form id="loginForm" action="" class="login_form" method="post">
					<div class="login_user">
						<input type="text" id="username" value="">
					</div>
					<div class="login_pass">
						<input type="password" id="password" value="">
					</div>
					<div class="clear"></div>
					<div class="login_button">
					    <div class="businessregist"><a href="<%=contextPath%>/system/login/register.jsp">商家注册</a></div>
					    <div class="forgetpwd"><a href="<%=contextPath%>/system/login/forgetpwd.jsp">忘记密码？</a></div>
						<div class="login_button_left">
							<input type="button" onclick="login()" />
						</div>
						<div class="login_button_right">
							<input type="reset" value="" />
						</div>
						<div class="clear"></div>
					</div>
					<br />
				</form>
				<div class="login_info" style="display: none;"></div>
			</div>
			<div class="login_middleright"></div>
			<div class="clear"></div>
		</div>
		<div class="login_bottom">
			<div class="login_copyright">版权所有©www.quickbusiness.cn</div>
		</div>
	</div> --%>
<div class="win">
			<div class="login_win">
				<div class="login_title"></div>
				<form action="" method="post" class="form_win">
					<div class="form_title">
						<span>用户登录</span>
					</div>
					<div class="user">
						<i></i><input type="text" name="" id="username" placeholder="手机号" />
					</div>
					<div class="passerword" style="margin-top: 10px;">
						<i></i><input type="password" name="" id=password placeholder="密码" />
					</div>
				
					<div class="remember clear">
						<div>
					        <input type="text" name="code" id="code" placeholder="验证码" style="width:45%;height:36px;margin-top:1px;text-align: center;"/>
					        <img id="img" src="<%=contextPath%>/register/getCode.do" style="margin-top: 4px;"/><a href='javascript:;' onclick="changeImg()" style="color:white;margin-top:9px;"><label style="color:white;cursor: pointer;">看不清？</label></a>
					       <div class="autologin" style="margin-top: 15px;">
					       <input type="checkbox" id="autologin" name="autologin"  checked="checked" /><label for="autologin">三天内自动登录</label>
					       </div>
					   </div>
					    <span class="login_info" style="display: none;color:red;">登陆失败</span>
						<!-- <input type="checkbox" name="" id="check1" value="" /><label for="check1">记住我</label> -->
						<a href="<%=contextPath%>/system/login/forgetpwd.jsp">忘记密码？</a>
						<a href="<%=contextPath%>/system/login/register.jsp" style="padding-right:13px;margin-bottom:6px;">商家注册  </a>
					</div>
					<input type="button" onclick="login()"  value="登 录" class="submit" style="margin-left: 43px;"/>
					<div class="login_copy">
						<a href="http://www.quickbusiness.cn" target="_blank">版权所有©www.quickbusiness.cn</a>
					</div>
				</form>
			</div>
			
		</div>
	<script>
		$(function(){
			$("#img").attr("src","<%=contextPath%>/register/getCode.do?1");
			 
			//居中
			/*  $('.login_main').center(); */
			 document.getElementById("username").focus();
			 $("#username").keydown(function(event){
			 	if(event.keyCode==13){
					login()
				}
			 })
			 $("#password").keydown(function(event){
			 	if(event.keyCode==13){
					login()
				}
			 })
			  $("#code").keydown(function(event){
			 	if(event.keyCode==13){
					login()
				}
			 })
			 
		})
		
		//
		var flag="";
		
		//登录
		function login() {

			if(flag==""){
				var errorMsg = "";
				var loginName = document.getElementById("username");
				var password = document.getElementById("password");
				var code = document.getElementById("code");
				var autologin=0;
				 
				 $('input:checkbox[name=autologin]:checked').each(function(){
				        autologin=1;
				    });
				
				if(!loginName.value){
					errorMsg += "&nbsp;&nbsp;用户名不能为空!";
				}
				
				if(!password.value){
					errorMsg += "&nbsp;&nbsp;密码不能为空!";
				}
				
				if(errorMsg != ""){
					$(".login_info").html(errorMsg);
					$(".login_info").show();
				}
				else{
					flag="login";
					$(".login_info").show();
					$(".login_info").html("&nbsp;&nbsp;正在登录中...");
					
					$.post("<%=contextPath%>/system/login.do",
						{"loginname":loginName.value,"pwd":password.value,"code":code.value,"autologin":autologin},
							function(result){
								flag="";
								if(result == null){
									changeImg();
									$(".login_info").html("&nbsp;&nbsp;登陆失败！");
									return false;
								}
								if(result.status=="true"||result.status==true){
									
								    
									$(".login_info").html("&nbsp;&nbsp;登录成功，正在转到主页...");
								 	
									//跳转到选择店铺页面
									window.location="<%=contextPath%>/system/layout_html/mainselect.jsp";
									<%-- window.location="<%=contextPath%>/system/layout_html/main.jsp"; --%>
										} else {
											changeImg();
											$(".login_info").html(
													"&nbsp;&nbsp;"
															+ result.message);
										}
									}, "json");
				}
			} else {
				alert("正在登录中...");
			}
		}
		//刷新验证码
		 function changeImg(){
			$("#img").attr("src","<%=contextPath%>/register/getCode.do?"+Math.random());
		 } 
	</script>
</body>
</html>