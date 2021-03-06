<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<style>
	*{
		margin:0px;
		padding:0px;
	}
#container #content .con_tit {
    width: 99%;
    height: 56px;
    padding: 0px;
	margin: 0 auto;
	margin-top:15px;
    background: url(/project/img/admin/con_tit_bg.gif) repeat-x left top;
}
h3{
	text-align: center;
    font-size: 32px;
    margin: 0 0 15px 0;
}
#canvas {
    position: relative;
    width: 100%;
    height: 100%;
    z-index: 100;
    color: #2d2f34;
    min-width: 1000px;
    margin-bottom: 0 0 50px 0;
}
#container #content .con {
    position: relative;
    width: 96%;
    min-width: 960px;
    padding: 20px 2%;
}
p {
    display: block;
	border-bottom:2px solid #000000;
    /* margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px; */
}
#bbs {
    position: relative;
    margin-bottom: 50px;
    padding: 0;
    width: 100%;
    color: #5e5e5e;
}
#bbs #blist table {
    position: relative;
    width: 100%;
    border-top: #4a4b4f 2px solid;
    color: #53728b;
    font-size: 11px;
}
table {
    border-collapse: collapse;
    border-spacing: 0;
    border: 0;
}
table {
    display: table;
    border-collapse: separate;
    box-sizing: border-box;
    text-indent: initial;
    white-space: normal;
    line-height: normal;
    font-weight: normal;
    font-size: medium;
    font-style: normal;
    color: -internal-quirk-inherit;
    text-align: start;
    border-spacing: 2px;
    border-color: grey;
    font-variant: normal;
	border:0;
}
#bbs #blist table .first {
    background-image: none !important;
}
#bbs #blist table thead th {
    position: relative;
    padding: 13px 2px;
    border-bottom: 1px solid #ccced0;
    font-size: 12px;
    background: url(/project/img/admin/blist_td_line.gif) repeat-y;
}
#bbs #blist table thead {
    width: 100%;
    color: #797979;
    background: #eeeff0;
}
#bbs #blist table {
    position: relative;
    width: 100%;
    border-top: #4a4b4f 2px solid;
    color: #53728b;
    font-size: 11px;
}
th {
    display: table-cell;
    vertical-align: inherit;
    font-weight: bold;
    text-align: -internal-center;
}
input[type="checkbox"] {
    width: 14px;
    height: 25px;
    vertical-align: middle;
}
input, textarea, select {
    font-family: inherit;
    font-size: inherit;
    font-weight: inherit;
}
input:not([type="image" i]) {
    box-sizing: border-box;
}
input[type="checkbox" i] {
    background-color: initial;
    cursor: default;
    appearance: auto;
    box-sizing: border-box;
    margin: 3px 3px 3px 4px;
    padding: initial;
    border: initial;
}
input[type="checkbox"] {
    width: 14px;
    height: 25px;
    vertical-align: middle;
}
input[type="text"] {
    font-size: 12px;
    color: #2e2e2e;
    height: 25px;
    border: 1px solid #cccccc;
    padding: 2px 0 0 3px;
}
input {
    -webkit-writing-mode: horizontal-tb !important;
    text-rendering: auto;
    color: -internal-light-dark(black, white);
    letter-spacing: normal;
    word-spacing: normal;
    line-height: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: start;
    appearance: auto;
    -webkit-rtl-ordering: logical;
}
input:not([type="image" i]) {
    box-sizing: border-box;
}
#bbs #blist table tbody td {
    padding: 13px 2px;
    text-align: center;
    background: url(/project/img/admin/blist_td_line.gif) repeat-y left top;
    border-bottom: 1px solid #cccdd0;
}
td{
    display: table-cell;
    vertical-align: inherit;
}
#bbs #blist table tbody td.title {
    text-align: left;
    padding-left: 10px;
}
#bbs .btn {
    position: relative;
    color: #797979 !important;
    overflow: hidden;
}
div {
    display: block;
}
#bbs .btn .btnLeft {
    position: relative;
    color: #797979 !important;
    float: left;
    padding: 10px 0 0 0;
    overflow: hidden;
    font-size: 11px;
    text-align: left;
    /* width: 40%; */
    height: 30px;
}
#bbs .btn .btnLeft a.btns strong {
    display: block;
    padding: 1px 8px 0 12px;
    background: url(/img/admin/btn_bg.gif) no-repeat;
    color: #797979 !important;
}
a.btns strong {
    display: block;
    padding: 1px 8px 0 12px;
    background: url(/img/admin/btn_bg.gif) no-repeat;
    color: #797979 !important;
}
strong {
    font-weight: bold;
}
#bbs .btn .btnLeft a.btns {
    display: inline-block;
    padding-right: 4px;
    background: url(/img/admin/btn_bg.gif) no-repeat 100% 0;
    font-size: 11px;
    color: #797979;
    line-height: 26px;
    word-spacing: -1px;
    text-decoration: none !important;
    white-space: nowrap;
    color: #797979 !important;
}
a:link {
    color: #6a6d6f;
    text-decoration: none;
}
a.btns {
    display: inline-block;
    padding-right: 4px;
    background: url(/img/admin/btn_bg.gif) no-repeat 100% 0;
    font-size: 11px;
    color: #797979;
    line-height: 26px;
    word-spacing: -1px;
    text-decoration: none !important;
    white-space: nowrap;
    color: #797979 !important;
}
a:-webkit-any-link {
    cursor: pointer;
}
#bbs .btn .btnRight {
    position: relative;
    color: #797979 !important;
    float: right;
    padding: 10px 0 0 0;
    overflow: hidden;
    font-size: 11px;
    text-align: right;
    /* width: 40%; */
    height: 30px;
}
#bbs .btn .btnRight a.wbtn {
    display: inline-block;
    padding-right: 4px;
    background: url(/img/admin/btn_bg.gif) no-repeat 100% 0;
    font-size: 11px;
    color: #797979;
    line-height: 26px;
    word-spacing: -1px;
    text-decoration: none !important;
    white-space: nowrap;
    color: #797979 !important
}
#bbs .btn .btnRight a.wbtn strong {
    display: block;
    padding: 0px 10px 10px 13px;
    background: url(/img/admin/btn_bg.gif) no-repeat;
    color: #797979 !important;
    
}
#bbs .page {
    position: relative;
    width: 100%;
    display: block;
    margin: 0 0 0 0px;
    padding: 20px 0 0 0;
    text-align: center;
    clear: both;
    color: #656668;
    font-size: 12px;
}
#bbs .page strong {
    position: relative;
    display: inline-block;
    padding: 5px 6px;
    text-decoration: underline;
    color: #f60029;
}
#bbs .page a {
    position: relative;
    display: inline-block;
    padding: 5px 6px;
    text-decoration: none;
    color: #656668;
}
#blist .search {
    position: relative;
    width: 100%;
    margin: 0px;
    padding: 9px 0;
    text-align: center;
    vertical-align: middle;
}
#blist .search select {
    width: 115px;
    height: 20px;
    border: 1px solid #cccccc;
    font-size: 12px;
    vertical-align: middle;
    color: #706a5f;
    margin: 0 5px 0 0;
    display: inline;
}
select {
    font-size: 12px;
    color: #2e2e2e;
    height: 18px;
    border: 1px solid #cccccc;
}
#blist .search input {
    width: 160px;
    height: 20px;
    border: 1px solid #cccccc;
    vertical-align: middle;
    display: inline;
}
#blist .search .sbtn {
    position: relative;
    width: 64px;
    height: 23px;
    top: 0px;
    left: 0px;
    border: none;
    vertical-align: bottom;
}
.page >li{
list-style:none;
position: relative;
display: inline-block;
padding: 5px 6px;
text-decoration: none;
color: #656668;
}
#now{
background-color: #221f1f;
    font-weight: bold;
}



</style>
<%@include file="/WEB-INF/view/admin/include/headHtml.jsp"%>
</head>
<body> 
<div id="wrap">
	<!-- canvas -->
	<div id="canvas">
		<!-- S T A R T :: headerArea-->
		<%@ include file="/WEB-INF/view/admin/include/top.jsp" %>
		<!-- E N D :: headerArea--> 
		
		<!-- S T A R T :: containerArea-->
		<div id="container">
			<div id="content">
				<div class="con_tit">
					<h3 class="con_title">?????? ??????</h3>
				</div>
				<!-- //con_tit -->
				<div class="con">
					<!-- ?????? : s -->
					<div id="bbs">
						<div id="blist">
							<p><span><strong>??? ${totCount}???</strong>  ${AdQnaVo.page} / ${totPage}</span></p>
							<form name="frm" id="frm" action="process.do" method="post">
							<table width="100%" border="0" cellspacing="0" cellpadding="0" summary="????????? ?????????????????????.">
								<colgroup>
									<col width="80px" class="w3" />
									<col width="80px" class="w4" />
									<col width="*" class="" />
									<col width="100px" class="w10" />
									<col width="80px" class="w5" />
									<col width="80px" class="w6" />
								</colgroup>
								<thead>
									<tr>
										<th scope="col" class="first"><input type="checkbox" name="allChk" id="allChk" onClick="check(this, document.frm.no)"/></th>
										<th scope="col">??????</th>
										<th scope="col">??????</th> 
										<th scope="col">?????????</th> 
										<th scope="col">?????????</th> 
										<th scope="col" class="last">????????????</th>
									</tr>
								</thead>
								<tbody>
								<c:if test="${empty list}">
									<tr>
		                                <td class="first" colspan="4">????????? ?????? ????????????.</td>
		                            </tr>
								</c:if>
								<c:if test="${!empty list}">
									<c:forEach var="vo" items="${list}" varStatus="status">
									<tr class="board_tr" data-adqna_no="${vo.adqna_no}" style="cursor:pointer;">
										<td class="first"><input type="checkbox" name="no" id="no" value="" /></td>
										<td>${vo.adqna_no}</td>
										<td class="title"><a href="adqnaview.do?adqna_no=${vo.adqna_no}">${vo.aq_title}</a></td>
										<td>${vo.aq_regdate }</td>
										<td>${vo.u_no}</td>
										<td class="last">${vo.aq_status}</td>
									</tr>
									</c:forEach>
								</c:if>
								</tbody>
							</table>
							</form>
							<div class="btn">
								<div class="btnLeft">
									<a class="btns" href="#" onclick=""><strong>??????</strong> </a>
								</div>
								<div class="btnRight">
									<a class="wbtn" href="write.do"><strong>????????????</strong> </a>
								</div>
							</div>
							<!--//btn-->
							<!-- ????????? ?????? -->
							<div class='page'>
								<c:forEach var="A" begin="1" end="${totPage}">
	                            <li><a href='javascript:location.href="adqnaindex.do?page=${A}";' <c:if test="${A==AdQnaVo.page}">id='now'</c:if>>${A}</a></li>
	                         </c:forEach>
							</div>
							<!-- //????????? ?????? -->
							<form name="searchForm" id="searchForm" action="adqnaindex.do"  method="post">
								<div class="search">
									<select id="stype" name="searchType" title="???????????? ??????">
										<option value="">??????</option>
										<option value="aq_title">??????</option>
										<option value="aq_contents">??????</option>
									</select>
									<input type="text" id="sval" name="searchWord" value="" title="????????? ??????" />
									<input type="image" src="/img/admin/btn_search.gif" class="sbtn" alt="??????" value="??????" title="??????" />
								</div>
							</form>
							<!-- //search --> 
						</div>
						<!-- //blist -->
					</div>
					<!-- //bbs --> 
					<!-- ?????? : e -->
				</div>
				<!--//con -->
			</div>
			<!--//content -->
		</div>
		<!--//container --> 
		<!-- E N D :: containerArea-->
	</div>
	<!--//canvas -->
</div>
<!--//wrap -->

</body>
</html>