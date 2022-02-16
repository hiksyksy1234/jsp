<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
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
		 
	  }) //form  
  
        //ajax를 이용해서 날짜의 최대값과 최소값을 구해 input태그를 작성합니다.
    	 $.ajax({
    		 url:"${pageContext.request.contextPath}/termminmax.emp",
    		 dataType:"json",
    		 success:function(rdata){
    			 $("input").attr("min", rdata.min);
    			 $("input").attr("max", rdata.max);
    		 }
    		 
    	 });
     })
</script>
<script>

  </script>
</head>
<body>
   <%--
           조회기간 날짜를 반드시 입력합니다. 
      select * from emp where hiredate between ? and ? 
    --%>
    
	
	<div class='container'>
		<form action="${pageContext.request.contextPath}/term.emp"  method="post">
			<table class="table">
			<tr>
		      <th>조회기간</th>
		      <td><input type="date" name="startday"   required></td>
		      <td>~</td>
		      <td><input type="date" name="endday"    required></td>
		    </tr>
		    <tr>
		      <td colspan="4"><button type="submit" class="btn btn-primary">검색</button></td>
		    </tr>  
			</table>
		</form>
	</div>
</body>
</html>