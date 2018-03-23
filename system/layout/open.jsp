<%@page import="cn.quickbusiness.web.systemManage.entity.UserInfo"%>
<%@page import="cn.quickbusiness.web.order.entity.Shop_RealTime_Data"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../page/common/includes.jsp"%>
<%

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
<title>筷赚平台</title>
<!--框架必需start-->
<%-- <script type="text/javascript" src="<%=contextPath %>/libs/js/jquery.js"></script>
<script type="text/javascript" src="<%=contextPath %>/libs/js/framework.js"></script>
<link href="<%=contextPath %>/libs/css/import_basic.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" type="text/css" id="skin" prePath="<%=contextPath %>/"/>
<link rel="stylesheet" type="text/css" id="customSkin"/> --%>
<script type="text/javascript" src="<%=contextPath %>/libs/js/jquery.js"></script>
<script type="text/javascript" src="<%=contextPath %>/libs/js/language/cn.js"></script>
<script type="text/javascript" src="<%=contextPath %>/libs/js/framework.js"></script>
<link href="<%=contextPath %>/libs/css/import_basic.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" type="text/css" id="skin" prePath="<%=contextPath %>/"/>
<link rel="stylesheet" type="text/css" id="customSkin"/>
<!--框架必需end-->
<link rel="stylesheet" type="text/css" href="<%=contextPath %>/libs/style/style.css"/>
<style>

.widget-box {
    margin-bottom: 40px;
}
.widget-box .widget-box-header {
    position: relative;
    padding-bottom: 15px;
}
.widget-box .widget-box-content {
    -webkit-transition: all 0.2s linear;
    -moz-transition: all 0.2s linear;
    transition: all 0.2s linear;
}
.widget-box .widget-box-title {
    font-size: 14px;
    line-height: 14px;
    color: #333333;
    font-weight: bold;
}
.widget-box .widget-box-title .widget-box-opts {
    display: inline-block;
    margin-left: 10px;
    font-size: 12px;
    font-weight: normal;
    color: #3283FA;
    line-height: 14px;
}
.widget-box .widget-box-title .widget-box-opts a {
    font-size: 12px;
    color: #3283FA;
    line-height: 1em;
}
.recommended-apps .tofu-container, .more-service .tofu-container {
    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: stretch;
    -webkit-align-items: stretch;
    -moz-box-align: stretch;
    -ms-flex-align: stretch;
    align-items: stretch;
    -webkit-flex-flow: row nowrap;
    -ms-flex-flow: row nowrap;
    flex-flow: row nowrap;
    -webkit-box-pack: justify;
    -webkit-justify-content: space-between;
    -moz-box-pack: justify;
    -ms-flex-pack: justify;
    justify-content: space-between;
}
.recommended-apps .tofu, .more-service .tofu {
    width: 20%;
    -webkit-box-flex: 1;
    -webkit-flex: 1 1 25%;
    -moz-box-flex: 1;
    -ms-flex: 1 1 25%;
    flex: 1 1 25%;
}

.tofu.tofu-green {
    background-color: #FD6E66; /* #8FCF8F; */
}

.tofu {
    background: #f8f8f8;
    margin-right: 12px;
    font-size: 20px;
    color: #fff;
    line-height: 20px;
    text-align: center;
    padding: 35px 0 30px 0;
    border-radius: 2px;
    
}
.recommended-apps .tofu, .more-service .tofu {
    width: 20%;
    -webkit-box-flex: 1;
    -webkit-flex: 1 1 25%;
    -moz-box-flex: 1;
    -ms-flex: 1 1 25%;
    flex: 1 1 25%;
}

.tofu.tofu-cyan {
    background-color:#34C3AF; /* #84BDD0; */
}

.tofu.tofu-blue {
    background-color:#3CB1E7; /* #849BD0; */
}
.tofu.tofu-purple {
    background-color: #d084c5;
}
a:hover {
    color: #fff; 
    text-decoration: none;
}
.subtofu{
    font-size: 14px;
    margin-top: 4px;
    display: inline-block;
}
</style>

<%

 UserInfo userinfo=(UserInfo)request.getSession().getAttribute("USERINFO");
 String shopid=""; 
if(!userinfo.getShopid().equals("0")){
	shopid=userinfo.getShopid();
 }

 Shop_RealTime_Data shop=(Shop_RealTime_Data)request.getAttribute("shoprealdata");
  if(shop==null){
	  shop=new Shop_RealTime_Data();
  }
 
    String shelfPro=(String)request.getAttribute("shelfPro");
	String orderManage=(String)request.getAttribute("orderManage");
	String mjActivity=(String)request.getAttribute("mjActivity");
	String counp=(String)request.getAttribute("counp");
  
%>
</head>
<body>
	<!-- <div class="welcome" id="openContent">
		 <div class="welcomeTitle"> 欢迎使用</div>
	</div>	 -->
	  
	<%if(shopid!=""){%>
		<div class="Content_win">
		<div class="widget-box recommended-apps">
                    <div class="widget-box-header">
                        <h3 class="widget-box-title">
                             店铺实时数据
                            <div class="widget-box-opts">
                                <a href=""></a>
                            </div>
                        </h3>
                    </div>
                    <div class="widget-box-content">
                        <div class="tofu-container">
                            <span class="tofu tofu-green" href="//www.youzan.com/v2/ump/groupon">
                                <h4><%=shop.getWaitcount() %></h4>
                                <p>待发货订单</p>
                            </span>
                               <span class="tofu tofu-cyan" href="//www.youzan.com/v2/appmarket/appdesc?id=6298&amp;origin_url=/ump/targetMarketing" target="_blank">
                                    <h4><%=shop.getTordercount() %></h4>
                                    <p>今日订单数 </p>
                                     <span class="subtofu"> 昨日订单数：<%=shop.getYordercount() %></span>
                                   
                                </span>
                                <span class="tofu tofu-blue" href="//www.youzan.com/salesman/dashboard">
                                    <h4><%=shop.getTsalemoney() %></h4>
                                    <p>今日成交额</p>
                                     <span class="subtofu"> 昨日成交额：<%=shop.getYsalemoney() %></span>
                                </span>
                               <!--  <a class="tofu tofu-purple" href="//www.youzan.com/v2/weapp/homepage2">
                                <h4>有赞小程序</h4>
                                <p>一键生成抢占先机</p>
                            </a> -->
                        </div>
                    </div>
                </div>
		
		
			<div class="nav_win">
				
				<div>
				   <h3 style="font-size: 14px;line-height: 14px; color: #333333; font-weight: bold;">
                                     常用功能
                   </h3>
				</div>
				<div class="img_win">
					<a class="img_icon" <%if(("1").equals(shelfPro)) {%> href="<%=contextPath %>/menu/menuUrl.do?menuId=57" <%}else{ %> href="javascript:authority();"<%} %>target="frmright">
						<img src="<%=contextPath %>/libs/style/flatIcons/icon_bg_02.png" class="img1"/>
						<img src="<%=contextPath %>/libs/style/flatIcons/icon_con_02.png" class="img2"/>
					</a>
					<span>上架商品</span>
				</div>
				<div class="img_win">
					<a class="img_icon" <%if(("1").equals(orderManage)) {%> href="<%=contextPath %>/menu/menuUrl.do?menuId=53" <%}else{ %> href="javascript:authority();"<%} %>target="frmright">
						<img src="<%=contextPath %>/libs/style/flatIcons/icon_bg_03.png" class="img1"/>
						<img src="<%=contextPath %>/libs/style/flatIcons/icon_con_03.png" class="img2"/>
					</a>
					<span>订单管理</span>
				</div>
				<div class="img_win">
					<a class="img_icon" <%if(("1").equals(mjActivity)) {%>href="<%=contextPath %>/menu/menuUrl.do?menuId=88" <%}else{ %> href="javascript:authority();"<%} %> target="frmright">
						<img src="<%=contextPath %>/libs/style/flatIcons/icon_bg_04.png" class="img1"/>
						<img src="<%=contextPath %>/libs/style/flatIcons/icon_con_04.png" class="img2"/>
					</a>
					<span>满减活动</span>
				</div>
				<div class="img_win">
					<a class="img_icon" <%if(("1").equals(counp)) {%> href="<%=contextPath %>/menu/menuUrl.do?menuId=78" <%}else{ %> href="javascript:authority();"<%} %> target="frmright">
						<img src="<%=contextPath %>/libs/style/flatIcons/icon_bg_05.png" class="img1"/>
						<img src="<%=contextPath %>/libs/style/flatIcons/icon_con_05.png" class="img2"/>
					</a>
					<span>优惠券</span>
				</div>
			
				<div class="clear"></div>
			</div>
			</div>
			<%} %>
<script>
function authority(){
	 top.Dialog.alert("权限不足");
}
function showToast1(text){
	top.Toast('showNoticeToast',text );
}
function customHeightSet(contentHeight){
		$("#openContent").height(contentHeight);
	}
</script>
</body>
</html>