<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
	<script type="text/javascript" src="/resource/js/jquery-3.2.1.js"></script>
	<script type="text/javascript" src="/resource/js/jquery.validate.js" ></script>
	<script type="text/javascript" src="/resource/js/localization/messages_zh.js"></script>
</head>
<style>
	
	.error{
		color:red;
	}
	
</style>


<body>
	<form id="form" action="add" method="post">
	<table>
		<tr><td>名称</td><td><input type="text" id="name" name="name" 
		  required="true"    remote="check" ></td></tr>
		
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
		
		<tr><td>时间</td><td><input type="Date" name="createDate"> </td></tr>
		
		<tr><td>商家</td><td>
			<c:forEach items="${shops}" var="shop" >
				&nbsp;&nbsp; &nbsp; <input type="checkbox" name="shopIdArr" value="${shop.id}">
					${shop.name}
			</c:forEach>
		</td></tr>
		<tr> <td><button > 提交 </button></td><td>
		  <input type="button" onclick="ajaxcommit()" value="ajax提交">  
		</td></tr>
	</table>
	</form>
	<script type="text/javascript">
		$(function(){
			$("#form").validate({
				rules:{
					
				},
				messages:{
					name:{
						remote:"这个字段内容重复了",
						required:"大哥，这个字段你得填上啊"
					}	
				}
			});
		})
		
		function ajaxcommit(){
			// 手动校验
			var checked = $("#form").valid();
			alert(checked)
			if(!checked){
				alert('校验不通过')
				return;
				
			}else{
				alert('校验通过，即将提交看数据');
				
			}
			
			
		}
	</script>
</body>
</html>