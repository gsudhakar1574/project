<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <title>Create New Product</title>

</head>
<body>

<div align="center">
    <h1>Create New Student</h1>
    <br />
     <div class="col-sm-4">
    <form action="#" th:action="@{/save}" th:object="${student}" method="post">

      
 		<div alight="left">
            <tr>
                <label class="form-label" >Student Name</label>
                <td>
	                <input type="hidden" th:field="*{id}" />
	                <input type="text" th:field="*{studentname}" class="form-control" placeholder="Student Name" />
                </td>
            </tr>
         </div>   
            
          	<div alight="left">
          
            <tr>
                 <label class="form-label" >Course</label>
                <td><input type="text" th:field="*{course}" class="form-control" placeholder="Course" /></td>
            </tr>
            </div> 
            <div alight="left">
                 <tr>
                 <label class="form-label" >Fee</label>
                <td><input type="text" th:field="*{fee}" class="form-control" placeholder="Fee" /></td>
            </tr>
            </div> 
			<br>
            <tr>
            <td colspan="2"><button type="submit" class="btn btn-info">Save</button> </td>
            </tr>
        </table>
    </form>
</div>

 
</body>
</html>