<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>  
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:if test="${book !=null}">
        <br />  
		       图书ID   <c:out value="${book.bookId}"></c:out>  
		       图书名称     <c:out value="${book.name}"></c:out>  
		      馆藏数量      <c:out value="${book.number}"></c:out>  
  </c:if>
</body>
</html>