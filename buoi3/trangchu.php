<?php
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}
if(!isset( $_SESSION["username"])){
 
    header('Location: login.php');
  
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang Chủ</title>
</head>
<body>
    
    <h1>Trang Chủ</h1>
</body>
</html>