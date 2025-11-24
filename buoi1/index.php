<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Buổi 1 PHP</title>
</head>
<body>
    <?php
    // 1.In ra màn hình 
    echo "Hello <br>";
    echo "Hi ";
    // 2. Biến
    $ten = " Van Tien";
    $tuoi = 20;
    echo $ten . " " . $tuoi . "Tuoi <br>";
    // 3. Hằng
    define("soPI","3,14 <br>");
    echo soPI;
    // 4. Phân biệt " " và ' '
    echo '$ten <br>';
    echo "$ten <br>";
    // 5. Chuỗi
    // 5.1 ktra độ dài của chuỗi
    echo strlen($ten) . "<br>";
    // 5.2 Đếm số từ
    echo str_word_count($ten) . "<br>";
    // 5.3 Tìm kiếm kí tự trong chuỗi
    echo strpos($ten,"n") . "<br>";
    // 5.4 Thay thế kí tự trong chuỗi
    echo str_replace("Van","Nguyen",$ten) . "<br>";
    // 6. Toán tử 
    $sothu1 = 10;
    $sothu2 = 5;
    // echo $sothu1 + $sothu2;
    //7. Câu điều kiện
    // Kiểm tra tổng của sothu1 và sothu2 <15 in ra "Nhỏ hơn 15" =15 "Tổng bằng 15" >15 "Lớn hơn 15"
    $tong = $sothu1 + $sothu2;
    if($tong<15){
        echo "Nhỏ hơn 15";
    }
    elseif($tong==15){
        echo "Tổng Bằng 15";
    }
    else{
        echo "Lớn hơn 15";
    }
    //8.Switch Case
    $color = "red";
    switch ($color){
        case "red":
            echo "is red";
            break;
        case "blue":
            echo "is blue";
            break;
        default:
        echo "no color";
        break;
    }
    //9.For
    // for($i=0;$i<100;$i++){
    //     echo $i . "<br>";
    // }
    // 10. Mảng
    $mang =["Tien", "Toan", "Tin"];
    // đếm mảng
    echo count($mang);
    echo $mang[1];
    print_r($mang);
    $mang[0]="TinTin";
    print_r($mang);
    $mang[0]="TinTinTin";
    print_r($mang);
    // Xoa
    unset($mang[3]);
    print_r($mang);
    // Sắp xếp mảng
    $mang2 = ["C","B","D","A"];
    print_r($mang2);
    echo "<br>";
    // Tăng
    sort($mang2);
    print_r($mang2);
    // Giảm
    rsort($mang2);
    echo "<br>";
    print_r($mang2);
    // 11. Kiểm tra xem biến có tồn tại hay ko
    $biena = "Hello";
    isset($biena);//true
    isset($bienb);//false
    if(isset($bienb)){
        echo "<br>";
        echo "bien nay co ton tai";
    }
    else{
        echo "<br>";
        echo "bien nay ko ton tai";
    }
    // Check empty
    $check = "";
    if(empty($check)){
        echo "<br>";
        echo "empty";
    }
    else{
        echo "<br>";
        echo "not empty";
    }
    // 12.Hàm
    // KO THAM SO
    function xinchao(){
        return "Hello";
    }
    echo xinchao();
    // CO THAM SO
    function xinchao2($biena){
        return "Hello".$biena;
    }
    echo xinchao2("Anh");
    
 ?>
</body>
</html>