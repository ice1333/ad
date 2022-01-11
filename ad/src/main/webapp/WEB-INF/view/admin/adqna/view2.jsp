<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <style>
	*{
		box-sizing:border-box;
		max-width:100%;
		margin:0;
		padding:0;
	}
	.wrap{
		width:100%;
		margin:0 auto;
		padding:50px 5px;
	}
	.sub .sub_title{
	text-align:center;
	font-size:32px;
	margin:0 0 15px 0;
	}
	h3 {
    display: block;
    font-size: 1.17em;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
	}
	p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
	}
	.sub .size {
    width: 100%;
    max-width: 1200px;
    height: auto;
    margin: 0 auto;
	}
	.size {
    position: relative;
	}
	div {
    display: block;
	}
	.bbs {
    position: relative;
    width: 100%;
    height: 100%;
    overflow: hidden;
    /* min-width: 320px; */
    clear: both;
    padding-bottom: 10px;
	}
	.bbs .view {
    width: 100%;
    border-top: 2px solid #221f1f;
	}
	.bbs .view .title > dl {
    width: 100%;
    padding: 20px;
    border-bottom: 1px solid #221f1f;
    background: #eeeff0;
	}
	.bbs .view .title > dl > dt {
    font-size: 18px;
    color: #000;
    font-weight: bold;
	}
	dl, ul, ol, menu, li {
    list-style: none;
    vertical-align: middle;
	}
	.bbs .view .title > dl > dd {
    display: inline-block;
    font-size: 14px;
    color: #999;
    margin-top: 5px;
	}
	dd {
    display: block;
    margin-inline-start: 0px;
	}
	.bbs .view .cont {
    padding: 20px;
    min-height: 200px;
    border-bottom: 1px solid #e4e4e4;
	}
	.bbs .view .file {
    padding: 10px 20px;
    overflow: hidden;
    border-bottom: 1px solid #e4e4e4;
	}
	.bbs .view .file dt {
    float: left;
    width: 80px;
    color: #999;
	}
	.btnSet {
    position: relative;
    margin: 20px 0;
    text-align: center;
    overflow: hidden;
	}
	a:link {
    color: #000;
    text-decoration: none;
	}
	.btn {
	background: url(/img/admin/btn_bg.gif) no-repeat 100% 0;
    font-size: 14px;
    text-decoration: none !important;
    white-space: nowrap;
    display: inline-block;
    vertical-align: baseline;
    position: relative;
    cursor: pointer;
    padding: 4px 20px;
    min-width: 64px;
    border: 2px solid #221f1f;
    margin: 0 2px;
    text-align: center;
    font-weight: bold;
    border-radius: 5px;
	}
	table {
    width: 100%;
    border-collapse: collapse;
	}
	.board_write {
    border-top: 2px solid #221f1f;
    border-bottom: 1px solid #999;
	}
	table{
	display: table;
    border-collapse: separate;
    box-sizing: border-box;
    text-indent: initial;
    border-spacing: 2px;
    border-color: grey;
	}
	.board_write td {
    padding: 10px;
    border-bottom: 1px solid #ebebeb;
    font-size: 15px;
    color: #2f3134;
    font-weight: 300;
    box-sizing: border-box;
	}
	.board_write tr:last-child th, .board_write tr:last-child td {
    border-bottom: 1px solid #dadada;
	}
	td {
    display: table-cell;
    vertical-align: inherit;
	}
	.board_write td textarea {
    width: 100%;
    height: 200px;
    box-sizing: border-box;
	}
	.bbs .list {
    border-collapse: collapse;
    border-spacing: 0;
    box-sizing: border-box;
	}
	.bbs .list td {
    text-align: center;
    padding: 8px 10px;
    border-bottom: 1px solid #d9d9d9;
	}
	.bbs .list td.txt_l{
		text-align: left;
	}
	p1{
	margin:0;
	display: block;
    border-bottom: 2px solid #000000;
	}

	</style>
<%@include file="/WEB-INF/view/admin/include/headHtml.jsp"%>
</head>
<body>
    <div class="wrap">
        
        	<div class="sub">
	            <div class="size">
	                <h3 class="sub_title">광고 문의</h3>
	                <div class="bbs">
						<p1></p1>
	                    <div class="view">
	                        <div class="title">
	                            <dl>
	                                <dt>${data.title }</dt>
	                                <dd class="date">${data.regdate}</dd>
	                            </dl>
	                        </div>
	                        <div class="cont"><p>${data.content }</p> </div>
	                        <dl class="file">
	                            <dt>첨부파일 </dt>
	                            <dd>
	                            <a href="/project/common/download.jsp?path=/upload/&org=${data.filename_org}&real=${data.filename_real}" 
	                            target="_blank">${data.filename_org} </a></dd>
	                        </dl>
	                       
	                        </div>
	                        <div class="btnSet clear">
	                            <div class="fl_l">
	                          <a href="index.do" class="btn">목록</a>
	                          <a href="edit.do?replyno=${data.replyno }" class="btn">수정</a>
	                          <a href="javascript:del();" class="btn">삭제</a>
	                          	</div>
	                        </div>
	                		<div>
	                			<c:if test="${!empty userInfo}">
			                    <form method="post" name="frm" id="frm" action="" enctype="multipart/form-data" >
			                    <input type="hidden" name="tablename" value="reply">
			                    <input type="hidden" name="boardno" value="${data.replyno}">
			                    <input type="hidden" name="userno" value="${userInfo.userno }">
			                        <table class="board_write">
			                            <colgroup>
			                                <col width="*" />
			                                <col width="100px" />
			                            </colgroup>
			                            <tbody>
			                            <tr>
			                                <td>
			                                    <textarea name="content" id="content" style="height:50px;"></textarea>
			                                </td>
			                                <td>
			                                    <div class="btnSet"  style="text-align:right;">
			                                        <a class="btn" href="javascript:goSave();">저장 </a>
			                                    </div>
			                                </td>
			                            </tr>
			                            </tbody>
			                        </table>
			                        </form>
								</c:if>
			                    <div id="commentArea"></div>
			                   
                    		</div>
	                    </div>
	                    
	                </div>
	            </div>
	        </div>
        
    
</body>
</html>