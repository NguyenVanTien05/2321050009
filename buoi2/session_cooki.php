<?php

// cookie
#lưu ở phía người dùng
#dùng cho thông tin ít quan trọng
$cookieName = "user";
$cookieValue = "VanTien";
// 86400 = 30 ngay
setcookie($cookieName, $cookieValue,time()+(86400), "/");
if(isset($_COOKIE[$cookieName])){
    echo "cookie da ton tai";
}
else{
    echo "cookie chua ton tai";
}
// Session
#thông tin đăng nhập,giỏ hàng,...(thông tin quan trọng)
session_start();
$_SESSION["name"]="VanTien";
echo $_SESSION["name"];
?>