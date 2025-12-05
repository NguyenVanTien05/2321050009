<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Form Thêm Người Dùng</title>
  <style>
    .container{
      /* margin-top: 50px */
      display: flex;
      align-item: center;
      justify-content:center;
      padding: 10px;
      border: 1px solid black;


    }
    .body{
     margin-top: 50px
    }
    
    .container form div {
      display: flex;
      justify-content: space-between;
      margin-bottom: 5px;
    }
    .container form div label {
      width: 120px; /* Giúp label có độ rộng cố định */
    }
  </style>
</head>
<body>
<div class="body">
  <div class="container">
      <form action="" method="post">
     
           <div>
          <label for=""> Tên đăng nhập </label>
          <input type="text" name="username" placeholder="Tên đăng nhập">
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
          <label for=""> Vai trò </label>
          <select name="vaitro" id="">
            <option value="Diễn viên">Diễn viên</option>
            <option value="Đạo diễn">Đạo diễn</option>
            <option value="User">User</option>
            <option value="Admin">Admin</option>
          </select>
       </div>
              <div>
          <label for=""> Ngày sinh </label>
          <input type="date" name="ngaysinh" placeholder="Chọn ngày sinh" value="<?php?>">
       </div>
       <div>     
       </div>
       <div><input type="submit" value="Thêm người dùng"></div>
      </form>

  </div>
</div> 

</body>