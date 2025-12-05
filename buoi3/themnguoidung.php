<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Form Thêm Người Dùng</title>
  <style>
  </style>
</head>
<body>
<div class="body">
  <div class="container">
      <form action="" method="post">
     
           <div>
          <label for=""> Tên đăng nhập </label>
          <input type="text" name="tendangnhap" placeholder="Tên đăng nhập">
     </div>

            <div>
          <label for=""> Mật khẩu </label>
          <input type="password" name="password" placeholder="Nhập mật khẩu">
      </div>

            <div>
          <label for=""> Họ tên </label>
          <input type="text" name="hoten" placeholder="Nhập họ và tên">
       </div>

              <div>
          <label for=""> Email </label>
          <input type="email" name="email" placeholder="Nhập email">
       </div>

              <div>
          <label for=""> Số điện thoại </label>
          <input type="text" name="sdt" placeholder="Nhập số điện thoại">
       </div>
            
              <div>
          <label for=""> Vai trò (ID) </label>
          
            <select name="vaitro" id="">
                <option value="1">admin</option>
                <option value="2">user</option>
                <option value="3">đạo diễn</option>
                <option value="4">diễn viên</option>
            </select>
       </div>

              <div>
          <label for=""> Ngày sinh </label>
          <input type="date" name="ngaysinh" placeholder="Chọn ngày sinh">
       </div>


       <div><input type="submit" value="Thêm người dùng"></div>
      </form>
  </div>
</div>
  <?php
  include('connect.php');
  // Thêm kiểm tra cho 'ngaysinh'
  if(!empty($_POST['tendangnhap']) &&
  !empty($_POST['password']) &&
  !empty($_POST['hoten']) &&
  !empty($_POST['email']) &&
  !empty($_POST['sdt']) &&
  !empty($_POST['vaitro']) &&
  !empty($_POST['ngaysinh'])) { 

  $username=$_POST['tendangnhap'];
  $password=$_POST['password'];
  $name=$_POST['hoten'];
  $email=$_POST['email'];
  $sdt=$_POST['sdt']; 
  $vaitro=$_POST['vaitro']; 
  $ngaysinh=$_POST['ngaysinh'];

  $sql="INSERT INTO `nguoi_dung`(`ten_dang_nhap`, `mat_khau`, `ho_ten`, `email`, `sdt`, `vai_tro_id`, `ngay_sinh`) 
  VALUES ('$username', '$password', '$name', '$email', '$sdt', '$vaitro', '$ngaysinh')";
  // echo $sql;
   // kiem tra dtb co them vao duoc khong 
             if(mysqli_query($conn,$sql)){
                header("Location: index.php?page_layout=nguoidung");
             }else{
                echo "loi sql". mysqli_error($conn);
             }

        } else {
           if($_SERVER['REQUEST_METHOD']== 'POST'){
                echo "<p class= 'warning'> Vui lòng nhập đầy đủ thông tin ! </p>";
           }
        }



  

?>
</body>
</html>