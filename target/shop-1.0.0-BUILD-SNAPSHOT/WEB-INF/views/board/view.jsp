<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>
	<link href="${path}/css/reset.css" rel="stylesheet">
	<link href="${path}/css/common.css" rel="stylesheet">
	<%@ include file="../inc/head.jsp" %>
</head>
<style>
.con_form_wrap{margin-top: 50px; border-radius: 30px; border: 2px solid #1f75b0; width: 980px; margin: auto;}
.board_tbody {width: 980px; }
.board_tbody tr > * {padding: 20px 10px;}
.board_tbody tr:first-child > * {border-bottom: 1px solid #555;}
.board_tbody tr:first-child input {width: 500px; height: 30px;}
.board_tbody tr:first-child th {width: 100px;}
.board_tbody tr:first-child td {width: 880px;}
.board_tbody textarea {resize: none;}
.board_form_bt {margin-top: 40px;}

.board_form_bt {margin-top: 40px;}
.board_button_wrap {width: 800px; height: 50px; margin: auto;}
.board_button_wrap button {width: 200px; height: 100%; background: #1f75b0; border: 0; color: #fff; margin-right: 90px;}
.board_button_wrap a {color: #fff; font-size: 18px;}
.board_button_wrap button:last-child {margin: 0;}
.board_button_wrap span {font-size: 18px;}
</style>
<body>
<div class="wrap">
	<div class="wrapper">
	<%@ include file="../inc/header.jsp" %>
	<div class="con_form_wrap">
        
            <table class="table" id="lst_tb">
                <tbody class="board_tbody">
                    <tr>
                        <th class="item1">제목</th>
                        <td colspan="5">
                            ${board.btit }
                        </td> 
                    </tr>
                    <tr>
                        <th class="item2">작성자</th>
                        <td>${board.bname }</td>
                        <th class="item2">작성일 : <fmt:formatDate value="${board.regdate }" pattern="yyyy-MM-dd" /></th>
                    </tr>
                    <tr>
                        <th class="item3"></th>
                        <td colspan="5">
                            <textarea name="note" cols="100" rows="40" readonly>${board.bnote }</textarea>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="5">
                            <div class="board_form_bt">
                                <div class="board_button_wrap">
                                	<c:if test="${sid=='admin' }">
	                                	<button type="">
											<span><a href="${path }/board/updateForm?bno=${board.bno }">글 수정</a></span>
										</button>
										<button type="">
											<span><a href="${path }/board/delete?bno=${board.bno }">글 삭제</a></span>
										</button>
									</c:if>
                                    <button type="">
                                        <a href="${path }/board/list">글 목록</a>
                                    </button>
                                </div>
                            </div>
                        </td>
                    </tr>	
                </tbody>
            </table>
        
    </div>
	<%@ include file="../inc/footer.jsp" %>
	</div>
</div>
</body>
</html>