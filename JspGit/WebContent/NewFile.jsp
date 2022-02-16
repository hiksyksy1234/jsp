<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>조회기간</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <style>
    .container{width:600px}
    th{width:10%}
    body > div > form > table > tbody > tr:nth-child(1) > td:nth-child(3){text-align:center;width:10%}
    input{width:100%}
  </style>
</head>
<body>
   <%--
            조회기간 날짜를 반드시 입력합니다. 
      select * from emp 
      where hiredate between ? and ? 
    --%>
    <%-- javax.servlet.jsp.JspException cannot be resolved to a type 에러 발생시
         프로젝트 우 클릭 -> 속성 ->  Targeted Runtimes 에서 서버 선택--%>
	<div class='container'>
		<form action="${pageContext.request.contextPath}/term.emp"  method="post">
			<table class="table">
			<tr>
		      <th>조회기간</th>
		      <td><input type="date" name="startday"  min="1980-01-01" max="1987-12-31" required></td>
		      <td>~</td>
		      <td><input type="date" name="endday"   min="1980-01-01" max="1987-12-31" required></td>
		    </tr>
		    <tr>
		      <td colspan="4"><button type="submit" class="btn btn-primary">검색</button></td>
		    </tr>  
			</table>
		</form>
	</div>
</body>
</html>



