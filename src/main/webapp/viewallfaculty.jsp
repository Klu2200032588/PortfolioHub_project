<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Faculty</title>
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
        tr:hover {
    background-color: #dcdcdc; /* Change background color on hover */
}
    </style>
</head>
<body>
<%@ include file="adminhome.jsp" %>
    <h3 style="text-align: center;"><u>View All Faculty</u></h3>
    <table >
        <tr>
            <th>ID</th>
            <th>USERNAME</th>
            <th>GENDER</th>
            <th>DEPARTMENT</th>
            <th>EMAIL</th>
            <th>CONTACT</th>
        </tr>
        <c:forEach items="${faclist}" var="fac">
            <tr>
                <td><c:out value="${fac.id}"/></td>
                <td><c:out value="${fac.username}"/></td>
                <td><c:out value="${fac.gender}"/></td>
                <td><c:out value="${fac.department}"/></td>
                <td><c:out value="${fac.email}"/></td>
                <td><c:out value="${fac.contact}"/></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
