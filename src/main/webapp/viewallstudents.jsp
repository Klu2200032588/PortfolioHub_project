<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<head>
<title>View All Students</title>
<style>
         table {
    width: 100%;
    max-width: 1300px;
    margin: 0px auto; 
    margin-top: 25px;
    border-collapse: collapse;
    table-layout: auto;
    background-color: #87CEEB;
   
    
}

table, th, td {
    border: 2px solid #87CEEB;
    
}

th, td {
    padding: 3px;
    text-align: center;
    word-wrap: break-word;
    
}

th {
    background-color:#87CEEB;
    
    color: black;
}

tr:nth-child(even) {
    background-color: #f2f2f2;
}

tr:nth-child(odd) {
    background-color: #fff;
 }
         
    </style>
</head>
<body>
<%@ include file="adminhome.jsp" %>
    <h3 style="text-align: center;"><u>View All Students</u></h3>
    <table>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>EMAIL</th>
            <th>DEPARTMENT</th>
            <th>YEAR</th>
            <th>STATUS</th>
        </tr>
        <c:forEach items="${studentlist}" var="stu">
            <tr>
                <td><c:out value="${stu.studentid}"/></td>
                <td><c:out value="${stu.studentname}"/></td>
                <td><c:out value="${stu.studentemail}"/></td>
                <td><c:out value="${stu.department}"/></td>
                <td><c:out value="${stu.studentyear}"/></td>
                <td><c:out value="${stu.status}"/></td>

            </tr>
        </c:forEach>
    </table>
</body>
</html>