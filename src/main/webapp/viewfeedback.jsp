<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Feedbacks</title>
    <style>
        table {
            width: 80%;
            border-collapse: collapse;
            margin: 20px auto;
        }
        th, td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: left;
        }
        th {
            background-color: #f4f4f4;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
    </style>
</head>
<body>
    <h2 style="text-align: center;">All Feedbacks</h2>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>User Type</th>
                <th>Name</th>
                <th>Email</th>
                <th>Design Rating</th>
                <th>Upload Rating</th>
                <th>Response Rating</th>
                <th>Additional Feedback</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="feedback" items="${feedbackList}">
                <tr>
                    <td>${feedback.id}</td>
                    <td>${feedback.userType}</td>
                    <td>${feedback.name}</td>
                    <td>${feedback.email}</td>
                    <td>${feedback.designRating}</td>
                    <td>${feedback.uploadRating}</td>
                    <td>${feedback.responseRating}</td>
                    <td>${feedback.additionalFeedback}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
