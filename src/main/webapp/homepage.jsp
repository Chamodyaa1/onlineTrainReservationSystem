<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Travel Buddy - Online Train Reservation</title>
    <style>
        /* Reset default margin and padding */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f3f3f3;
            margin: 0;
        }
        
        header {
            background-color: #333;
            color: #fff;
            padding: 20px 0;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        
        .logo img {
            width: 120px;
            height: auto;
        }
        
        nav ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
        }
        
        nav ul li {
            margin-right: 20px;
        }
        
        nav ul li:last-child {
            margin-right: 0;
        }
        
        nav a {
            text-decoration: none;
            color: #fff;
            font-weight: 600;
            font-size: 16px;
            padding: 10px 20px;
            border-radius: 4px;
            transition: background-color 0.3s ease;
        }
        
        nav a:hover {
            background-color: #ff5733;
        }

        /* Improved navigation styles */
        .navbar {
            display: flex;
            align-items: center;
        }

        .navbar li {
            margin-right: 20px;
        }

        .navbar a {
            text-decoration: none;
            color: #fff;
            font-weight: 600;
            font-size: 16px;
            padding: 10px 20px;
            border-radius: 4px;
            transition: background-color 0.3s ease;
        }

        .navbar a:hover {
            background-color: #ff5733; /* Change background color on hover */
        }
        
        .search-bar h1 {
            font-size: 36px;
            margin-bottom: 10px;
        }
        
        .search-bar p {
            font-size: 18px;
            margin-bottom: 20px;
        }
        
        .search-bar form input[type="text"],
        .search-bar form input[type="date"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
        }
        
        .search-bar form button {
            background-color: #ff5733;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 18px;
            transition: background-color 0.3s ease;
        }
        
        .search-bar form button:hover {
            background-color: #ff4322;
        }
        
        footer {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 20px 0;
        }

        footer p {
            font-size: 14px;
        }

        /* Edit Profile section */
        .edit-profile {
            display: flex;
            align-items: center;
            margin-right: 20px;
        }

        .edit-profile a {
            text-decoration: none;
            color: #fff;
            font-weight: 600;
            font-size: 16px;
            margin-left: 10px;
        }
    </style>
</head>
<body>
    <header>
        <div class="logo">
            <img src="logo.png" alt="Travel Buddy Logo">
        </div>
        <nav>
            <ul class="navbar">
                <li><a href="#">Home</a></li>
                <li><a href="#">Trains</a></li>
                <li><a href="#">Booking</a></li>
                <li><a href="#">About Us</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
        </nav>
        <!-- Edit Profile section -->
        <div class="edit-profile">
            <span>Welcome, User</span>
            <a href="userProfile.jsp">Edit Profile</a>
        </div>
    </header>

    <section class="hero">
        <div class="search-bar">
            <h1>Welcome to Travel Buddy</h1>
            <p>Your ultimate destination for hassle-free train reservations.</p>
            <form action="search.php" method="get">
                <input type="text" name="departure" placeholder="From" required>
                <input type="text" name="arrival" placeholder="To" required>
                <input type="date" name="date" required>
                <button type="submit">Find Trains</button>
            </form>
        </div>
    </section>

    <footer>
        <p>&copy; 2023 Travel Buddy - All rights reserved.</p>
    </footer>
</body>
</html>
