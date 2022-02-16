<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
   <%-- 
           조회 조건 : 맵에 저장시 <String, Object>형으로 사용
      1.  입력 없는 상태에서 검색을 클릭한 경우
          select * from emp;
      
      2.  조회 기간만 입력한 경우
          select * from emp WHERE hiredate between ? and ? 
      
      3.  부서번호만 입력한 경우
          select * from emp WHERE deptno=? 
      
      4.  조회 기간과 부서번호를 입력한 경우
          select * from emp WHERE hiredate between ? and ? and deptno=?      
             
    --%>
	<form action="${pageContext.request.contextPath}/term5.emp" method="post">
		<label>조회 기간</label><br> 
		<input type="date" name="startday"  min="1980-01-01" max="1987-12-31"> 
		~<input type="date" name="endday"  min="1980-01-01" max="1987-12-31"><br>
		<label>부서번호</label><br> 
		<select name="deptno">
		 <option value="">부서번호를 선택하세요</option>
		 <option value="10">10</option>
		 <option value="20">20</option>
		 <option value="30">30</option>
		 <option value="40">40</option>
		 </select>
		<input type="submit" value="검색">
	</form>
</body>
</html>