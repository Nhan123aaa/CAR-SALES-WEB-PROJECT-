<!DOCTYPE html>

<?php
    require_once('../connect_db.php');
    session_start();
    if(isset($_SESSION['id'])){
        header('Location: ../index.php');
    }
    if($_SERVER["REQUEST_METHOD"]=="POST"){
    $u=$_POST['user'];
    $p=$_POST['pass'];
    $sql = "SELECT id FROM user where username='".$u."'&& password=MD5('".$p."')";
    $rs = $con->query($sql);
    if(mysqli_num_rows($rs)>0){
        $id = $rs->fetch_assoc();
        $_SESSION['id'] = $id;
    }
    $con->close();
    }
?>

<html>
    <!-- <body>
        <h2>Đăng Nhập</h2>
        <form  method="POSt">
        <label for="user">Tài Khoản</label><br>
        <input type="text" id="fname" name="user" value=""><br>
        <label for="pass">Mật Khẩu</label><br>
        <input type="password" id="lname" name="pass" value=""><br><br>
        <input type="submit" value="Submit">
        </form> 
    </body> -->
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
        body {font-family: Arial, Helvetica, sans-serif;}
        form {border: 3px solid #f1f1f1;}

        input[type=text], input[type=password] {
        width: 100%;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        box-sizing: border-box;
        }

        button {
        background-color: #4CAF50;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        cursor: pointer;
        width: 100%;
        }

        button:hover {
        opacity: 0.8;
        }

        .cancelbtn {
        width: auto;
        padding: 10px 18px;
        background-color: #f44336;
        }

        .imgcontainer {
        text-align: center;
        margin: 24px 0 12px 0;
        }

        img.avatar {
        width: 40%;
        border-radius: 50%;
        }

        .container {
        padding: 16px;
        }

        span.psw {
        float: right;
        padding-top: 16px;
        }

        /* Change styles for span and cancel button on extra small screens */
        @media screen and (max-width: 300px) {
        span.pass {
            display: block;
            float: none;
        }
        .cancelbtn {
            width: 100%;
        }
        }
        </style>
        </head>
        <body>
        <h2>Login Form</h2>

        <form action="" method="post">
        <div class="imgcontainer">
            <img src="img_avatar2.png" alt="Avatar" class="avatar">
        </div>

        <div class="container">
            <label for="user"><b>Username</b></label>
            <input type="text" placeholder="Enter Username" name="user" required>

            <label for="pass"><b>Password</b></label>
            <input type="password" placeholder="Enter Password" name="pass" required>
                
            <button type="submit">Login</button>
            <label>
            <input type="checkbox" checked="checked" name="remember"> Remember me
            </label>
        </div>

        <div class="container" style="background-color:#f1f1f1">
            <button type="button" class="cancelbtn">Cancel</button>
            <span class="psw">Forgot <a href="#">password?</a></span>
        </div>
        </form>
    </body>
</html>