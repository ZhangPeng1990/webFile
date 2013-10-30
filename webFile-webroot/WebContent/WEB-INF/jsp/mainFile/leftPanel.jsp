<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include.inc.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
<div id="leftPanel">
		<ul class="folders">
        	
        	<c:forEach var="item" items="${listFiles}">
        		<li class="file " id="folder-all" value="${item.uri}">
	            <a onclick="return false;" href="###">
	            <i class="icon icon-all"></i>${item.name}
	            </a>
	        	</li>
        	</c:forEach>
        	
        	<!--  
        	<li class="recycle">
            <a onclick="return false;" href="###">
            <i class="icon icon-recycle"></i>回收站
            </a>
        	</li>
        	-->
		</ul>
		
		<div class="clients-download" style="display: block;">
			<ul class="clients-down">
				<li>
                <a target="_blank" href="http://down.360safe.com/yunpan/360wangpan_setup.exe" title="PC客户端下载">
                <i class="icon icon-windows"></i><span class="txt">PC客户端</span>
                </a>
            	</li>
            	
            	<li>
				<a target="_blank" href="http://down.360safe.com/yunpan/360yunpan_android.apk" title="android安卓版下载">
				<i class="icon icon-android"></i>
				<span class="txt">Android</span>
				</a>
				</li>
				
				<li>
				<a target="_blank" href="http://itunes.apple.com/cn/app/360yun-pan/id508401605?mt=8" title="iphone苹果版下载">
                <i class="icon icon-iphone"></i>
                <span class="txt">iPhone</span>
                </a>
                </li>
                
                <li>
				<a target="_blank" onclick="return false;" href="###" title="更多">
				<i class="icon icon-more"></i>
				<span class="txt">更多</span>
				</a>
				</li>
			</ul>
		</div>
	</div>
</body>
</html>