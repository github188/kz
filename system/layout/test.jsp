<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../page/common/includes.jsp"%>
<%@page import="cn.quickbusiness.web.systemManage.entity.UserInfo"%>
<%@page import="java.util.List"%>
<%@page import="cn.quickbusiness.web.shop.entity.Shop_Shop_Info"%>
<%

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
<title>筷赚平台</title>
<!--框架必需start-->
<link href="<%=contextPath %>/libs/css/import_basic.css" rel="stylesheet" type="text/css"/>
<link href="<%=contextPath %>/libs/skins/blue/style.css" rel="stylesheet" type="text/css" id="theme" themeColor="blue"/>
<link href="skin/style.css" rel="stylesheet" type="text/css" id="skin" skinPath="system/layout_html/skin/"/>
<script type="text/javascript" src="<%=contextPath %>/libs/js/jquery.js"></script>
<script type="text/javascript" src="<%=contextPath %>/libs/js/language/cn.js"></script>
<script type="text/javascript" src="<%=contextPath %>/libs/js/main.js"></script>
<!--框架必需end-->
<!-- 引入提示组件start -->
<script type="text/javascript" src="<%=contextPath %>/libs/js/popup/toast.js"></script>
<script type="text/javascript" src="<%=contextPath %>/libs/js/popup/notice.js"></script>
<!-- 引入提示组件end -->
<!--引入弹窗组件start-->
<script type="text/javascript" src="<%=contextPath %>/libs/js/popup/drag.js"></script>
<script type="text/javascript" src="<%=contextPath %>/libs/js/popup/dialog.js"></script>
<!--引入弹窗组件end-->

<!--分隔条start-->
<script type="text/javascript" src="<%=contextPath %>/libs/js/nav/spliter.js"></script>
<!--分隔条end-->
 <!--左侧导航start-->
<script type="text/javascript" src="<%=contextPath %>/libs/js/nav/menuNav.js"></script>
<!--左侧导航end-->
<%
 UserInfo info = (UserInfo)request.getSession().getAttribute("USERINFO");
if(info==null){
	info=new UserInfo();
}
String menuData=(String)request.getSession().getAttribute("menutest");

List<Shop_Shop_Info> shoplist=(List<Shop_Shop_Info>)request.getSession().getAttribute("shoplist");


%>
<script>
menuData=<%=menuData%>
var setting = {
		data: {
			simpleData: {
				idKey: "id",
				pIdKey: "parentId",
				enable: true
			},
			key: {
				children: "children"
			}
		}
	};
$(function () {
	  
		initMenuNav(menuData,setting);
			
  $(".categoryitems a[target*=frmright]").click(function () {
     showProgressBar();
  }) 

})
function bookmarksite(title, url){
    if (window.sidebar) // firefox
        window.sidebar.addPanel(title, url, "");
    else 
        if (window.opera && window.print) { // opera
            var elem = document.createElement('a');
            elem.setAttribute('href', url);
            elem.setAttribute('title', title);
            elem.setAttribute('rel', 'sidebar');
            elem.click();
        }
        else 
            if (document.all)// ie
                window.external.AddFavorite(url, title);
}
function windowClose(){
	window.location="<%=contextPath%>/system/logout.do";
}

</script>
<style>
#positionContent {
    float: left;
    width: 250px;
    height: 50px;
    line-height: 50px;
    /* color: #fff; */
    margin-left: 20px;
}
</style>
</head>
<body>
<div id="mainFrame">
<!--头部与导航start-->
<div id="hbox"></div>
<!--头部与导航end-->

<table width="100%" cellpadding="0" cellspacing="0" class="table_border0">
	<tr>
		<!--左侧区域start-->
		<td id="hideCon" class="ver01 ali01">
								<div id="lbox">
								<div id="lbox_topcenter">
								<div class="LeftNav_title">
									<b></b>
									<div class="clear"></div>
								</div>
								<div class="logo_win">
									<img src="skin/logo.png"/>
									<p>筷赚管理系统界面</p>
									<p> <%
	     for(Shop_Shop_Info shopinfo:shoplist){
	    	 %>
	    	 <a onclick="gotoshop(<%=shopinfo.getId()%>,'<%=shopinfo.getShopname() %>')"><%=shopinfo.getShopname() %> </a>
	    	 <% 
	     }
	   %></p>
								</div>
							</div>
								<div id="lbox_middlecenter">
								<div id="lbox_middleleft">
								<div id="lbox_middleright">
										<div id="bs_left">
										<div class="LeftNav_win">
												
												<div class="stair_win" id="stair_win">
													<img src="" alt="" />
												</div>
											</div>
										 <%-- <IFRAME height="100%" width="100%"  frameBorder=0 id=frmleft name=frmleft src="<%=contextPath %>/system/layout_html/left.jsp"  allowTransparency="true"></IFRAME> 
										 --%>
										</div>
										<!--更改左侧栏的宽度需要修改id="bs_left"的样式-->
								</div>
								</div>
								</div>
								<div id="lbox_bottomcenter">
								<div id="lbox_bottomleft">
								<div id="lbox_bottomright">
									<div class="lbox_foot"></div>
								</div>
								</div>
								</div>
							</div>
		</td>
		<!--左侧区域end-->
		
		<!--分隔栏区域start-->
		<td class="spliter main_shutiao" targetId="hideCon" beforeClickTip="收缩面板" afterClickTip="展开面板" beforeClickClass="bs_leftArr" afterClickClass="bs_rightArr">
		</td>
		<!--分隔栏区域end-->
		
		<!--右侧区域start-->
		<td class="ali01 ver01"  width="100%">
							<div id="rbox">
							<div id="rbox_topcenter">
								<div>
									<span>您好 <%=info.getUserName() %> 欢迎访问系统应用！</span>
									<div id="positionContent">首页</div>
									<ul>
										<div class="right_tip"></div>
										<li><b></b></li>
										<li><a href="<%=contextPath %>/system/layout_html/open.jsp" target="frmright"><span class="icon_home">系统首页</span></a></li>
										<li><b></b></li>
										<li><a href="<%=contextPath %>/page/systemManage/userMessageManage.jsp" target="frmright"><span class="icon_user">个人中心</span></a></li>
										<li><b></b></li>
										<li><span class="icon_exit" onclick="top.Dialog.confirm('确定要退出系统吗',function(){windowClose()});">退出系统</span></li>
										<div class="clear"></div>
									</ul>
									<div class="clear"></div>
								</div>
							</div>
							<div id="rbox_middlecenter">
								<div id="rbox_middleleft">
									<div id="rbox_middleright">
										<div id="bs_right">
											<%--  <IFRAME style="box-sizing: border-box; background: white;" height="100%" width="100%" frameBorder=0 id=frmright name=frmright src="<%=contextPath %>/system/layout_html/open.jsp" allowTransparency="true"></IFRAME> 									 --%>	
										 <IFRAME style="box-sizing: border-box; background: white;" height="100%" width="100%" frameBorder=0 id=frmright name=frmright src="<%=contextPath %>/customer/getshopdata.do" allowTransparency="true"></IFRAME> 									
										 </div>
									</div>
								</div>
							</div>
							<div id="rbox_bottomcenter">
								<div id="rbox_bottomleft">
									<div id="rbox_bottomright">

									</div>
								</div>
							</div>
						</div>
		</td>
		<!--右侧区域end-->
	</tr>
</table>

<!--尾部区域start-->
<div id="fbox">
	<div id="bs_footcenter">
	<div id="bs_footleft">
	<div id="bs_footright">
		版权声明
	</div>
	</div>
	</div>
</div>
</div>
<!--尾部区域end-->
<script>
function gotoshop(shopid,shopname){
	
$.post("<%=contextPath%>/system/getmenu.do",
		{"shopid":shopid,"shopname":shopname},
			function(result){
			if(result.status=="true"||result.status==true){
				window.location="<%=contextPath%>/system/layout_html/main.jsp";
			}
			
			}, "json");


}

</script>
<!--窗口任务栏区域start-->
<div id="dialogTask" class="dialogTaskBg" style="display:none;"></div>
<!--窗口任务栏区域end-->

<!--浏览器resize事件修正start-->
<div id="resizeFix"></div>
<!--浏览器resize事件修正end-->

<!--载进度条start-->
<div class="progressBg" id="progress" style="display:none;"><div class="progressBar"></div></div>
<!--载进度条end-->

</body>
</html>
