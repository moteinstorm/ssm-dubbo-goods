<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>列表展示</title>

<link type="text/css" rel="styleSheet"
	href="${pageContext.request.contextPath}/resource/css/bootstrap.min.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resource/js/jquery-3.2.1.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resource/js/bootstrap.min.js"></script>


</head>
<body>
<div class="container">
	<div>
		<form action="${pageContext.request.contextPath}/studentList">
			学生姓名：<input type="text" name="name" value="${student.name}">
			<button class="btn btn-info">查询</button>
		</form>
		<a href="toAdd" class="btn btn-info">添加</a>

		<button class="btn btn-info" onclick="deleteByid()">批删</button>
		<table class="table">
			<thead>
				<tr>
					<th><input type="checkbox" id="ck"></th>
					<th>学号</th>
					<th>学生名称</th>
					<th>年龄</th>
					<th>班级</th>
					<th>操作</th>
				</tr>
			</thead>
			<c:forEach items="${pageInfo.list}" var="entity" varStatus="i">
				<tbody>
					<tr>
						<td><input type="checkbox" class="cbk" value="${entity.id}">
						<td>${i.index+1}</td>
						<td>${entity.name}</td>
						<td>${entity.age}</td>
						<td>${entity.cnames}</td>
						<td><a href="toUpdate?id=${entity.id}" class="btn btn-info">修改</a>
							<a href="toDetail?id=${entity.id}" class="btn btn-info">详情</a></td>
					</tr>

				</tbody>
			</c:forEach>
		</table>
		<div>
			<nav>
				<ul class="pagination">

					<c:if test="${pageInfo.pageNum>1}">
						<li class="page-item"><a class="page-link"
							href="${pageContext.request.contextPath}/studentList?page=${pageInfo.pageNum-1}&name=${name!=null?name:''}">prePage</a>
						</li>
					</c:if>
					<c:forEach var="page" items="${pageInfo.navigatepageNums }">
						<li class="page-item ${pageInfo.pageNum==page?'active':''}">
							<a class="page-link"
							href="${pageContext.request.contextPath}/studentList?page=${page}&name=${name!=null?name:''}">${page}</a>
						</li>
					</c:forEach>

					<c:if test="${pageInfo.pageNum<pageInfo.pages}">
						<li class="page-item"><a class="page-link"
							href="${pageContext.request.contextPath}/studentList?page=${pageInfo.pageNum+1}&name=${name!=null?name:''}">nextPage</a>
						</li>
					</c:if>

				</ul>
			</nav>
		</div>
	</div>

</div>
</body>
<script type="text/javascript">
	$(function() {

		$("#ck").click(function() {
			$(".cbk").prop('checked', this.checked);
		});
	})
	$(function(){
		$("#ck").click(function(){
			$(".cbk").prop('checked',this.checked)
		});
	})
	function deleteById(){
		var ids=$(".cbk:checked").map(function(){
			return this.value;
		}).get().join(",")
	}

	

	function deleteByid() {
		var ids = $(".cbk:checked").map(function() {
			return this.value;
		}).get().join(",");
		alert(ids)
		if (ids != "") {
			$.ajax({
						type : "post",
						url : "${pageContext.request.contextPath}/deleteById",
						data : {ids : ids},
						success : function(obj) {
							if (obj) {
								alert("删除成功");
								location.href = "${pageContext.request.contextPath}/studentList";
							} else {
								alert("删除失败")
							}
						}
					})
		} else {
			alert("请先选中数据在删除");
		}
	}
</script>
</html>