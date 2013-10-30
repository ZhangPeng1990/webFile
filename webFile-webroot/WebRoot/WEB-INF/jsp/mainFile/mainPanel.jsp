<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
<div id="mainPanel">
		<div id="search">
			<label id="searchPlaceholder" style="display:none;">当前页文件搜索</label>
			<input id="searchInput" class="search-text" data-placeholder="当前页文件搜索" placeholder="当前页文件搜索">
			<span class="ss-icon ss-search"></span>
			<span class="ss-icon ss-close"></span>
		</div>
		
		<div id="crumb" class="cmd-panel">
			<div class="crumb-path">
			<a class="cmd gohome gopath" href="###" title="当前目录">当前目录</a>
			>
			<span title=""></span>
			</div>
		</div>
		
		<div id="pluginSetupSuccess" class="tip" style="display:none;"><!-- 暂时隐藏，用于以后消息提示 -->
			上传控件安装成功，快来体验吧！
			<span class="arrow"></span>
		</div>
		
		<div id="toolbar" class="cmd-panel">
			<div class="btn-group btns-filelist" style="">
				<div class="item">
				<span id="tbBack" class="y-btn-back y-btn-back-disable back show" title="" data-cn="back">返回</span>
				</div>
				
				<div class="item">
				<span id="tbUpload" class="y-btn y-btn-blue upload show" data-cn="upload">
				<i class="icon icon-upload"></i>
				上传
				</span>
				<span id="tbNew" class="y-btn y-btn-gray new show" data-cn="new">
				<i class="icon icon-new"></i>
				新建文件夹
				</span>
				</div>
				
				<div id="moreMovement" class="item" style="display: none;">
				<span class="y-btn y-btn-gray pack-dl show" onclick="openFolder();">打开</span>
				<span id="tbDownLoad" class="y-btn y-btn-gray dl show" onclick="downloadFile();">下载</span>
				<span id="tbDel" class="y-btn y-btn-gray del show" onclick="makeSureDelete();">删除</span>
				</div>
			</div>
			
			<div class="display-mode">
			<a id="tbText" class="cmd text" data-cn="text" onclick="return false;" href="###" title="切换到列表视图">列表视图</a>
			<a id="tbPic" class="cmd pic pic-cur" data-cn="pic" onclick="return false;" href="###" title="切换到大图视图">大图标视图</a>
			</div>
			
			<div class="sort">
			<h2>
			<span class="text">排序：</span>
			<a id="sortSelected" class="name asc" data-order="asc" data-field="name" href="###">名称</a>
			</h2>
			<ul id="sortSelectedUl" style="display: none;"><!-- 当鼠标移到 名称上时，设置style="display: block;" -->
				<li style="">
				<a class="name asc" data-order="asc" data-field="name" onclick="return false;" href="###">名称</a>
				</li>
				<li style="">
				<a class="fsize asc" data-order="asc" data-field="fsize" onclick="return false;" href="###">大小</a>
				</li>
				<li style="">
				<a class="new-upload desc" data-order="desc" data-field="mtime" onclick="return false;" href="###">最近上传</a>
				</li>
				<li style="">
				<a class="fmtime desc" data-order="desc" data-field="fmtime" onclick="return false;" href="###">修改日期</a>
				</li>
				<li style="display: none;">
				<a class="del-date desc" data-order="desc" data-field="mtime" onclick="return false;" href="###">删除日期</a>
				</li>
				<li style="display: none;">
				<a class="share-date desc" data-order="desc" data-field="mtime" onclick="return false;" href="###">日期</a>
				</li>
			</ul>
			</div>
			
		</div>
		
		<div id="fileList" class="file-list-box clearfix file-tab" data-tab="file-tab">
			<div id="fileListHead" class="file-list-head clearfix" style="margin-right: 17px; display: none;"><!-- 以列表样式显示文件是显示 -->
				<div class="column column-checkbox">
					<label class="chkall"></label>
				</div>
				
				<div class="column column-name">
					<span class="file-sort" data-field="name">
					文件名
					<span class="arrow_u"></span>
					</span>
				</div>
				
				<div class="column column-size">
					<span class="file-sort" data-field="fsize">
					大小
					<span class=""></span>
					</span>
				</div>
				
				<div class="column column-time">
					<span class="file-sort" data-field="fmtime">
					修改日期
					<span class=""></span>
					</span>
				</div>
			</div>
			
			<div id="fileListMain" style="height: 447px;">
				<div id="listHolder" class="clearfix">
					<ul id="list" class="file-list clearfix ico-list" data-previewsign="">
						<!-- class属性值：鼠标移上去加 hover，单击选择加active-->
						<li class="row filelist-item clearfix renaming" data-path="/iphone4s/" data-password="" data-date="2013-07-06 19:29" data-shorturl="" data-url="" data-link="" data-title="iphone4s" data-type="folder" data-nid="13731101662587125" f-index="0" style="left: 0px; top: 0px;">
							<div class="column column-checkbox">
							<label></label>
							</div>
							<div class="column column-name" title="iphone4s 创建时间: 2013-07-06 19:29">
							<span class="ico ico-folder"></span>
							<span class="text" style="display: none;">iphone4s</span>
							<textarea id="rename-text" style="height: 32px;">iphone4s</textarea>
							</div>
							<div class="column column-size"> </div>
							<div class="column column-time">2013-07-06 19:29</div>
						</li>
						
						<li class="row filelist-item clearfix" data-path="/MyIpad/" data-password="" data-date="2013-06-23 15:57" data-shorturl="" data-url="" data-link="" data-title="MyIpad" data-type="folder" data-nid="13719742222569920" f-index="1">
							<div class="column column-checkbox">
							<label></label>
							</div>
							<div class="column column-name" title="MyIpad 创建时间: 2013-06-23 15:57">
							<span class="ico ico-folder"></span>
							<span class="text">MyIpad</span>
							</div>
							<div class="column column-size"> </div>
							<div class="column column-time">2013-06-23 15:57</div>
						</li>
						
						<li class="row filelist-item clearfix" data-path="/视频/" data-password="" data-date="2012-07-11 08:50" data-shorturl="" data-url="" data-link="" data-title="视频" data-type="folder" data-nid="1341967851171266" f-index="12">
							<div class="column column-checkbox">
							<label></label>
							</div>
							<div class="column column-name" title="视频 创建时间: 2012-07-11 08:50">
							<span class="ico ico-videofolder"></span>
							<span class="text">视频</span>
							</div>
							<div class="column column-size"> </div>
							<div class="column column-time">2012-07-11 08:50</div>
						</li>
						
						<li class="row filelist-item clearfix" data-path="/书籍/" data-password="" data-date="2012-07-11 08:50" data-shorturl="" data-url="" data-link="" data-title="书籍" data-type="folder" data-nid="1341967851171268" f-index="13">
							<div class="column column-checkbox">
							<label></label>
							</div>
							<div class="column column-name" title="书籍 创建时间: 2012-07-11 08:50">
							<span class="ico ico-bookfolder"></span>
							<span class="text">书籍</span>
							</div>
							<div class="column column-size"> </div>
							<div class="column column-time">2012-07-11 08:50</div>
						</li>
						
						<li class="row filelist-item clearfix" data-path="/文档/" data-password="" data-date="2012-07-11 08:50" data-shorturl="" data-url="" data-link="" data-title="文档" data-type="folder" data-nid="1341967851171259" f-index="14">
							<div class="column column-checkbox">
							<label></label>
							</div>
							<div class="column column-name" title="文档 创建时间: 2012-07-11 08:50">
							<span class="ico ico-documentfolder"></span>
							<span class="text">文档</span>
							</div>
							<div class="column column-size"> </div>
							<div class="column column-time">2012-07-11 08:50</div>
						</li>
						
						<li class="row filelist-item clearfix" data-path="/音乐/" data-password="" data-date="2012-07-11 08:50" data-shorturl="" data-url="" data-link="" data-title="音乐" data-type="folder" data-nid="1341967851171264" f-index="15">
							<div class="column column-checkbox">
							<label></label>
							</div>
							<div class="column column-name" title="音乐 创建时间: 2012-07-11 08:50">
							<span class="ico ico-musicfolder"></span>
							<span class="text">音乐</span>
							</div>
							<div class="column column-size"> </div>
							<div class="column column-time">2012-07-11 08:50</div>
						</li>
						
						<li class="row filelist-item clearfix" data-path="/iqenergyApp.rar" data-password="" data-extract-status="" data-file-suffix="rar" data-scid="8" data-shorturl="" data-url="" data-link="" data-preview="" data-fhash="22398a794aa83960038c8f23a118f44b2956834e" data-date="2013-04-30 22:54" data-title="iqenergyApp.rar" data-size="10.4MB" data-ori-size="10874002" data-type="file" data-nid="13673339152510618" f-index="18">
							<div class="column column-checkbox">
							<label></label>
							</div>
							<div class="column column-name" title="iqenergyApp.rar 类型: 压缩文件 大小: 10.4MB 修改时间: 2013-04-30 22:54">
							<span class="ico rar ico-rar " data-imgurl=""></span>
							<span class="text">iqenergyApp.rar</span>
							</div>
							<div class="column column-size">10.4MB</div>
							<div class="column column-time">2013-04-30 22:54</div>
						</li>
						
						<li class="row filelist-item clearfix" data-path="/欢迎使用360云盘.doc" data-password="" data-extract-status="" data-file-suffix="doc" data-scid="4" data-shorturl="" data-url="" data-link="" data-preview="" data-fhash="d3edb38dc7ad3c9597e4d837e8d10cf9c96cb64b" data-date="2012-07-11 08:50" data-title="欢迎使用360云盘.doc" data-size="205.5KB" data-ori-size="210432" data-type="file" data-nid="1341967851171285" f-index="19">
							<div class="column column-checkbox">
							<label></label>
							</div>
							<div class="column column-name" title="欢迎使用360云盘.doc 类型: Word文档 大小: 205.5KB 修改时间: 2012-07-11 08:50">
							<span class="ico ico-doc" data-imgurl=""></span>
							<span class="text">欢迎使用360云盘.doc</span>
							</div>
							<div class="column column-size">205.5KB</div>
							<div class="column column-time">2012-07-11 08:50</div>
						</li>
					</ul>
				</div>
			</div>
			
		</div>
		
		<div id="loadingMask" style="display: none; opacity: 0;">
			<div></div>
			<span>加载文件列表中...</span>
		</div>
		
	</div>
</body>
</html>