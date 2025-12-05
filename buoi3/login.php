<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>php buoi2 </title>
</head>
<body>
<form action="login.php" method="post" <?php echo $_SERVER['PHP_SELF']?>>
    <h1>Đăng nhập</h1>
    <div>
        <input type="text" name="username" placeholder="Tên đăng nhập">
    </div>
    <div>
        <input type="password" name="password" placeholder="Mật khẩu">
    </div>
    <div>
        <input type="submit" value="Đăng nhập">
    </div>
</form>
<?php
include('connect.php');
if(isset($_POST['username']) && isset($_POST['password'])){
    $tenDangNhap = $_POST['username'];
    $matKhau = $_POST['password'];
    //Nếu tên đăng nhập là admin
    //Mật khẩu 123 thì cho phép người dùng vào trang chủ
    $sql = "select * from nguoi_dung where ten_dang_nhap = '$tenDangNhap' and mat_khau = '$matKhau'";
    $result = mysqli_query($conn, $sql);
    if (mysqli_num_rows($result) > 0) {
        session_start();
       
        $_SESSION['username'] = $tenDangNhap;
         header('location: index.php');
        // header('location: trangchu.php');
    } else {
        echo "<p class='warning'>Sai thong tin dang nhap</p>";
    }
}

/*
if($tenDangNhap == 'admin' && $matKhau == '123'){
    session_start();
    $_SESSION['username'] = $tenDangNhap;
    header('location: trangchu.php');
} else {
    echo "<p class='warning'>Sai thong tin dang nhap</p>";
}
*/
?>

</form>
</body>
</html>