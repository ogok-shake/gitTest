<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="t"		uri="http://tiles.apache.org/tags-tiles"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><t:getAsString name="title"/></title>
</head>
<body>
<!-- 
<div>
<span><c:out value="${dialog}"/></span>
</div>
<div>
<span><c:out value="${question}"/></span>
</div>
<div>
<button><c:out value="${answer1}"/></button>
<button><c:out value="${answer2}"/></button>
</div>
<div>
<button><img alt="이전" src="<c:url value='/resources/img/img_before.png'/>"></button>
<button><img alt="이후" src="<c:url value='/resources/img/img_after.png'/>"></button>
</div>
 -->
 
 	<table>
		<tr>
			<td>
					<t:insertAttribute name="header"/>
			</td>
		</tr>
		<tr>
			<td>
					<t:insertAttribute name="content"/>
			</td>
		</tr>
		<tr>
			<td>
					<t:insertAttribute name="footer"/>
			</td>
		</tr>

	</table>
</body>
</html>