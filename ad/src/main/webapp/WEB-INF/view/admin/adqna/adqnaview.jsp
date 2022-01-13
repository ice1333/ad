<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<script>

function del(){
	if(confirm("삭제하시겠습니까?")){
	/* location.href="delete.do?boardno=${data.boardno}"; */
	$.ajax({
		url: 'deleteAjax.do',
		data:{boardno:${data.boardno}},
		success:function(res){
			if(res.trim() == '1'){
			alert('정상적으로 삭제되었습니다.');
			location.href="index.do";
			} else{
				alert('삭제 오류');
			}
		}
	});

	}
}	

/* function goSave(){
	$.ajax({
		url:'/project/comment/insert.do',
		type:'post',
		data:$("#frm").serialize(), // serialize() 값을 넣어준다
		success:function(res){
			if(res.trim()=='1'){
				alert("댓글이 등록되었습니다."); //댓글이 등록되었을때
				$("#content").val("");
				commentList('board',${data.boardno});
			}else{
				alert('댓글등록 오류');
			}
		}
	})
}
function commentList(tablename, boardno){
$.ajax({
	url:'/project/comment/list.do',
	data:{tablename:tablename, boardno:boardno},
		success:function(res) {
			$("#commentArea").html(res);
		}
	})
}
$(function(){ //페이지가 열리자마자
	commentList('board',${data.boardno});
})
function goDel(c_no){
	if(confirm('댓글을 삭제하시겠습니까?')){
		$.ajax({
			url:"/project/comment/delete.do",
			data:{c_no:c_no},
			success:function(res){
				if(res.trim()=='1'){
					alert('정상적으로 삭제되었습니다.');
					commentList('board', ${data.boardno});
				} else {
					alert('삭제 오류');
				}
			}
		})
	}
} */

</script>
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