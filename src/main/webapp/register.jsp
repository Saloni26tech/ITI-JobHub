<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Page</title>
<style>
       * {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
   
}

body {
    background-color: #f4f4f4;
    display: flex;
    align-items: center;
    justify-content: center;
    height: 100vh;
}

.container {
    background: #ffffff;
    padding: 20px 30px;
    border-radius: 15px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    margin-top: 90px;
    margin-left: 200px;
    width: 550px;
    height: 660px;
    
}

h2 {
    text-align: center;
    margin-bottom: 20px;
    color: #333;
}

form label {
    margin-top: 10px;
    display: block;
    font-weight: bold;
    color: #555;
}

form input[type="text"],
form input[type="email"],
form input[type="password"],
form input[type="tel"],
form select,
form input[type="file"] {
    width: 100%;
    padding: 8px;
    margin-top: 5px;
    border-radius: 5px;
    border: 1px solid #ccc;
}

form button {
    width: 100%;
    padding: 10px;
    border: none;
    border-radius: 10px;
    background-color: #28a745;
    color: white;
    font-size: 16px;
    margin-top: 15px;
    cursor: pointer;
}

form button:hover {
    background-color: #218838;
}
.header {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height:70px;
    background-color: white;
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

.header .login-link {
    display: flex;
    align-items: center;
    gap: 8px;
    font-size: 16px;
}

.header .login-link a {
    color: #7617ea;
    text-decoration: none;
    font-weight: bold;
}
.header.login-link.already-registered{
    color:#100f0f;
}

.header .login-link a:hover {
    text-decoration: underline;
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
    font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
    letter-spacing: 2px;
    word-spacing: 30px;
    display: flex;
    margin-left: 10px;
     vertical-align: middle; 
     font-size: 25px;
     font-weight: bold;
}
.right {
    width: 300px;
    height: 520px;
    margin-left: 50px;
    padding: 20px;
    background-color: #e8f0fe; 
    border: 1px solid #dddfe1; 
    border-radius: 10px; 
    margin-top: 90px; 
}

.right h2 {
    color: #2c3e50;
    font-size: 24px; 
    margin-bottom: 15px;
}

.right ul {
    list-style-type: none;
    padding-left: 20px;
}

.right ul li {
    margin-bottom: 8px;
    color: #34495e; 
    font-size: 16px; 
}
.right ul li:nth-child(1)::before {
    content: '✔';
}
.right ul li:nth-child(2)::before {
    content: '✔';
}
.right ul li:nth-child(3)::before {
    content: '✔';
}
.header-image {
    margin-left: 3px;
    align-items: center;
    max-width: 250px; 
    max-height: 400px;
    height: auto; 
    display: block; 
    margin-bottom: 10px; 
}
.error {
            color: red;
            margin-top: -15px;
            margin-bottom: 15px;
            display: none;
        }

 </style>
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
        <div class="login-link">
            <span class="already-registered">Already Registered?</span>
            <a href="./login.jsp">Login here</a>
        </div>
    </header>


    <div class="container">

		   <h2>Create Your Account</h2>
		<form action="RegisterServlet" method="post" enctype="multipart/form-data">
		
   
            <label for="name">Full Name</label>
            <input type="text" id="name" name="name" placeholder="Enter your full name" required>

            <label for="email">Email</label>
            <input type="email" id="email" name="email" placeholder="Enter your email" required>

            <label for="phone">Phone Number</label>
            <input type="tel" id="phone" name="phone" placeholder="Enter your phone number" required>

            <label for="text">Apply For</label>
            <input type="text" id="text" name="text" placeholder="Enter position" required>

            <label for="experience">Experience (Years)</label>
            <select id="experience" name="experience" required>
                <option value="">Select experience</option>
                <option value="0">Fresher</option>
                <option value="1">1 year</option>
                <option value="2">2 years</option>
                <option value="3">3 years</option>
                <option value="4">4 years</option>
                <option value="5">5+ years</option>
            </select>

            <label for="resume">Upload Resume</label>
            <input type="file" id="resume" name="resume" accept=".pdf, .doc, .docx" required>

             <label for="password">Set a Password</label>
            <input type="password" id="password" name="password" placeholder="Enter unique password" required>

            <label for="confirmpassword">Confirm Password</label>
            <input type="password" id="confirmpassword" name="confirmpassword" placeholder="Confirm your password" required>

            <p class="error" id="errorMessage">Passwords do not match.</p>

            <button type="submit" id="registerButton">Register Now</button>
        </form>

</div>

    <div class="right">
    <img src="./People.jpg" alt="Image Description" class="header-image" />
        
        <h2> What will you get on registering?</h2>
        <ul>
            <li>Build your profile and let recruiter find you</li>

            <li>Get relevant job </li>

           <li>Can grow your career</li> 
        </ul>
    </div>

 <script>
    document.getElementById('registrationForm').addEventListener('submit', function (event) {
        event.preventDefault(); 
        
        const password = document.getElementById('password').value;
        const confirmPassword = document.getElementById('confirmpassword').value;

        if (password !== confirmPassword) {
            document.getElementById("errorMessage").style.display = "block"; 
            return; 
        } else {
            document.getElementById("errorMessage").style.display = "none"; 
        }

        
        const name = document.getElementById('name').value.trim();
        const email = document.getElementById('email').value.trim();
        const phone = document.getElementById('phone').value.trim();
        const experience = document.getElementById('experience').value;
        const resume = document.getElementById('resume').files[0];

        if (!name || !email || !phone || !experience || !resume) {
            alert('Please fill in all fields.');
            return;
        }

       
        if (!validateEmail(email)) {
            alert('Please enter a valid email address.');
            return;
        }

        if (!validatePhone(phone)) {
            alert('Please enter a valid phone number.');
            return;
        }

        alert('Registration successful!');
       
    });

    function validateEmail(email) {
        const re = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        return re.test(email);
    }

    
    function validatePhone(phone) {
        const re = /^\d{10}$/; 
        return re.test(phone);
    }
</script>

</body>
</html>