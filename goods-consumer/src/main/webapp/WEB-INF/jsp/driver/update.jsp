<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="/resource/js/jquery-3.2.1.js">
	
</script>
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<td>编号</td>
			<td><input name="nums" value="${driver.nums}"> </td>
		</tr>
		<tr>
			<td>姓名</td>
			<td><input name="name" value="${driver.name}"> </td>
		</tr>
		<tr>
			<td>省</td>
			<td>
				<select id="shengid" name="shengid" onchange="change($(this), '#shiid')">
					
				</select>
			</td>
		</tr>
		<tr>
			<td>市</td>
			<td>
				<select id="shiid" name="shiid" onchange="change($(this), '#quid')">
					
				</select>
			</td>
		</tr>
		<tr>
			<td>区</td>
			<td>
				<select id="quid" name="quid">
					
				</select>
			 </td>
		</tr>
		<tr>
			<td>发布日期</td>
			<td><input name="pushDate" value="${driver.pushDate}"> </td>
		</tr>
	</table>
	<script type="text/javascript">
		
		function change(chgObject,subObjectId){
			if(chgObject=="sheng"){
				parentId=0;
			}else{
				parentId = chgObject.val();
			}
			alert(" parentId: " + parentId);
			$.post("arealist",{parentId:parentId},function(areas){
				$(subObjectId).empty();
				$(subObjectId).append("<option value='0'> 请选择 </option>" )
				for(var areaIndex in areas ){
					if(chgObject=="sheng" && areas[areaIndex].id==${driver.shengid}){
						$(subObjectId).append("<option value='"+areas[areaIndex].id+"' selected='true'> "+ areas[areaIndex].name +" </option>" )
						change($("#shengid"),"#shiid")
					}else if (subObjectId=="#shiid" && areas[areaIndex].id==${driver.shiid} ){
						$(subObjectId).append("<option value='"+areas[areaIndex].id+"' selected='true'> "+ areas[areaIndex].name +" </option>" )
						change($("#shiid"),"#quid")
					}else if (subObjectId=="#quid" && areas[areaIndex].id==${driver.quid} ){
						$(subObjectId).append("<option value='"+areas[areaIndex].id+"' selected='true'> "+ areas[areaIndex].name +" </option>" )
					}else{
						$(subObjectId).append("<option value='"+areas[areaIndex].id+"'> "+ areas[areaIndex].name +" </option>" )
					}
				}
			})
		}
		
		$(function(){
			// 填充省
			change("sheng","#shengid");
		})
		
	</script>

</body>
</html>