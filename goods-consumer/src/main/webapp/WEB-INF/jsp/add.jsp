<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="add" method="post">
	<table>
		<tr><td>名称</td><td><input type="text" name="name"></td></tr>
		
		<tr><td>地址</td>
			<td> <select name="address">
					<c:forEach items="${addresses}"  var="item" >
						<option value="${item}">${item}</option>
					</c:forEach>
				</select>
			</td>
		</tr>
		
		<tr><td>类别</td><td>
			 <select name="category">
					<c:forEach items="${categories}"  var="item" >
						<option value="${item}">${item}</option>
					</c:forEach>
				</select>
		</td></tr>
		
		<tr><td>时间</td><td></td></tr>
		
		<tr><td>商家</td><td>
			<c:forEach items="${shops}" var="shop" >
				&nbsp;&nbsp; &nbsp; <input type="checkbox" name="shopIdArr" value="${shop.id}">
					${shop.name}
			</c:forEach>
		</td></tr>
		<tr> <td><button > 提交 </button></td><td></td></tr>
	</table>
	</form>
</body>
</html>