<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thông tin người dùng</title>
    <style>
        
        table {
            width: 80%; 
            margin: 20px auto; }
        
        th, td {
            border: 1px solid #333; 
            padding: 10px;
            text-align: left;
        }
        h1 {
            text-align: center; 
            margin-top: 50px; 
        }
        .tin{
            border: 1px solid black;
            border-radius: 5px;
            padding: 10px;
            margin-left: 120px;
        }
    </style>
</head>
<body>
    
    <div style="margin-bottom: 20px;">
        </div>
    <div class="themnguoidung0">
    <h1>Thông tin người dùng</h1>
    <ul>
     <li class="tin"><a class="" href="index.php?page_layout=themnguoidung">Thêm người dùng</a></li>
    </ul>
    </div>
    <table>
        <tr>
            <th>Tên đăng nhập</th>
            <th>Họ tên</th>
            <th>Email</th>
            <th>Số điện thoại</th>
            <th>Vai trò</th>
            <th>Ngày sinh</th>
        </tr>
        <?php
        include("connect.php");
        $sql = "SELECT nd.*, vt.ten_vai_tro FROM `nguoi_dung` nd join vai_tro vt on nd.vai_tro_id = vt.id";       
        $result = mysqli_query($conn, $sql);        
        while($row = mysqli_fetch_array($result)){
        ?>
        <tr>         
            <td><?php echo $row["ten_dang_nhap"] ?></td>    
            <td><?php echo $row["ho_ten"] ?></td>
            <td><?php echo $row["email"] ?></td>
            <td><?php echo $row["sdt"] ?></td>
            <td><?php echo $row["ten_vai_tro"] ?></td>
            <td><?php echo $row["ngay_sinh"] ?></td>


      <td class="chuc_nang">
                <a href="index.php?page_layout=capnhatnguoidung&id=<?php echo $row['id'] ?>">cập nhật người dùng</a>
                <a class="xoa" href="xoanguoidung.php?id=<?php echo $row['id'] ?>">Xóa</a>
      <a href="" class="capnhat" ></a>
    </td>
         
        </tr>
        
        <?php
        }
        ?>
    </table>
</body>
</html>