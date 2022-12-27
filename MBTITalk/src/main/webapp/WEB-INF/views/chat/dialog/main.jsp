<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

</head>
<style>
#backGround{
	width:1040px;
	height:500px;
	background-color:black;
}
@keyframes fall {
	from {
	
	}
	to{
		transform: translateY(100vh);
		opacity:0;
	}
}
.snowflake{
	width:8px;
	height:8px;
	border-radius:50%;
	background-color:white;
	position:absolute;
	top:-8px;
	animation:fall 10s linear;
}



</style>
<script type="text/javascript">

/*
function goLogin(){
	
	$("#frmCode").attr("action", "DelDataProc.do?ListNo="+ListNo).submit();
	
}

$(document).ready(function(){
	
	$("#loginBtn").on("click", function(){
		//로그인 화면으로 이동
	});
	
});
*/
	const div=document.getElementById("#backGround");
	
	const MIN_DURATION=10;
	
	function makeSnowFlake(){

		const snowflake=document.createElement("div");
		const delay = Math.random()*10;
		const initialOpacity=Math.random();
		const duration=Math.random()*20+MIN_DURATION;
		
		snowflake.classList.add("snowflake");
		snowflake.style.left=Math.random()*1040+'px';
		snowflake.style.animationDelay=delay+'s';
		snowflake.style.opacity=initialOpacity;
		snowflake.style.animation='fall '+duration+'s linear';
		console.log('div',div);
		console.log('snowflake',snowflake);
		div.appendChild(snowflake);
		
		setTimeout(()=>{
			div.removeChild(snowflake);
		},(duration+delay)*1000);
		
	}
	
	makeSnowFlake();
	for(let index=0;index<50;index++){
		setTimeout(makeSnowFlake,500*index);
	}

</script>
<div id="backGround">

<!-- 
<form id="dataForm" name="dataForm" method="post" action="<c:url value=''/>">

	<table>
	<tr>
		<td>
			<c:out value="${gameTitle}"/>
		</td>
	</tr>
	<tr>
		<td>
			<c:out value="${subTitle}"/>
		</td>
	</tr>
	<tr>
		<td>
		<button id="loginBtn"><c:out value="로그인"/></button>
		</td>
	</tr>
	</table>

</form>
 -->
</div>
</html>