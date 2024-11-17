<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%@ page import="com.entity.NewReg" %> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Profile</title>
    <style>
    body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 0;
}

.container {
    max-width: 600px;
    margin: 50px auto;
    padding: 20px;
    background-color: #fff;
    border-radius: 8px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
}

h1 {
    color: #333;
}

h2 {
    color: #555;
}

table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
}

th, td {
    padding: 10px;
    border: 1px solid #ddd;
    text-align: left;
}

th {
    background-color: #f2f2f2;
}

.logout-button {
    display: inline-block;
    margin-top: 20px;
    padding: 10px 15px;
    background-color: #ff4d4d;
    color: white;
    text-decoration: none;
    border-radius: 5px;
}

.logout-button:hover {
    background-color: #ff1a1a;
}
</style>
</head>
<body>
    <%
        HttpSession httpsession = request.getSession(false);
        NewReg newReg = null;

        
        if (session != null) {
            newReg = (NewReg) session.getAttribute("newReg"); 
        }

       
        if (newReg == null) {
            response.sendRedirect("login.jsp");
            return;
        }
    %>

    <div class="container">
        <h1>Welcome, <%= newReg.getname() %>!</h1>
        <h2>Your Profile Details</h2>
        <table>
            <tr>
                <th>ID</th>
                <td><%= newReg.getId() %></td>
            </tr>
            <tr>
                <th>Full Name</th>
                <td><%= newReg.getname() %></td>
            </tr>
            <tr>
                <th>Contact</th>
                <td><%= newReg.getphone() %></td>
            </tr>
            <tr>
                <th>Email</th>
                <td><%= newReg.getEmail() %></td>
            </tr>
            
        </table>
       <a href="logout.jsp" class="logout-button" onclick="logout(event)">Logout</a>
</div>
<script>
    function logout(event) {
        event.preventDefault(); 
        window.location.href = 'index.jsp'; 
    }
</script>
    
</body>
</html>