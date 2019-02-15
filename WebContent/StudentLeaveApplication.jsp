<jsp:include page="commonHeader.jsp" /> 
<%-- <%@include file="commonHeader.jsp" %> --%>
<title>LEAVE APPLICATION :: STUDENT</title>
<%@ page import="sis.com.daoFactory.DaoFactory"%>
<%@ page import="java.text.DateFormat"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="sis.com.util.SisDbUtil" %>
<%@ page import="java.util.*" %>
<%@ page import="sis.com.bo.*" %>  
<%
/* request.setAttribute("enrollmentNumber", 150169);
request.setAttribute("studentName", "seema");

System.out.println("enroll  "+request.getAttribute("enrollmentNumber"));
System.out.println("student name "+request.getAttribute("studentName"));
 */%>
				<style type="text/javascript">
				function disableInput(){	
					console.log("hey");
				}
				</style>

<style type="text/css">

/* NEW CODE HERE START*/
.sm-header{
	background: #f9edf9;
	border-bottom:3px solid red;
	padding-bottom: 18px;
}

/* NEW CODE HERE END */
</style>

<!-- container -->

<%
if(session.getAttribute("inserted")!=null){
	
Boolean inserted = (Boolean)session.getAttribute("inserted");
Boolean errorDate;

%>

<!-- warning -->
<%if(inserted==true){ %>
<div class="alert alert-success alert-dismissable fade in">
  <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
  <h4><strong>Send!</strong> Request registered</h4>
</div>
<%}else{ %>
<div class="alert alert-danger alert-dismissable fade in">
  <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
  <h4><strong>Failed!</strong> Try again later</h4>
</div>
<%} %>
<!-- warning -->

<%
session.removeAttribute("inserted");
}//inserted


if(session.getAttribute("errorDate")!=null){
%>
<div class="alert alert-danger alert-dismissable fade in">
  <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
  <h4><strong>Wrong Date!</strong> from date must be less than to date</h4>
</div>
<%
}//errorDate 
session.removeAttribute("errorDate");

List<String> errorList=new ArrayList<String>();
if(session.getAttribute("errorList")!=null){
	errorList = (List<String>)session.getAttribute("errorList");
}

%>
<!-- CONTAINER START -->
<div class="container container-sm border" style="">

<!-- LEAVE --> 
<div class="container" >
<header class="container announcement-sm" style="text-align: center;" >
	<h1 style="font-family: 'Open Sans', sans-serif;">Student Leave Application</h1>
</header>
<hr>
<div class="panel-group" id="accordion">
	<div class="well">
	
    	<div class="wrapper">
    	<form class="form-horizontal" action="LeaveRequest" method="post">
    	 <div class="form-group">
	      <label class="control-label col-sm-2" for="name">Name:</label>
	      <div class="col-sm-10">
	        <p class="form-control-static">Seema Dewangan<%-- <%=session.getAttribute("studentName") %> --%></p>
	      </div>
	     </div>
    	 <div class="form-group">
	      <label class="control-label col-sm-2" for="enrollmentNumber">Enrollment Number:</label>
	      <div class="col-sm-10">
	        <p class="form-control-static">150167<%-- <%=session.getAttribute("enrollmentNumber") %> --%></p>
	      </div>
	     </div>
	     <%-- <div class="form-group">
	      <label class="control-label col-sm-2" for="reason">Subject:</label>
	      <div class="col-sm-8">
	        <input type="text" class="form-control" id="subject" placeholder="Enter subject" name="subject" request>
	        <%if(errorList!=null && errorList.contains("errorInSubject")){%>
	        	<p style="color:red;">* enter subject</p>
	        <%}%>
	      </div>
	      </div> --%>
	      <br>
    	 
    	 <div class="form-group">
	      <label class="control-label col-sm-2" for="reason">Start Date:</label>
	      <div class="col-sm-4">
	        <input type="date" class="form-control" id="reason" name="start_date">
	        <%if(errorList!=null && errorList.contains("errorInStartDate")){%>
	        	<p style="color:red;">* enter start date</p>
	        <%}%>	
	      </div>
	     </div>
    	 <div class="form-group">
	      <label class="control-label col-sm-2" for="reason">End Date:</label>
	      <div class="col-sm-4">
	        <input type="date" class="form-control" id="reason" name="end_date">
	        <%if(errorList!=null && errorList.contains("errorInEndDate")){%>
	        	<p style="color:red;">* enter end date</p>
	        <%}%>	
	      </div>
	     </div>
	     <div class="form-group">
	      <label class="control-label col-sm-2" for="reason">Reason:</label>
	      <div class="col-sm-5">
	        <div class="checkbox">
  				<label>
  				<input type="checkbox" name="reason" value="medical" 
  				 onclick="disableInput()"/>Medical</label>
			</div>
	        <!-- <input type="text" class="form-control" id="reason" placeholder="Enter reason" name="reason"> -->
	        <!-- <textarea class="form-control" type="text" name="reason" style="width:300px;height:80px;" disabled >
	        </textarea> -->
	        <input type="text" class="form-control" id="reason1" placeholder="Enter reason" name="reason" />
	      </div>
	      
	     </div>
    	 <div class="form-group">
	      <label class="control-label col-sm-2" for="reason">&nbsp;</label>
	      <div class="col-sm-4">
    	  <label>
  				<input type="checkbox" name="agree" value="medical" required /></label>&nbsp;I agree with this agreement that I am taking leave and going to where ever I want with my own risk  and nothing to do with institute.
	      </div>
	     </div>
    	 <div class="form-group">
	      <label class="control-label col-sm-2" for="reason">&nbsp;</label>
	      <div class="col-sm-4">
    	  <button type="submit" class="btn btn-success">Send&nbsp;<span class="glyphicon glyphicon-send"></button>
	      </div>
	     </div>
    	</form>
    	<%session.removeAttribute("errorList"); %>
    </div>
</div>
</div>
</div>
</div>
<!-- container -->

<%@include file="footer.jsp" %>
