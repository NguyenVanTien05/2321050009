<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Buoi 2 PHP</title>
</head>
<body>
    <form action="index.php" method="post">
        <h1>Đăng Nhập</h1>
        <div>
            <input type="text" name="user" placeholder="Tên đăng nhập">
        </div>
        <div>
            <input type="password" name="password" placeholder="Mật khẩu">
        </div>
        <div>
            <input type="submit" value="Đăng nhập">
        </div>
    </form>
    <?php
        if(isset($_POST['user'])&&isset($_POST['password'])){
            $tendangnhap = $_POST['user'];
            $matkhau = $_POST['password'];
            if($tendangnhap == 'admin'&& $matkhau == '123'){
                header('location: trangchu.php');
            }
            else{
                echo "<p class = 'warning'>Sai thong tin dang nhap</p>";
            }
        }
        // $tendangnhap = $_POST['user'];
        // $matkhau = $_POST['password'];
        // echo $tendangnhap . "<br>";
        // echo $matkhau;
        // Nếu tên đăng nhập = admin
        // MK 123 cho phép ng dùng vô trang chủ

    ?>
</body>
</html>