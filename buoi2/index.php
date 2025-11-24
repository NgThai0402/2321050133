<?php
    //session
    #Thông tin đăng nhập, giỏ hàng,...

    session_start();
    $_SESSION["name"] = "Nguyễn Thái 123"
    echo $_SESSION["name"];
    //cookie
    #Lưu ở phía người dùng
    # dùng cho những thông tin ít quan trọng

    $cookieName = "user";
    $cookieValue = "NguyenThai";
    //86400 = 1 ngày
    setcookie($cookieName, $cookieValue, time()+(86400), "/" );

    if(isset($_COOKIE[$cookieName])){
        echo"cookie đã tồn tại";
    }
    else{
        echo"cookie chưa tồn tại";
    }


?>