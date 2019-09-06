<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="styleSheet"
	href="${pageContext.request.contextPath}/resource/vendor/bootstrap/css/bootstrap.min.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resource/vendor/jquery/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resource/vendor/bootstrap/js/bootstrap.min.js"></script>

<script type="text/javascript">
	$(function() {
				$.ajax({
					type : "get",
					url : "getList",
					success : function(ret) {
						for (var i = 0; i < ret.length; i++) {
							$("#channel_select").append(
									"<option value='"+ret[i].cid+"'>"
											+ ret[i].cname + "</option")
						}
					}

				})
			})

</script>


</head>

<form action="">
	<div class="from-group">
		<input type="hidden" name="id" value="${student.id }"> <label
			for="name">学生姓名</label> <input type="text" id="name" name="name"
			value="${student.name}" class="form-control" disabled="disabled">
	</div>

	<div class="from-group">
		<label for="age">学生年龄</label> <input type="text" id="age"
			value="${student.age}" name="age" class="form-control" disabled="disabled">
	</div>

	<div>
		<label for="names">班级</label> <select name="cid" id="channel_select" disabled="disabled"></select>
	</div>

	<button class="btn  btn-info" type="button" onclick="history.go(-1)">返回</button>
</form>



<body>