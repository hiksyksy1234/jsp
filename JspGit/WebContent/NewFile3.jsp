<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<title>조회기간/부서번호</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <style>
    .container{width:600px}
    th{width:10%}
    body > div > form > table > tbody > tr:nth-child(1) > td:nth-child(3){text-align:center;width:10%}
    input{width:100%}
  </style>
 <script>
  $(function(){
	   $('form').submit(function(){
		  start = $('input:eq(0)').val();
		  end = $('input:eq(1)').val();
		  if(!start && end){
			  alert('시작날짜를 선택하세요')
			  return false;
		  }else if(start && !end){
			  alert('끝날짜를 선택하세요')
			  return false;
		  }else  if(start>end){
			  alert('시작날짜를 확인해주세요');
			  return false;
		  }
		 
	  })   
  })
</script>
</head>
<body>
   <%-- 
          조회 조건 : 맵에 저장시 <String, String>형으로 사용
      1.  입력 없는 상태에서 검색을 클릭한 경우
          select * from emp;
      
      2.  조회 기간만 입력한 경우
          select * from emp WHERE hiredate between ? and ? 
      
      3.  부서번호만 입력한 경우
          select * from emp WHERE deptno=? 
      
      4.  조회 기간과 부서번호를 입력한 경우
          select * from emp 
          WHERE hiredate between ? and ? 
          and   deptno=?      
    --%>
    <div class='container'>
		<form action="${pageContext.request.contextPath}/term3.emp" method="post" >
		  <table class="table">
		    <tr>
		      <th>조회기간</th>
		      <td><input type="date" name="startday"  min="1980-01-01" max="1987-12-31"></td>
		      <td>~</td>
		      <td><input type="date" name="endday"   min="1980-01-01" max="1987-12-31"></td>
		    </tr>
		    
		    <tr>
		        <th>부서번호</th>
			    <td colspan="3">
			      <select name="deptno" class="custom-select">
					 <option value="">부서번호를 선택하세요</option>
					 <option value="10">10</option>
					 <option value="20">20</option>
					 <option value="30">30</option>
					 <option value="40">40</option>
				  </select>
				</td> 
		  </tr>
		  <tr>
		    <td colspan="4"><button type="submit" class="btn btn-primary">검색</button></td>
		  </tr>  
		  </table>		  
		</form>
	 </div>
</body>
</html>