<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<style>
         * {
          box-sizing: border-box;
          margin: 0;
          padding: 0;
          font-family: Arial, sans-serif;
   
          }
          body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
           }

        .login-container {
            background: #ffffff;
            padding: 20px 30px;
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            margin-top:50px;
            margin-left: auto; 
            margin-right: auto; 
            width: 400px; 
            height: auto; 
        }

        h2 {
            ttext-align: center;
            margin-bottom: 20px;
           color: #333;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            display: block;
            margin-bottom: 5px;
        }

        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        button {
            width: 48%;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .submit-btn {
            background-color: #007bff;
            color: white;
        }

        .cancel-btn {
            background-color: #dc3545;
            color: white;
        }

        button:hover {
            opacity: 0.9;
        }

        .button-container {
            display: flex;
            justify-content: space-between;
        }
        .header {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height:60px;
            background-color: #f7f9fb;
            padding: 10px 20px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            z-index: 1000; 
        }

       .header .logo img {
           height: 115px;
           object-fit: contain;
           left:0;
       }
       .adesh {
    
          color: rgb(159, 67, 67);
       }

      .services {
          letter-spacing: 1px;
          color: rgb(88, 77, 77); 
      }
     .header {
        display: flex; 
        align-items: center; 
      }

      .logo {
         display: flex; 
         align-items: center; 
      }

      .logo img {
         height: 50px; 
         width: auto; 
      }

      .logo-text {
         line-height: 2;
         font-family:cursive;
         letter-spacing: 2px;
         word-spacing: 30px;
         display: flex; 
         margin-left: 10px;
         vertical-align: middle; 
         font-size: 25px;
         font-weight: bold;
       }
    </style>
</head>
</head>
<body>
<header class="header">
        <div class="logo">
            <img src="./logo.png" alt="Logo" />
            <span class="logo-text">
                <span class="adesh">ADESH</span>
              <span class="services"> Services</span>
            </span>
        </div>
        </header>
<div class="login-container">
        <h2>Login</h2>
        <% String errorMessage = (String) request.getAttribute("errorMessage"); %>
        <% if (errorMessage != null) { %>
            <p style="color: red; text-align: center;"><%= errorMessage %></p>
        <% } %>

        <form action="LoginServlet" method="post">
      
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="button-container">
                <button type="submit" class="submit-btn" >Submit</button>
                <button type="button" class="cancel-btn" onclick="cancelLogin()">Cancel</button>
            </div>
        </form>
    </div>

    <script>
      function cancelLogin() {
            window.location.href = 'index.jsp'; 
        }
    </script>
</body>
</html>