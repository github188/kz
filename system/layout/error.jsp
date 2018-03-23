<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../page/common/includes.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
<title>筷赚平台</title>
<!--框架必需start-->
<script type="text/javascript" src="<%=contextPath %>/libs/js/jquery.js"></script>
<script type="text/javascript" src="<%=contextPath %>/libs/js/language/cn.js"></script>
<script type="text/javascript" src="<%=contextPath %>/libs/js/framework.js"></script>
<link href="<%=contextPath %>/libs/css/import_basic.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" type="text/css" id="skin" prePath="<%=contextPath %>/"/>
<link rel="stylesheet" type="text/css" id="customSkin"/>
<!--框架必需end-->
<script>
function customHeightSet(contentHeight){
	$(".noPageBg").height(contentHeight);
}
</script>
</head>
<body style="background-color:#ffffff;">
 <div class="error_404">
    
    <h2>非常遗憾，您访问的页面不存在！</h2>
    <p></p>
    <div class="reindex"><a class="reindexBtn" href="<%=contextPath %>/system/layout_html/open.jsp" target="frmright">返回首页</a></div>
    
    </div>
</body>

</html>