<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome</title>
    <script type="text/javascript">
        function showStudentName(studentId, studentName) {
            alert("Student ID: " + studentId + "\\nStudent Name: " + studentName);
        }
    </script>
</head>
<body>
    <h2>Welcome Page</h2>
    <table border="1">
        <tr>
            <th>Department</th>
            <th>Number of Students</th>
            <th>Number of Passed Students</th>
            <th>Pass Percentage</th>
        </tr>
        <%
            // Example data
            String[] departments = {"CS", "EE", "ME"};
            int[] totalStudents = {100, 80, 60};
            int[] passedStudents = {90, 60, 50};

            for (int i = 0; i < departments.length; i++) {
                int passPercentage = (passedStudents[i] * 100) / totalStudents[i];
        %>
        <tr>
            <td><%= departments[i] %></td>
            <td><%= totalStudents[i] %></td>
            <td><%= passedStudents[i] %></td>
            <td><%= passPercentage %>%</td>
        </tr>
        <% } %>
    </table>
    <h3>Student List</h3>
    <ul>
        <%
            // Example student data
            String[] studentIDs = {"1001", "1002", "1003"};
            String[] studentNames = {"Alice", "Bob", "Charlie"};

            for (int i = 0; i < studentIDs.length; i++) {
        %>
        <li onclick="showStudentName('<%= studentIDs[i] %>', '<%= studentNames[i] %>')">
            Student ID: <%= studentIDs[i] %>
        </li>
        <% } %>
    </ul>
</body>
</html>
