<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<title>이름 검색</title>
</head>
<body>
   <%-- 
           select * from emp
           where ename like '%' || #{search_word} || '%'   
             
    --%>
	<form action="${pageContext.request.contextPath}/like.emp" method="post">
		<label>name</label> 
		<input type="text" name="name"  required> 
		<input type="submit" value="검색">
	</form>
</body>
</html>