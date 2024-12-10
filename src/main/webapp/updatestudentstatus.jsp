<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Student Status</title>
    <style>
           table {
            width: 100%;
            max-width: 1200px;
            margin: 20px auto;
            border-collapse: collapse;
            table-layout: auto;
            background-color: #fff;
        }

        table, th, td {
            border: 2px solid black;
        }

        th, td {
            padding: 10px;
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
        }
    </style>
</head>
<body>
<%@ include file="adminhome.jsp" %>
    <h2  align="center">Update Student Status</h2>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Department</th>
            <th>Status</th>
            <th>Action</th>
        </tr>
        <c:forEach var="student" items="${studentlist}">
            <tr>
                <td>${student.id}</td>
                <td>${student.studentname}</td>
                <td>${student.studentemail}</td>
                <td>${student.department}</td>
                <td>${student.status}</td>
                <td>
                    <form action="updatestatus" method="post">
                        <input type="hidden" name="id" value="${student.id}" />
                        <select name="status">
                            <option value="Accepted">Accept</option>
                            <option value="Rejected">Reject</option>
                        </select>
                        <input type="submit" value="Update" />
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
