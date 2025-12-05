<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thông tin người dùng</title>
    <style>
        /* Tùy chỉnh cho bảng */
        table {
            width: 80%; /* Giảm bớt để bảng không quá rộng */
            margin: 20px auto; /* Canh giữa bảng và thêm khoảng cách */
    }
        
        th, td {
            border: 1px solid #333; 
            padding: 10px;
            text-align: left;
        }
        h1 {
            text-align: center; 
            margin-top: 50px; 
        }

    </style>
</head>
<body>
    
    <div style="margin-bottom: 20px;">
        </div>
    
    <h1>Phim</h1>
    
    <table>
        <tr>
            <th>Tên quốc gia </th>
            <th>id </th>
          
            
        </tr>
        <?php
       include("connect.php");


$sql = "SELECT * from quoc_gia";
        $result = mysqli_query($conn, $sql);
        while($row = mysqli_fetch_array($result)){
        ?>
        <tr>
            <td><?php echo $row["ten_quoc_gia"] ?></td>
            <td><?php echo $row["id"] ?></td>

            <td><button>sửa</button>
            <a class="xoa" href="xoanguoidung.php?id=<?php echo $row['id'] ?>">Xóa</a>
         </td>
         
        </tr>
        
        <?php
        }
        ?>
    </table>
</body>
</html>