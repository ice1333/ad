 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <style>
 	.bbs .list span.comment{color:#999; font-size:12px !important; font-weight:normal !important;}
 </style>

 <table class="list">
    <colgroup>
        <col width="80px" />
        <col width="*" />
        <col width="100px" />
        <col width="100px" />
    </colgroup>
    <tbody>
		<c:if test="${empty list}"> 
            <tr>
                <td class="first" colspan="4">등록된 댓글이 없습니다.</td>
            </tr>
		</c:if>

                     <c:if test="${!empty list}">   
                     	<c:forEach var="vo" items="${list}" >     
                       <tr>
                           <td>${vo.c_no}</td>
                           <td class="txt_l" style="text-align:left;">
                               ${vo.content}
                               <a href="javascript:godel2(${vo.c_no});">[삭제]</a>
                           </td>
                           <td class="writer">
                              	${vo.a_no}
                           </td>
                           <td class="date"><fmt:formatDate value="${vo.regdate}" pattern="yyyy-MM-dd"/></td>
                       </tr>
                     	</c:forEach>
                     </c:if>
                     
                     
                </tbody>
             </table>