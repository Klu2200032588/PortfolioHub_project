<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Delete Student</title>

     <style>
        table {
            width: 100%;
            max-width: 1200px;
            margin: 50px auto;
            border-collapse: collapse;
            table-layout: auto;
            background-color: #fff;
        }

        table, th, td {
            border: 2px solid black;
        }

        th, td {
            padding: 20px;
            text-align: center;
            word-wrap: break-word;
        }

        th {
            background-color: black;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:nth-child(odd) {
            background-color: #fff;
        }</style>
</head>
<body>
 <%@ include file="adminhome.jsp" %>
    <h2 align="center">Delete Student</h2>
    <table >
        
            <tr>
                
                <th>Student ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Department</th>
                <th>Year</th>
                <th>Action</th>
            </tr>
       
        <tbody>
            <c:forEach var="student" items="${studentlist}">
    <tr>
      
        <td><c:out value="${student.studentid}"/></td>
        <td><c:out value="${student.studentname}"/></td>
        <td><c:out value="${student.studentemail}"/></td>
        <td><c:out value="${student.department}"/></td>
        <td><c:out value="${student.studentyear}"/></td>
        <td><a href="deleteStudentById?id=${student.id}">Delete</a></td>
    </tr>
</c:forEach>

        </tbody>
    </table>
</body>
</html>
