<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Form phim</title>
  <style>
  </style>
</head>
<body>
<div class="body">
  <div class="container">
      <form action="" method="post">
     
           <div>
          <label for=""> Tên Phim </label>
          <input type="text" name="tenphim" placeholder="Tên phim">
     </div>

            <div>
          <label for=""> Năm phát hành </label>
          <input type="number" name="namphathanh" placeholder="Năm phát hành">
      </div>

            <div>
          <label for=""> Poster</label>
          <input type="text" name="poster" placeholder="poster">
       </div>

              <div>
          <label for=""> Quốc gia </label>
          <input type="text" name="qg" placeholder="Quốc gia">
       </div>

              <div>
          <label for=""> Số Tập </label>
          <input type="number" name="stap" placeholder="Số tập">
       </div>
       <div>
          <label for=""> Trailer</label>
          <input type="text" name="trailer" placeholder="Trailer">
       </div>
       <div>
          <label>Mô tả:</label>
            <textarea name="mota" rows="5" cols="50" placeholder="Nhập mô tả..."></textarea>
       </div>
       <div><input type="submit" value="Thêm Phim"></div>
      </form>
  </div>
</div>
  <?php
  include('connect.php');
  if(!empty($_POST['tenphim']) &&
  !empty($_POST['namphathanh']) &&
  !empty($_POST['poster']) &&
  !empty($_POST['qg']) &&
  !empty($_POST['stap']) &&
  !empty($_POST['trailer']) &&
  !empty($_POST['mota'])) { 
  $tenphim=$_POST['tenphim'];
  $namphathanh=$_POST['namphathanh'];
  $poster=$_POST['poster'];
  $qg=$_POST['qg'];
$gq = mysqli_query($conn, "SELECT id FROM quoc_gia WHERE ten_quoc_gia = '$qg'");
if(mysqli_num_rows($gq) > 0){
    $qg = mysqli_fetch_assoc($gq)['id']; 
} else {
    echo "<p class='warning'>Quốc gia '$qg' không tồn tại trong bảng quoc_gia</p>";
    exit;
}
  $stap=$_POST['stap']; 
  $trailer=$_POST['trailer']; 
  $mota=$_POST['mota'];

  $sql="INSERT INTO `phim`(`ten_phim`, `nam_phat_hang`, `poster`, `quoc_gia_id`, `so_tap`, `trailer`, `mo_ta`) 
  VALUES ('$tenphim', '$namphathanh', '$poster', '$qg', '$stap', '$trailer', '$mota')";
  // echo $sql;
   // kiem tra dtb co them vao duoc khong 
             if(mysqli_query($conn,$sql)){
                header("Location: index.php?page_layout=phim");
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