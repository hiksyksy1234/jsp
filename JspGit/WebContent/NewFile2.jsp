<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>��ȸ�Ⱓ</title>
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
			  alert('���۳�¥�� �����ϼ���')
			  return false;
		  }else if(start && !end){
			  alert('����¥�� �����ϼ���')
			  return false;
		  }else  if(start>end){
			  alert('���۳�¥�� Ȯ�����ּ���');
			  return false;
		  }
		 
	  })   
  })
</script>
</head>
<body>
   <%-- 1. ��¥�� �Է����� �ʰ� �˻��� Ŭ���� ��쿡�� where�� �������� �ʵ��� �մϴ�.
           select *
		   from emp
		
		2. ��¥�� �Է��ϴ� ���
		    select * from emp 
            where hiredate between ? and ? 
            
         
    --%>
   <div class='container'>
	<form action="${pageContext.request.contextPath}/term2.emp"  method="post">
		<table class="table">
			<tr>
		      <th>��ȸ�Ⱓ</th>
		      <td><input type="date" name="startday"  min="1980-01-01" max="1987-12-31"></td>
		      <td>~</td>
		      <td><input type="date" name="endday"   min="1980-01-01" max="1987-12-31"></td>
		    </tr>
		    <tr>
		      <td colspan="4"><button type="submit" class="btn btn-primary">�˻�</button></td>
		    </tr>  
			</table>
	</form>
 </div>
</body>
</html>







