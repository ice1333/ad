<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ include file="/WEB-INF/view/admin/include/headHtml2.jsp" %>
</head>

<body>
    <div class="wrap">
    
    <%@ include file="/WEB-INF/view/admin/include/top.jsp" %>
        	<div class="sub">
	            <div class="size">
	            	<div class="con_tit">
	                	<h3 class="sub_title">광고 문의</h3>
	                </div>
	                <div class="bbs">
						<p1></p1>
	                    <div class="view">
	                        <div class="title">
	                            <dl>
	                                <dt>${num.aq_title}</dt>
	                                <dd class="date">${num.aq_regdate}</dd>
	                            </dl>
	                        </div>
	                        <div class="cont"><p>${num.aq_contents}</p> </div>
	                        <dl class="file">
	                            <dt>첨부파일 </dt>
	                            <dd>
	                            <a href="/project/common/download.jsp?path=/upload/&org=${num.aq_filename_org}&real=${num.aq_filename_real}" 
	                            target="_blank">${num.aq_filename_org} </a></dd>
	                        </dl>
	                       
	                        </div>
	                        <div class="btnSet clear">
	                            <div class="fl_l">
	                          <a href="adqnaindex.do" class="btn">목록</a>
	                          <a href="javascript:del();" class="btn">삭제</a>
	                          	</div>
	                        </div>
	                		<div>
	                			
			                    <form method="post" name="frm" id="frm" action="" enctype="multipart/form-data" >
			                    <input type="hidden" name="tablename" value="adqna">
			                    <input type="hidden" name="a_no" value="${vo.a_no }">
			                    <input type="hidden" name="boardno" value="${vo.adqna_no}">
			                    <input type="hidden" name="u_no" value="${userInfo.userno }">
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
							
			                    <div id="commentArea"></div>
			                   
                    		</div>
	                    </div>
	                    
	                </div>
	            </div>
	           
        </div>
    
</body>
</html>