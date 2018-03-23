
<%@page import="com.github.pagehelper.StringUtil"%>
<%@page import="cn.quickbusiness.common.SystemTools"%>
<%@page import="cn.quickbusiness.common.SystemUtil"%>
<%@page import="java.util.List"%>
<%@page import="cn.quickbusiness.web.menu.entity.Xtgl_Menu_Info"%>
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
    <script type="text/javascript" src="<%=contextPath %>/libs/js/jquery.js"></script>
    <script type="text/javascript" src="<%=contextPath %>/libs/js/framework.js"></script>
    <link href="<%=contextPath %>/libs/css/import_basic.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" type="text/css" id="skin" prePath="<%=contextPath %>/" scrollerY="false"/>
    <link rel="stylesheet" type="text/css" id="customSkin"/>
    <!--框架必需end-->

    <!--控件叠加效果 start-->
    <script src="<%=contextPath %>/libs/js/nav/ddaccordion.js" type="text/javascript"></script>
    <link  rel="Stylesheet" type="text/css" id="AccorditionStyle" href="<%=contextPath %>/system/layout_html/red/AccorditionStyle.css" />
    <!--控件叠加效果 end-->
<script type="text/javascript">

 <!--设置滚动条-->
function customHeightSet(contentHeight){
	var windowWidth=document.documentElement.clientWidth;
	$("#scrollContent").width(windowWidth-4);
	$("#scrollContent").height(contentHeight-25);
}

</script>
        <style type="text/css">
a {
	behavior: url(<%=contextPath %>/libs/js/method/focus.htc)
}
.categoryitems span {
	width: 160px;
}
</style>
<%
 /*  根据用户id获取该用户拥有的菜单 */
List<Xtgl_Menu_Info> infolist = (List<Xtgl_Menu_Info>)request.getSession().getAttribute("menuinfo");

%>
        <script type="text/javascript">
          //打开内页时出现进度条
          $(function () {
             $(".categoryitems a[target*=frmright]").click(function () {
              showProgressBar();
           })
          })
          
          
        </script>
        </head>

        <body leftframe="true">
        <div id="scrollContent">
          <div class="arrowlistmenu">
          <% 
          String topid = SystemTools.getInstance().getProperty("system.properties", "TOP_MENU_ID");
          for(Xtgl_Menu_Info info : infolist){
          %>
             <%if(info.getParentid() == 1){ %>
             <div class="menuheader expandable"> <span class="normal_icon1"></span>
            <%--  <span class="<%if(!StringUtil.isEmpty(info.getBz())){%> <%=info.getBz() %> <%}else{%>normal_icon1<%} %>"></span> --%>
                 <%=info.getMenuname() %>
             </div>
          
            <ul class="categoryitems">
            <% for(Xtgl_Menu_Info child : infolist){
                if(info.getId() == child.getParentid()){
                %>
              <li><a href="<%=contextPath %>/menu/menuUrl.do?menuId=<%=child.getId() %>" target="frmright"><span class="text_slice"><%=child.getMenuname()%></span></a></li>
             <%}} %>
             
            </ul>
             <%} %>
            <%} %>  
            
<%--              <div class="menuheader expandable"> <span class="normal_icon1"></span>商家管理</div>
            <ul class="categoryitems">
              <li><a href="<%=contextPath %>/shop/findInfoByDpid.do" target="frmright"><span class="text_slice">商家申请列表</span></a></li>
              <li><a href="<%=contextPath %>/page/shop/shop_shop_list.jsp" target="frmright"><span class="text_slice"> 商家审核列表</span></a></li>
            </ul>
            <div class="menuheader expandable"> <span class="normal_icon1"></span>店铺管理</div>
            <ul class="categoryitems">
              <li><a href="<%=contextPath %>/shop/findInfoByDpid.do" target="frmright"><span class="text_slice">店铺信息</span></a></li>
              <li><a href="<%=contextPath %>/page/shop/shop_shop_list.jsp" target="frmright"><span class="text_slice"> 商家列表</span></a></li>
            </ul>
           <div class="menuheader  expandable"> <span class="normal_icon2"></span>店铺管理</div>
            <ul class="categoryitems">
              <li> <a href="../../templete/shop/shopModel.html" target="frmright"><span class="text_slice"> 首页模板管理</span></a></li>
              <li> <a href="../../templete/shop/shopModel.html" target="frmright"><span class="text_slice"> 配色模板管理</span></a></li>
              <li><a href="../../templete/shop/shopShareImageList.html" target="frmright"><span class="text_slice"> 图库管理</span></a></li>
              <!-- <li> <a href="../templete/Type.html" target="frmright"><span class="text_slice">
                    类别管理</span></a></li>-->
            </ul>
            <div class="menuheader expandable"> <span class="normal_icon3"></span>商品管理</div>
            <ul class="categoryitems">
              <li><a href="../../templete/goods/GoodsCategoriesList.html" target="frmright"><span class="text_slice"> 类目管理</span></a></li>
            </ul>
            <div class="menuheader expandable"> <span class="normal_icon4"></span>活动管理</div>
            <ul class="categoryitems">
              <li><a href="../../templete/Promotion/ManFan.html" target="frmright"><span class="text_slice"> 满返活动</span></a></li>
              <li><a href="../../templete/Promotion/KanJia.html" target="frmright"><span class="text_slice"> 好友砍价</span></a></li>
              <li><span class="text_slice"> 拼团</span></a></li>
            </ul>
            <div class="menuheader  expandable"> <span class="normal_icon2"></span>物流管理</div>
            <ul class="categoryitems">
              <li> <a href="../../templete/Express/ExpressModeList.html" target="frmright"><span class="text_slice"> 快递单模板管理</span></a></li>
              <li><a href="../../templete/Express/InvoiceModeList.html" target="frmright"><span class="text_slice"> 发货单模板管</span></a></li>
              <li> <a href="../../templete/Express/ExpressCodeList.html" target="frmright"><span class="text_slice"> 服务商默认物流管</span></a></li>
            </ul>
            <div class="menuheader expandable"> <span class="normal_icon1"></span>分销管理</div>
            <ul class="categoryitems">
              <li><a href="../../templete/FenXiao/FenXiaoShangList.html" target="frmright"><span class="text_slice"> 分销商管</span></a></li>
              <li><a href="../../templete/FenXiao/YongJin.html" target="frmright"><span class="text_slice"> 佣金管理</span></a></li>
            </ul>
            <div class="menuheader  expandable"> <span class="normal_icon2"></span>信誉体系管理</div>
            <ul class="categoryitems">
              <li> <a href="../../templete/credit/creditSurvey.html" target="frmright"><span class="text_slice"> 商家信誉管理</span></a></li>
              <li><a href="<%=contextPath %>/page/level/business_level_list_type.jsp" target="frmright"><span class="text_slice"> 商家等级管理</span></a></li>
              <!-- <li> <a href="../templete/Type.html" target="frmright"><span class="text_slice">
                    类别管理</span></a></li>-->
            </ul>
            <div class="menuheader expandable"> <span class="normal_icon1"></span>微信公众号管</div>
            <ul class="categoryitems">
              <li><a href="../../templete/weixin/MuBan.html" target="frmright"><span class="text_slice"> 公众号模板管</span></a></li>
              <li><a href="../../templete/weixin/weixin.html" target="frmright"><span class="text_slice"> 平台公众号管</span></a></li>
            </ul>
            <div class="menuheader expandable"> <span class="normal_icon1"></span>消息公告管理</div>
            <ul class="categoryitems">
              <li><a href="../../templete/Message/platMeaasgeManage.html" target="frmright"><span class="text_slice"> 平台消息管理</span></a></li>
              <li><a href="../../templete/Message/bussinessMeaasgeManage.html" target="frmright"><span class="text_slice"> 商家消息管理</span></a></li>
              <li><a href="../../templete/Message/MessageTypeList.html" target="frmright"><span class="text_slice"> 消息类型管理</span></a></li>
            </ul>
            <div class="menuheader expandable"> <span class="normal_icon1"></span>统计分析</div>
            <ul class="categoryitems">
              <!--<li><a href="../../templete/analysis/House.html" target="frmright"><span class="text_slice"> 授权管理</span></a></li>-->
              <li><a href="../../templete/analysis/BussinessAnalysis.html" target="frmright"><span class="text_slice"> 商家统计分析</span></a></li>
              <li><a href="../../templete/analysis/BussinessAnalysis.html" target="frmright"><span class="text_slice"> 经销商统计分</span></a></li>
              <li><a href="../../templete/analysis/BussinessAnalysis.html" target="frmright"><span class="text_slice"> 平台统计分析</span></a></li>

            </ul>
            <div class="menuheader expandable"> <span class="normal_icon1"></span>客服系统</div>
            <ul class="categoryitems">
              
              <!-- <li><a href="../../templete/House.html" target="frmright"><span class="text_slice">
                    商家申请列表</span></a></li>
                    <li><a href="../../templete/House.html" target="frmright"><span class="text_slice">
                    商家列表</span></a></li>-->
            </ul>
            <div class="menuheader expandable"> <span class="normal_icon1"></span>销售管理系</div>
            <ul class="categoryitems">
              
              <!--<li><a href="../../templete/House.html" target="frmright"><span class="text_slice">
                    商家申请列表</span></a></li>
                    <li><a href="../../templete/House.html" target="frmright"><span class="text_slice">
                    商家列表</span></a></li>-->
            </ul>
            <!--<div class="menuheader expandable">
                <span class="normal_icon1"></span>工作日志</div>
                <ul class="categoryitems">
                <li><a href="../templete/Work.html" target="frmright"><span class="text_slice">
                    工作日志</span></a></li>
               
            </ul>-->
            <div class="menuheader expandable"> <span class="normal_icon5"></span>系统管理</div>
            <ul class="categoryitems">
            
             <li><a href="<%=contextPath %>/page/menu/xtgl_menu_list.jsp" target="frmright"> <span class="text_slice">菜单管理</span></a></li>
              <li><a href="<%=contextPath %>/page/systemManage/platManage.jsp" target="frmright"> <span class="text_slice">平台管理</span></a></li> 
              <li><a href="<%=contextPath %>/menu/menuUrl.do?menuId=9" target="frmright"> <span class="text_slice">平台管理测试</span></a></li>
             <li><a href="../../templete/system/BussinessUserList.html" target="frmright"> <span class="text_slice">商家用户管理</span></a></li>
             <li><a href="<%=contextPath %>/page/systemManage/delayRecord.jsp" target="frmright"> <span class="text_slice">日志管理</span></a></li>
              
            </ul>
            </ul>  --%>
          </div>
        </div> 
</body>
</html>
<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../page/common/includes.jsp"%>
<%

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
	<title>筷赚平台</title>
	
	<!--框架必需start-->
    <script type="text/javascript" src="<%=contextPath %>/libs/js/jquery.js"></script>
    <script type="text/javascript" src="<%=contextPath %>/libs/js/framework.js"></script>
    <link href="<%=contextPath %>/libs/css/import_basic.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" type="text/css" id="skin" prePath="<%=contextPath %>/" scrollerY="false"/>
    <link rel="stylesheet" type="text/css" id="customSkin"/>
    <!--框架必需end-->

    <!--控件叠加效果 start-->
    <script src="<%=contextPath %>/libs/js/nav/ddaccordion.js" type="text/javascript"></script>
    <link  rel="Stylesheet" type="text/css" id="AccorditionStyle" href="<%=contextPath %>/system/layout_html/skin/AccorditionStyle.css" />
    <!--控件叠加效果 end-->

        <style type="text/css">
a {
	behavior: url(<%=contextPath %>/libs/js/method/focus.htc)
}
.categoryitems span {
	width: 160px;
}
</style>
<%
 
//List<Xtgl_Menu_Info> infolist = (List<Xtgl_Menu_Info>)request.getSession().getAttribute("menuinfo");

%>
        <script type="text/javascript">
          //打开内页时出现进度条
          $(function () {
             $(".categoryitems a[target*=frmright]").click(function () {
              showProgressBar();
           })
          })
          
          
        </script>
        </head>

        <body leftframe="true">
        <div id="scrollContent">
          <div class="arrowlistmenu">
          <div class="menuheader expandable">
				<span class="normal_icon1"></span>商家管理
			</div>
			<ul class="categoryitems">
				<li><a href="<%=contextPath%>/page/business/business_application_list.jsp"
					target="frmright"><span class="text_slice">商家申请列表</span></a></li>
				<li><a href="<%=contextPath%>/page/business/business_verify_tab.jsp"
					target="frmright"><span class="text_slice">商家审核列表</span></a></li>
					<li><a href="<%=contextPath%>/page/business/business_settlein_list.jsp"
					target="frmright"><span class="text_slice">商家入驻列表</span></a></li>
			</ul>
            <div class="menuheader expandable"> <span class="normal_icon1"></span>店铺管理</div>
            <ul class="categoryitems">
              <li><a href="<%=contextPath %>/shop/findInfoById.do" target="frmright"><span class="text_slice">店铺信息</span></a></li>
              <li><a href="<%=contextPath %>/page/shop/shop_shop_list.jsp" target="frmright"><span class="text_slice"> 商家列表</span></a></li>
            </ul>
           <div class="menuheader  expandable"> <span class="normal_icon2"></span>店铺管理</div>
            <ul class="categoryitems">
              <li> <a href="../../templete/shop/shopModel.html" target="frmright"><span class="text_slice"> 首页模板管理</span></a></li>
              <li> <a href="../../templete/shop/shopModel.html" target="frmright"><span class="text_slice"> 配色模板管理</span></a></li>
              <li><a href="../../templete/shop/shopShareImageList.html" target="frmright"><span class="text_slice"> 图库管理</span></a></li>
              <!-- <li> <a href="../templete/Type.html" target="frmright"><span class="text_slice">
                    类别管理</span></a></li>-->
            </ul>
            <div class="menuheader expandable"> <span class="normal_icon3"></span>商品管理</div>
            <ul class="categoryitems">
             <li><a href="<%=contextPath %>/page/goodsManage/goodsEdit.jsp" target="frmright"><span class="text_slice"> 上架新商品</span></a></li>
              <li><a href="../../templete/goods/GoodsCategoriesList.html" target="frmright"><span class="text_slice"> 类目管理</span></a></li>
            </ul>
            <div class="menuheader expandable"> <span class="normal_icon4"></span>活动管理</div>
            <ul class="categoryitems">
              <li><a href="../../templete/Promotion/ManFan.html" target="frmright"><span class="text_slice"> 满返活动</span></a></li>
              <li><a href="../../templete/Promotion/KanJia.html" target="frmright"><span class="text_slice"> 好友砍价</span></a></li>
              <li><span class="text_slice"> 拼团</span></a></li>
            </ul>
            <div class="menuheader  expandable"> <span class="normal_icon2"></span>物流管理</div>
            <ul class="categoryitems">
              <li> <a href="../../templete/Express/ExpressModeList.html" target="frmright"><span class="text_slice"> 快递单模板管理</span></a></li>
              <li><a href="../../templete/Express/InvoiceModeList.html" target="frmright"><span class="text_slice"> 发货单模板管</span></a></li>
              <li> <a href="../../templete/Express/ExpressCodeList.html" target="frmright"><span class="text_slice"> 服务商默认物流管</span></a></li>
            </ul>
            <div class="menuheader expandable"> <span class="normal_icon1"></span>分销管理</div>
            <ul class="categoryitems">
              <li><a href="../../templete/FenXiao/FenXiaoShangList.html" target="frmright"><span class="text_slice"> 分销商管</span></a></li>
              <li><a href="../../templete/FenXiao/YongJin.html" target="frmright"><span class="text_slice"> 佣金管理</span></a></li>
            </ul>
            <div class="menuheader  expandable"> <span class="normal_icon2"></span>信誉体系管理</div>
            <ul class="categoryitems">
              <li> <a href="../../templete/credit/creditSurvey.html" target="frmright"><span class="text_slice"> 商家信誉管理</span></a></li>
              <li><a href="<%=contextPath %>/page/level/business_level_list_type.jsp" target="frmright"><span class="text_slice"> 商家等级管理</span></a></li>
              <!-- <li> <a href="../templete/Type.html" target="frmright"><span class="text_slice">
                    类别管理</span></a></li>-->
            </ul>
            <div class="menuheader expandable"> <span class="normal_icon1"></span>微信公众号管</div>
            <ul class="categoryitems">
              <li><a href="../../templete/weixin/MuBan.html" target="frmright"><span class="text_slice"> 公众号模板管</span></a></li>
              <li><a href="../../templete/weixin/weixin.html" target="frmright"><span class="text_slice"> 平台公众号管</span></a></li>
            </ul>
            <div class="menuheader expandable"> <span class="normal_icon1"></span>消息公告管理</div>
            <ul class="categoryitems">
              <li><a href="../../templete/Message/platMeaasgeManage.html" target="frmright"><span class="text_slice"> 平台消息管理</span></a></li>
              <li><a href="../../templete/Message/bussinessMeaasgeManage.html" target="frmright"><span class="text_slice"> 商家消息管理</span></a></li>
              <li><a href="../../templete/Message/MessageTypeList.html" target="frmright"><span class="text_slice"> 消息类型管理</span></a></li>
            </ul>
            <div class="menuheader expandable"> <span class="normal_icon1"></span>统计分析</div>
            <ul class="categoryitems">
              <!--<li><a href="../../templete/analysis/House.html" target="frmright"><span class="text_slice"> 授权管理</span></a></li>-->
              <li><a href="../../templete/analysis/BussinessAnalysis.html" target="frmright"><span class="text_slice"> 商家统计分析</span></a></li>
              <li><a href="../../templete/analysis/BussinessAnalysis.html" target="frmright"><span class="text_slice"> 经销商统计分</span></a></li>
              <li><a href="../../templete/analysis/BussinessAnalysis.html" target="frmright"><span class="text_slice"> 平台统计分析</span></a></li>

            </ul>
            <div class="menuheader expandable"> <span class="normal_icon1"></span>客服系统</div>
            <ul class="categoryitems">
              
              <!-- <li><a href="../../templete/House.html" target="frmright"><span class="text_slice">
                    商家申请列表</span></a></li>
                    <li><a href="../../templete/House.html" target="frmright"><span class="text_slice">
                    商家列表</span></a></li>-->
            </ul>
            <div class="menuheader expandable"> <span class="normal_icon1"></span>销售管理系</div>
            <ul class="categoryitems">
              
              <!--<li><a href="../../templete/House.html" target="frmright"><span class="text_slice">
                    商家申请列表</span></a></li>
                    <li><a href="../../templete/House.html" target="frmright"><span class="text_slice">
                    商家列表</span></a></li>-->
            </ul>
            <!--<div class="menuheader expandable">
                <span class="normal_icon1"></span>工作日志</div>
                <ul class="categoryitems">
                <li><a href="../templete/Work.html" target="frmright"><span class="text_slice">
                    工作日志</span></a></li>
               
            </ul>-->
            <div class="menuheader expandable"> <span class="normal_icon5"></span>系统管理</div>
            <ul class="categoryitems">
            
             <li><a href="<%=contextPath %>/page/organization/xtgl_org_list.jsp" target="frmright"> <span class="text_slice">机构管理</span></a></li>
             <li><a href="<%=contextPath %>/page/systemManage/platManage.jsp" target="frmright"> <span class="text_slice">平台管理</span></a></li>
             <li><a href="../../templete/system/BussinessUserList.html" target="frmright"> <span class="text_slice">商家用户管理</span></a></li>
             <li><a href="<%=contextPath %>/page/systemManage/delayRecord.jsp" target="frmright"> <span class="text_slice">日志管理</span></a></li>
             <li><a href="<%=contextPath %>/page/role/roleManage.jsp" target="frmright"> <span class="text_slice">角色管理</span></a></li>
              <li><a href="<%=contextPath %>/page/systemManage/userManage.jsp" target="frmright"> <span class="text_slice">用户管理</span></a></li>
              
            </ul>
            </ul> 
          </div>
        </div>
</body>
</html> --%>