<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
	<div id="uploadBasePanel0" class="mask" tabindex="-1" unselectable="on" style="z-index: 129; display: none;"></div>
	<div id="uploadBasePanel1" class="panel panel-t1" style="display: none; z-index: 130; left: 302px; top: 50px;">
		<div class="panel-content" remark="oContent">
			<div class="hd" style="width: 527px;">
				<h3>上传文件到当前路径</h3>
			</div>
			<div class="bd">
				<div id="uploadPanel">
					<div class="upload-toolbar clearfix">
						<div class="upload-btns act-ajax">
							<div class="pl-select-file">
								<span class="pl-select-file-btn"></span>
							</div>
							<div class="jx-select-file">
								<span class="jx-select-file-btn">
								<input id='sessionUID' value='<%=session.getId()%>' type="hidden"/>
								<input type="file" name="uploadify" id="uploadify" multiple="true" class="file-select-proxy" title="请选择要上传的文件">
								</span>
							</div>
							<div class="fl-select-file-box">
								<button class="fl-select-file"></button>
							</div>
						</div>
						<div class="uploadDeny" style="display: none;">
							不可上传至当前目录，可上传至“ <span>全部文件</span> ”中及其子文件
						</div>
						<div class="uploadPath" style="">
							到： <span id="uploadCurUploadPath" title="">全部文件</span>
						</div>
					</div>
					<div class="network-abnormal-tip" style="display: none">网络异常，上传暂停。请检查您的网络</div>
					<div class="upload-list-box">
						<div class="drag-tip" style="">
						    <!--  
							<h1>试试将电脑里的文件拖拽到此上传</h1>
							<p>（您的浏览器支持此拖拽功能）</p>
							-->
							<div id="fileQueue" style="width:300px"></div>
						</div>
						<ul id="uploadItemList" class="upload-list"></ul>
					</div>
				</div>
			</div>
			<div class="ft" style="width: 541px;">
				<div class="upload-tips">
					<p>网页版单文件最大支持200M</p>
				</div>
				<a href="javascript:$('#uploadify').uploadify('upload')"><span class="y-btn y-btn-gray">开始上传</span></a>
				<a href="javascript:$('#uploadify').uploadify('cancel')"><span class="y-btn y-btn-gray">取消所有上传</span></a>
			</div>
		</div>
		
		<span class="minimize">
		<a class="minimize-link" onclick="return false;" href="#">
			<span>关闭</span>
		</a>
		</span>
		<span class="close">
			<a id="uploadCloseLink" class="close-link" onclick="return false;" href="#">
				<span>关闭</span>
			</a>
		</span>
		<span class="left-corner"></span>
		<span class="right-corner"></span>
</div>
</body>
</html>