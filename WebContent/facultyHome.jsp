<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Faculty Home Page</title>
</head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script type="text/javascript">
$('.datepicker').datepicker();

</script>
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js">
	
</script>
<body>
<div class="container-fluid">
<div class="panel-heading">
<%@include file="header.jsp" %></div>
	 <div class="row">	
        <div class="col-md-12">
        <h2>List of Courses:</h2>
        <div class="table-responsive">                
              <table id="mytable" class="table table-bordred table-striped">                   
                   <thead>                   
                    <th>Course Name</th>
                     <th>Department Name</th>
                     <th>Start Date</th>
					<th>End Date</th>
					<th>Semester</th>
					<th>Capacity</th>
                   	</thead>
    				<tbody>    
    					<c:forEach items="${courses}" var="course">
    					<tr>
    							<td><c:out value="${course.getCourseName()}" />	</td>
    							<td><c:out value="${course.getDepartmentName()}" />	</td>
    							<td><c:out value="${course.getStartDate()}" />	</td>
    							<td><c:out value="${course.getEndDate()}" />	</td>
    							<td><c:out value="${course.getSemesterName()}" />	</td>
    							<td><c:out value="${course.getCapacity()}" />	</td>
    							

    							 <td><a class="btn btn-primary" href="facultyHome.do?action=courseDetail&courseId=<c:out value='${course.getCourseId() }'/>">View</a>

    							</td>
    					</tr>
    				</c:forEach>
    				</tbody>    
				</table>
			</div>
		</div>
	</div>
	<div class="panel-footer"><%@include file="footer.jsp" %></div>
	</div>

</body>
</html>