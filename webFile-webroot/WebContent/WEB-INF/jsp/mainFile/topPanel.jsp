<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include.inc.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
<div id="topPanel">
		<a id="logo" title="云盘首页" href="/"></a>
		<div class="topBanner">
			<div class="exit">
				<a id="tpExit" href="/user/logout">退出</a>
			</div>
			<div class="splitter"></div>
			<div class="user-info">
				<a onclick="return false;" href="###" id="tpUserInfo">鹏_杰</a>
				<span class="badge-count"><em>99+消息</em><span class="caset"></span></span>
			</div>
			<div class="splitter"></div>
			<div class="space-upgrade">
				<a id="updateSpace" title="做任务免费获取更多空间" onclick="return false;" href="###">免费扩容</a>
			</div>
			
			<div class="progress-bar">
				<div class="used" style="width: ${disk.usedSpace/disk.totalSpace*100}%;"></div><p class="percent"><fmt:formatNumber value="${disk.usedSpace}" pattern="0.00"/>GB/${disk.totalSpace}GB</p>
			</div>
			<div id="userLevel" class="level" style="background:url(<%=path%>/styles/images/lv9.png);_background:none;_filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='<%=path%>/styles/images/lv9.png');"></div>
			<div class="splitter"></div>
			<div class="lottery lottery-already" style="">
				<a id="lottery-everyday" onclick="try{monitor.btnLog('choujiang')}catch(e){};return false;" href="###" title="点击抽奖领取免费空间">每日抽奖</a>
				<span>已经抽奖</span>
			</div>
			<div class="splitter"></div>
			<div style="color: rgb(234, 229, 94);width: 270px;float:right;margin-top:-5px;line-height:26px;">
				<span style="display:block;height:26px;width:17px;background:url(<%=path%>/styles/images/group.png) no-repeat;_background: none;_filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='<%=path%>/styles/images/group.png');_position:relative; float:left;margin-right:5px;margin-top:2px;"></span>
				<a onclick="try{monitor.btnLog('huodong')}catch(e){}" style="float:left;color:#fffdbf;" target="_blank" href="http://huodong.yunpan.360.cn">够人气，就拿1024GB</a>
			</div>
		</div>
		
	</div>
</body>
</html>