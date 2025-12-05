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
    
    <h1>Phim</h1>
    <ul>
     <li class="tin"><a class="" href="index.php?page_layout=themphim">Thêm Phim</a></li>
    </ul>
    <table>
        <tr>
            <th>Tên phim</th>
            <th>Năm phát hành </th>
            <th>Quốc gia </th>
            <th>Số tập</th>
            <th>Thể loại </th>
            
        </tr>
        <?php
       include("connect.php");
        $sql = "SELECT p.ten_phim, p.nam_phat_hang, p.so_tap, p.id, 
                    tl.ten_the_loai, 
                    qp.ten_quoc_gia 
                FROM `phim` p 
                INNER JOIN `the_loai` tl ON p.id = tl.id
                INNER JOIN `quoc_gia` qp ON p.id = qp.id";
        $result = mysqli_query($conn, $sql);
        while($row = mysqli_fetch_array($result)){
        ?>
        <tr>
            <td><?php echo $row["ten_phim"] ?></td>
            <td><?php echo $row["nam_phat_hang"] ?></td>
            <td><?php echo $row["ten_quoc_gia"] ?></td>
            <td><?php echo $row["so_tap"] ?></td>
            <td><?php echo $row["ten_the_loai"] ?></td>         
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