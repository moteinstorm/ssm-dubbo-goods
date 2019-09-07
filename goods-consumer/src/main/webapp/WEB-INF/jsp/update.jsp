<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="/resource/js/jquery-3.2.1.js" ></script>
</head>

<body>
	<form action="update" method="post">
	<table>
		<input type="hidden" value="${goods.id}" name="id">
		
		<tr><td>名称</td><td><input type="text" name="name"  value="${goods.name}"></td></tr>
		
		<tr><td>地址</td>
			<td> <select name="address">
					<c:forEach items="${addresses}"  var="item" >
						<option value="${item}" 
						  <c:if test="${item==goods.address}"> selected="selected"</c:if> 
						  >${item}</option>
					</c:forEach>
				</select>
			</td>
		</tr>
		
		<tr><td>类别</td><td>
			 <select name="category">
					<c:forEach items="${categories}"  var="item" >
						<option value="${item}" <c:if test="${item==goods.category}"> selected="selected"</c:if>  >${item}</option>
					</c:forEach>
				</select>
		</td></tr>
		
		<tr><td>时间</td><td><input type="Date" name="createDate" value="${goods.createDate}"> </td></tr>
		
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
<script type="text/javascript">
	$(function(){
		// 得到被选中的那些商家的Id的数组
		var selShopIdArray = "${goods.shopIds}".split(",");
		$("[name='shopIdArr']").each(function(){
			$(this).attr("checked",false);
			for(var idIndex in selShopIdArray){
				if(selShopIdArray[idIndex]==$(this).val()){
					$(this).attr("checked",true);
					break;
				}
			}
		})
		
		
	})
</script>
</html>