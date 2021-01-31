<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<title>Administration login</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href=css/stylesheet-AdminLogin.css>
</head>

<body>
	
    <div class="container mt-2">
        <form class="form-group" name="loginForm" method="post" action="adminlogin">
            <!--form-->

            <h1 class="text-center pb-2">Administration Login</h1>

            <div id="form">
                <!--form-->
                <h3 class="text-white">Admin Details</h3>


                <div class="row" id="input">
                    <!--Input-->
                    <input class="adminName" id="input-group" type="text" name="admin_login"  placeholder="Name" required/>
                     <br/>
                    
                    <input class="adminPassword" id="input-group" type="password" name="admin_password"  placeholder="Password" required/> 
                    <br/>
                    
                        <button class="btn btn-primary" type="submit" value="adminlogin">login</button>

                </div>

                <div class="row" id="input">
                    <!-- Input2-->
                    
                </div> <!-- Input2-->

            </div>
            <!--form-->
        </form>
        <!--form-->
    </div>



</body>
</html>