<%@include file="commonHeader.jsp" %>
<%

Map<String,String> value_backup= new HashMap<String,String>();
Map<String,String> error_format = new HashMap<String,String>();

String enroll = request.getParameter("stu_enroll");
value_backup.put("enroll",enroll);

String	name = request.getParameter("stu_name");
value_backup.put("name",name);

String course = request.getParameter("course");
value_backup.put("course",course);

String branch = request.getParameter("branch");
value_backup.put("branch",branch);

String mobile = request.getParameter("stu_mob");//parsing
value_backup.put("mobile",mobile);

String email = request.getParameter("stu_email");
value_backup.put("email",email);

String sem = request.getParameter("sem");
value_backup.put("sem",sem);

String address = request.getParameter("stu_address");
value_backup.put("address",address);

try{
	Long penroll_no= Long.parseLong(enroll);
}catch(NumberFormatException e){
	error_format.put("format_error_enroll","must enter number not string"); 
}

/* if(!(error_format.isEmpty())){
	 request.setAttribute("error_format",error_format);
	 RequestDispatcher rd = request.getRequestDispatcher("register_student1.jsp");
	 rd.forward(request,response);
}
 */
%>
<head>
<title>Register page 2:: Student</title>
</head>
<style>
td{
 padding-left:100px;
} 
</style>

<body>
<!-- ------ -->
<div class="container container-sm border" style="">
	<div class="container" >
	  <header class="container announcement-sm" style="text-align: center;">
	  <h1>Parent Details</h1>
	  </header>
 <hr>
 
<div class="panel-group" id="accordian">
<!-- start well -->
<div class="well">
<fieldset>
<legend>
	<p style="text-align:center;color:red;font-family:Lucida Calligraphy;font-size:25px;">
	<b>Father Details</b></p>
</legend>
<form action="RegisterStudent" method="post">

<input type="hidden" name="stu_enroll"  value='<%=enroll%>' /> 
<input type="hidden" name="stu_name"  value='<%=name%>' />
<input type="hidden" name="course"  value='<%=course%>' />
<input type="hidden" name="branch"  value='<%=branch%>' />
<input type="hidden" name="stu_mobile"  value='<%=mobile%>' />
<input type="hidden" name="stu_email"  value='<%=email%>' />
<input type="hidden" name="sem"  value='<%=sem%>' />
<input type="hidden" name="stu_address"  value='<%=address%>' />


<table style="width:80%">
<tr>
	<td>
		<br>
			<b style="padding-right: 52px;">Father Name :</b> 
			<input style="" type="text" name="father_name" class="form-control" value="" />
	</td>
	<td>
		<br>
			<b style="padding-right: 52px;">Father Mobile Number :</b> 
			<input style="" type="number" name="father_mobile" class="form-control" value="" />
	</td>
</tr>
<tr>
	<td>
		<br>
			<b style="padding-right: 52px;">Father email :</b> 
			<input style="" type="email" name="father_email" class="form-control" value="" />
	</td>
	<td>
		<br>
			<b style="padding-right: 52px;">Father Address :</b> 
			<input style="" type="text" name="father_address" class="form-control" value="" />
	</td>
</tr>
<tr>
	<td>
		<br><br>
		<p style="text-align:center;color:red;font-family:Lucida Calligraphy;font-size:25px;">
			<b>Local Guardian Details</b>
		</p>
	</td>
</tr>
<tr>
	<td>
		<br>
			<b style="padding-right: 52px;">Guardian Name :</b> 
			<input style="" type="text" name="guardian_name" class="form-control" value="" />
	</td>
	<td>
		<br>
			<b style="padding-right: 52px;">Guardian Mobile Number :</b> 
			<input style="" type="number" name="guardian_mobile" class="form-control" value="" />
	</td>
</tr>
<tr>
	<td>
		<br>
			<b style="padding-right: 52px;">Guardian email :</b> 
			<input style="" type="email" name="guardian_email" class="form-control" value="" />
	</td>
	<td>
		<br>
			<b style="padding-right: 52px;">Guardian Address :</b> 
			<input style="" type="text" name="guardian_address" class="form-control" value="" />
	</td>
</tr>   
  

 <tr>
	<td>
	<br><br>
		<input type="reset" value="reset">
	</td>
	<td>
	<br><br>
	<input type="submit" value="submit" onclick="myfunction();">
	</td>
</tr>
</table>
</form>
</fieldset>

</div>
<!-- end well -->
</div>
</div>

</div>
<!-- ------ -->
<%@include file="footer.jsp"%>