<!DOCTYPE html>
<%@page import="com.model.customer.User"%>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Profile</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('bbl.jpeg'); 
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
        }

        .container {
            max-width: 600px;
            margin: 50px auto;
            background-color: blur;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
        }

        form {
            display: grid;
            grid-gap: 20px;
        }

        label {
            font-weight: bold;
        }

        input,
        textarea {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
            margin-top: 6px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        button {
            background-color: #53e458;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
        }

        /* Popup container */
        .popup-container {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            justify-content: center;
            align-items: center;
            z-index: 1;
        }

        /* Popup content */
        .popup-content {
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .close-btn {
            background-color: #ccc;
            color: #333;
            padding: 8px 12px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-right: 10px;
        }

        .close-btn:hover {
            background-color: #999;
        }
    </style>
</head>

<body>
<%
   String id=request.getParameter("id");
   String Name=request.getParameter("name");
   String email=request.getParameter("email");
   String number=request.getParameter("phone");
   String username=request.getParameter("username");
%>

<%
    User user = (User) request.getAttribute("user");

    if (user != null) {

     id =  String.valueOf(user.getId()); 
     Name=  user.getName();
     email= user.getEmail();
     number= user.getPhone(); 
     username= user.getUserName(); 

    }
%>


    <div class="container">
        <h2>Edit Profile</h2>
        <form action="update" method="Post">
            
            <label for="id">ID:</label>
            <input type="text" id="cusid" name="id" value="<%= id%>" readonly>
            
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" value="<%= Name%>" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" value="<%= email%>" required>

           
            <label for="phone">Phone Number:</label>
            <input type="text" id="phone" name="phone" value="<%= number%>" required>

            <label for="username">User Name:</label>
            <input type="text" id="username" name="username" value="<%= username%>" required>

            <button type="submit">Save Changes</button>
            <button type="button" onclick="openResetPopup()">Reset Password</button>
        </form>
    </div>

    <!-- Popup Container -->
    <div class="popup-container" id="resetPopup">
        <!-- Popup Content -->
        <div class="popup-content">
            <h2>Reset Password</h2>
            <form action="resetPassword" method="post">
            <input type="hidden" name="id" value="<%= id %>">
            
                <label for="cPassword">Current Password:</label>
                <input type="password" id="cPassword" name="cPassword" required>

                <label for="newPassword">New Password:</label>
                <input type="password" id="newPassword" name="newPassword" required>

                <label for="confirmPassword">Confirm Password:</label>
                <input type="password" id="confirmPassword" name="confirmPassword" required>

                <button type="submit">Reset Password</button>
                <button class="close-btn" onclick="closeResetPopup()">Close</button>
            </form>
        </div>
    </div>

    <script>
        function openResetPopup() {
            document.getElementById('resetPopup').style.display = 'flex';
        }

        function closeResetPopup() {
            document.getElementById('resetPopup').style.display = 'none';
        }
    </script>
</body>

</html>
