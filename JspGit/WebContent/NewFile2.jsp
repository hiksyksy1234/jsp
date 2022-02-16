<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>조회기간</title>
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
   <%-- 1. 날짜를 입력하지 않고 검색을 클릭한 경우에는 where절 실행하지 않도록 합니다.
           select *
		   from emp
		
		2. 날짜를 입력하는 경우
		    select * from emp 
            where hiredate between ? and ? 
            
         
    --%>
   <div class='container'>
	<form action="${pageContext.request.contextPath}/term2.emp"  method="post">
		<table class="table">
			<tr>
		      <th>조회기간</th>
		      <td><input type="date" name="startday"  min="1980-01-01" max="1987-12-31"></td>
		      <td>~</td>
		      <td><input type="date" name="endday"   min="1980-01-01" max="1987-12-31"></td>
		    </tr>
		    <tr>
		      <td colspan="4"><button type="submit" class="btn btn-primary">검색</button></td>
		    </tr>  
			</table>
	</form>
 </div>
</body>
</html>







