<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../page/common/includes.jsp"%>
<%@page import="cn.quickbusiness.web.systemManage.entity.UserInfo"%>
<%@page import="java.util.List"%>
<%@page import="cn.quickbusiness.web.shop.entity.Shop_Shop_Info"%>
<%
 UserInfo info = (UserInfo)request.getSession().getAttribute("USERINFO");
if(info==null){
	info=new UserInfo();
}
String menuData=(String)request.getSession().getAttribute("menutest");

List<Shop_Shop_Info> shoplist=(List<Shop_Shop_Info>)request.getSession().getAttribute("shoplist");


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
.detail{
font-size:10px; 
font-weight:normal;
/* text-align: center; */
margin-left: 45px;
}
p{font-size:14px; font-weight:bold;}

.button-create-shop {
    width:80px;
    display: inline-block;
    margin-left: 520px;
    font-size: 12px;
    font-weight: normal;
    color: #3283FA;
    line-height: 14px;
}
li{cursor: pointer; }
.page_content{width:700px; }
.welcomeBg{margin-top: -150px;}
</style>
</head>
<body>
	<!-- <div class="welcome" id="openContent">
		 <div class="welcomeTitle"> 欢迎使用</div>
	</div>	 -->
	
	
		<div class="Content_win">
		<div class="widget-box recommended-apps">
                    <div class="widget-box-header">
                        <h3 class="widget-box-title">
                            选择店铺
                            <div class="button-create-shop">
                            <input type="button" class="primary" value="创建店铺" onclick="createShop()" style="margin: 10px;"/>
                                <a href=""></a>
                            </div>
                        </h3>
                        <!-- <div class="button-create-shop">
                        <input type="button" class="default" value="创建店铺" onclick="checkRows(3)" style="margin: 10px;"/>
                        </div> -->
                    </div>
                    <div class="widget-box-content">
                        <div class="tofu-container">
                           	<div class="page_content">
	<div class="groupTitle"><span>店铺列表</span></div>
	<div class="img_list_win">
		<ul id="listDatas" class="clearfloat">
		
		</ul>
	</div>
  </div>
                           
                        </div>
                    </div>
                </div>
		
		
			</div>
<script>
var allmenuoper_u = "U";
var allmenuoper_d = "D";

function initComplete() {
	refreshList();
}

function edit(id)
{
             $.ajax({
					type:"post", //请求方式
					url:"<%=contextPath%>/shop/isadmin.do", //发送请求地址
					data:{
						shopid:id //发送给数据库的数据
					},
					//请求成功后的回调函数有两个参数
					success:function(data){
						if(data == 1){
							 parent.location.href="<%=contextPath%>/system/layout_html/mainedit.jsp?id="+id;
						}else{
							authority();
						}
					}
				});
	
	<%--  if(allmenuoper.indexOf(allmenuoper_u) >= 0){ 
		 parent.location.href="<%=contextPath%>/system/layout_html/mainedit.jsp?id="+id;
	}else{
		authority();
	} --%>
	
}
function deleteShop(id)
{
	  $.ajax({
			type:"post", //请求方式
			url:"<%=contextPath%>/shop/isadmin.do", //发送请求地址
			data:{
				shopid:id //发送给数据库的数据
			},
			//请求成功后的回调函数有两个参数
			success:function(data){
				if(data == 1){
					top.Dialog.confirm("确定要删除吗？",function(){
				        $.post("<%=contextPath%>/shop/deleteShop.do",
				                //获取所有选中行id
				                {"id":id},

				                function(result){
				                   // handleResult(result.status);
				                   if(result == 1 ){
				                	   top.Dialog.alert("删除成功 !", refreshList);
				                   }else{
				                	   top.Dialog.alert("删除失败 !");
				                   }
				                },
				                "json");
				    });
				}else{
					authority();
				}
			}
		});

}


function showToast1(text){
	top.Toast('showNoticeToast',text );
}
function customHeightSet(contentHeight){
		$("#openContent").height(contentHeight);
	}
	function toMain(shopid,shopname)
	{
		$.post("<%=contextPath%>/system/getmenu.do",
				{"shopid":shopid,"shopname":shopname},
					function(result){
					if(result.status=="true"||result.status==true){
						parent.location.href="<%=contextPath%>/system/layout_html/main.jsp";
					}
					
					}, "json");
	}
	function createShop()
	{
		parent.location.href="<%=contextPath%>/system/layout_html/maincreate.jsp";
	}
	
	function openMask(){ 
		$("#listDatas").mask("正在加载中",null,true);
		}
	function closeMask(){
		$("#listDatas").unmask();
		}
	
	$(function(){ 
		closeMask();
		}); 
	
	function refreshList(){
		openMask();
		$.post("<%=contextPath%>/shop/list.do",
		function(result){
			//清空现有列表，追加查询出来的列表
			$("#listDatas").html("");
			/* $("#totalRows").val(result.totalRows);
			$("#number").val(result.totalRows); */
			
			if(result.totalRows > 0){
				var datas = result.rows;
				
				if(datas.length > 0){

					var divStr = '';
					for(var i=0;i<datas.length;i++){
							
							divStr = divStr + '<li>';
							divStr = divStr + '<div onclick="javascript:toMain('+datas[i].id+",'"+datas[i].shopname+"'"+')">';
							divStr = divStr + '<p>'+datas[i].shopname+'</p>';
							divStr = divStr + '<div class="detail">主体信息：'+datas[i].auth_status_name+'</div>';
							divStr = divStr + '<div class="detail">店铺状态：'+datas[i].shop_status_name+'</div>';
							divStr = divStr + '</div>';
							divStr = divStr + '<div class="edit_delete"><span onclick="javascript:edit('+datas[i].id+')">编辑</span><em> ： </em><span onclick="javascript:deleteShop('+datas[i].id+')">删除</span></div>';
							//divStr = divStr + '<div class="edit_delete"><span onclick="javascript:edit('+datas[i].id+')">编辑</span><em> ： </em><span onclick="javascript:deleteShop('+datas[i].id+')">删除</span></div>';
							
							divStr = divStr + '</li>';
						
					}
					/* divStr = divStr + '<div id="info" class="listaddinfo">';
					divStr = divStr + '<div class="actionmiddle grid_opp_container">';
					divStr = divStr + '<span class="grid_opp_add" title="新增" onclick="add()">新增</span>';
					divStr = divStr + '</div>';
					
					divStr = divStr + '</div>';
					
					divStr = divStr + '</li>'; */

					
					var $div=$(divStr);
					
					$("#listDatas").append($div);
					
					
					
					$("div,img").each(function(){
						$(this).render();
					});
					
					//增加效果
					//initPictureOperate();
					
					//
					//addPager(pageno-1, result.totalRows);
				}else{
					//行数错误
					//addPager(0, 0);
				}
				
			}else{
				var divStr = '';
				divStr = divStr + '<div class="welcomeBg" id="openContent"></div>';
				
				 
				 var $div=$(divStr);
					
					$("#listDatas").append($div);
					
					
					
					$("div,img").each(function(){
						$(this).render();
					});
				/* $("#totalRows").val(2);
				$("#number").val(2); */
				
			}
		},"json");
	}
	function authority(){ 
		  top.Dialog.alert("权限不足");
		}
</script>
</body>
</html>