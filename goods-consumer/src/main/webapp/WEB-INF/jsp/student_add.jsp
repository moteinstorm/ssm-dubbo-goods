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
	function add(){
		$.ajax({
			type:"post",
			data:$("form").serialize(),
			url:"add",
			success:function(obj){
				if (obj) {
					alert("添加成功！");
					location.href="${pageContext.request.contextPath}/studentList";
				} else {
					alert("添加失败！")
				}
			}
		})
	}
	
	</script>

	
</head>

   <form action="">
         <div class="from-group">
            <label for="name">学生姓名</label>
            <input type="text" id="name" name="name" class="form-control" placeholder="请输入学生名称" >
         </div>
         
         <div class="from-group">
            <label for="created">年龄</label>
            <input type="text" id="age" name="age" class="form-control" placeholder="请输入学生年龄">
         </div>
         
         <div>
            <label for="names">班级</label>
           <select name="cid"
					id="channel_select">
					<option value="0">请选择班级:</option>
					<c:forEach var="c" items="${clazzs}">
						<option value="${c.cid}">${c.cname }</option>
					</c:forEach>
					</select>
         </div>
         <button class="btn  btn-info" type="button" onclick="add()">增加</button>
   </form>



<body>