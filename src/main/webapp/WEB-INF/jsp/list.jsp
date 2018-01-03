<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
#bookTable
  {
  font-family:"Trebuchet MS", Arial, Helvetica, sans-serif;
  width:100%;
  border-collapse:collapse;
  }

#bookTable td, #bookTable th 
  {
  font-size:1em;
  border:1px solid #98bf21;
  padding:3px 7px 2px 7px;
  }

#bookTable th 
  {
  font-size:1.1em;
  text-align:left;
  padding-top:5px;
  padding-bottom:4px;
  background-color:#A7C942;
  color:#ffffff;
  }

</style>
<script src="//cdn.bootcss.com/jquery/3.2.1/jquery.min.js" type="text/javascript"></script>

<script type="text/javaScript">
function getDetail(){
  var id = document.getElementById("bookId").innerText;  
  var url="http://localhost:8080/seckill/book/"+id+"/detail";
  window.location.href= url;
  $.ajax ({  
    type: "get",
    url: url
   
 });  
}
function getAppointment(id){ 
   // var id = document.getElementById("bookId").innerText;
	var url="http://localhost:8080/seckill/book/"+id+"/appoint?studentId=10000000";
	
	$.ajax ({  
	  type: "post",
	  url: url,
	  success: function(res) {
	
	      if (res.success == true) {
	       alert(res.data.bookId + res.data.stateInfo)    
	      } 
	      
	  }
 
});  
}
</script>
<title>Book List</title>
</head>
<body>

	<table id="bookTable">
		<tr>
			<th >图书ID</th>
			<th >图书名称</th>
			<th >馆藏数量</th>
			<th> 操作</th>
		</tr>
		<c:forEach items="${list}" var="book" varStatus="status">
		   <tr>
				<td ><span id="bookId"><c:out value="${book.bookId}"></c:out> </span>
				</td>
				<td > <c:out value="${book.name}"></c:out>
				</td>
				<td ><c:out value="${book.number}"></c:out>
				</td>	
				<td>
				<input type="button" value="详情" id="detail" onclick="window.location.href='http://localhost:8080/seckill/book/${book.bookId}/detail'"></input>
				<input type="button" value="预约" id="appointment" onclick="getAppointment(${book.bookId})"></input> 
				</td>
			</tr>		
		</c:forEach>
	</table>
</body>
</html>