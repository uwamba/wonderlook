<?php include ('./conn/conn.php') ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book your Event Here</title>

    <!-- Style CSS -->
    <link rel="stylesheet" href="./assets/style.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
</head>
<body>
    
    <div class="main">

        <!-- Login Area -->
        <div class="login" id="loginForm">
            <h1 class="text-center"></h1>
            <div class="login-form">
                <form action="./endpoint/add-user.php" method="POST">
                    <h1>Book Now</h1>
                <div class="form-group row">
                    <div class="col-6">
                        <label for="firstName">Your Names:</label>
                        <input type="text" class="form-control" id="firstName" name="first_name">
                    </div>
                    <div class="col-6">
                        <label for="lastName">Event Name:</label>
                        <input type="text" class="form-control" id="lastName" name="event_name">
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-5">
                        <label for="contactNumber">Contact Number:</label>
                        <input type="number" class="form-control" id="contactNumber" name="contact_number" maxlength="11">
                    </div>
                    <div class="col-7">
                        <label for="email">Address:</label>
                        <input type="text" class="form-control" id="email" name="address">
                    </div>
                </div>
           
                <div class="form-group">
                <label for="start_datetime">Start Date and Time:</label><br>
                <input type="datetime-local" id="start_datetime" name="start_datetime" required><br><br>
                </div>
                <div class="form-group">
                <label for="end_datetime">End Date and Time:</label><br>
                <input type="datetime-local" id="end_datetime" name="end_datetime" required><br><br>
                </div>

                <div class="form-group row">
                    <div class="col-10">
                    <label for="description">Description:</label><br>
                    <textarea id="description" name="description" required></textarea><br><br>
                    </div>
                   
                </div>
    
                <button type="submit" class="btn btn-dark login-register form-control">Register</button>
            </form>
            </div>
        </div>


        <!-- Registration Area -->
        <div class="registration" id="registrationForm">
            <h1 class="text-center"></h1>
            <div class="registration-form">
            <form action="./endpoint/add-user.php" method="POST">
                <div class="form-group row">
                    <div class="col-6">
                        <label for="firstName">First Name:</label>
                        <input type="text" class="form-control" id="firstName" name="first_name">
                    </div>
                    <div class="col-6">
                        <label for="lastName">Last Name:</label>
                        <input type="text" class="form-control" id="lastName" name="last_name">
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-5">
                        <label for="contactNumber">Contact Number:</label>
                        <input type="number" class="form-control" id="contactNumber" name="contact_number" maxlength="11">
                    </div>
                    <div class="col-7">
                        <label for="email">Email:</label>
                        <input type="text" class="form-control" id="email" name="email">
                    </div>
                </div>
                <div class="form-group">
                    <label for="registerUsername">Username:</label>
                    <input type="text" class="form-control" id="registerUsername" name="username">
                </div>
                <div class="form-group">
                    <label for="registerPassword">Password:</label>
                    <input type="password" class="form-control" id="registerPassword" name="password">
                </div>
                <p class="registrationForm" onclick="showLoginForm()"><- Back</p>
                <button type="submit" class="btn btn-dark login-register form-control">Register</button>
            </form>

            </div>

        </div>

    </div>

    <script>
        // Constant variables
        const loginForm = document.getElementById('loginForm');
        const registrationForm = document.getElementById('registrationForm');

        // Hide registration form
        registrationForm.style.display = "none";


        function showRegistrationForm() {
            registrationForm.style.display = "";
            loginForm.style.display = "none";
        }

        function showLoginForm() {
            registrationForm.style.display = "none";
            loginForm.style.display = "";
        }

    </script>

    <!-- Bootstrap Js -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"></script>

</body>
</html>