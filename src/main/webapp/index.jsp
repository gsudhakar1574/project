<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>

<div>
	<h2 >Spring Boot - Student Registation Form</h2>
	
	<tr>
		<div align = "left" >		   
		     <h3><a  th:href="@{'/new'}">Add new</a></h3>     
	    </div>
	
	</tr>
	
	<tr>
	
	<div class="col-sm-5" align = "center">
                 <div class="panel-body" align = "center" >
                 <table class="table">
  <thead class="thead-dark">
    <tr>
      		<th>Student ID</th>
            <th>Student Name</th>
            <th>Course</th>
            <th>Fee</th>
            <th>Edit</th>
            <th>Delete</th>
   	</tr>
  </thead>
  <tbody>
      <tr  th:each="student : ${liststudent }">
		<td th:text="${student.id}">Student ID</td>
		<td th:text="${student.studentname}">StudentName</td>
		<td th:text="${student.course}">Course</td>
		<td th:text="${student.fee}">Fee</td>				
		<td>
			<a th:href="@{'/edit/' + ${student.id}}">Edit</a>
		</td>							    
		<td>
			<a th:href="@{'/delete/' + ${student.id}}">Delete</a>
		</td>		    
		</tr> 
   
  </tbody>
</table>
                    
            </div>

          </div> 

	</tr>

	</tbody>
	</table>
 </div>
 
 
</body>
</html>