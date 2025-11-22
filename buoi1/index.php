<<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>buoi1 PHP</title>
</head>
<body>
    <?php
    //1. In ra màn hình
        echo"Hello World <br>"; 
        // có thể chèn css html js vào PHP
        
        echo"Hi <br>";
        //2. Biến trong PHP
        //Cú pháp: $ + tên biến= giá trị của biến
        $ten="Nguyễn Đình Thái";
        $tuoi=20;
         echo $ten."  ".$tuoi ."    tuổi <br>";
         //3. Hằng trong PHp
         //Cú pháp: define(tên hằng, giá trị của hằng);
            define("soPI",3.14);
            echo  soPI;
        //4. Phân biệt '' và "
        echo ' $ten<br> '; //in ra đúng những gì mk viết bên trong nhay đơn
        echo "$ten<br>";  //in tra giá trị
        //5.Chuỗi
        #5.1 kiểm tra độ dài chuỗi

        echo strlen($ten ."<br>");   
        #5.2 Đếm số từ
        echo str_word_count($ten) . "<br>";
        #   5.3 Tìm kiếm ký tự trong chuỗi
        echo strpos($ten, "T") . "<br>" ;
        # 5.4 Thay thế ký tự trong chuỗi
        echo str_replace("Thái","Linh",$ten)."<br>";

        //6. Toán tử
        $soThuNhat = 10;
        $soThuHai = 5;
        # + - * /
        # += -= &= /= %=
        # so sánh == != > < >= <= ===
        echo $soThuNhat < $soThuHai;
        $tong= $soThuNhat + $soThuHai;
        echo $tong . "<br>";

        #7. Câu điều kiện
        //if("Điều kiện"){
            //logic
        //}
        //else if("Điều kiện"){
            //logic
        //}

        //Kiểm tra tổng của stn và sth  (<15 thì in ra nhỏ hơn 15, =15 thì in ra tổng bằng 15 còn lại in ra lớn hơn 15)
     if($tong < 15){
        echo "nhỏ hơn 15". "<br>";
    }
    elseif($tong == 15){
        echo"tổng bằng 15". "<br>";
    }
    else{
        echo"tổng lớn hơn 15". "<br>";
    } 

    //8. switch case
    $color = "red";
    switch ($color){
        case "red":
            echo "is red". "<br>";
            break;
        case "blue":
            echo "is blue";
            break;
        case "yellow":
            echo "is yellow";
            break;
    }
    
    
    //9. FOR
    //for ($i=0;$i <100; $i++){
      //  echo $i . "<br>";
    //}

    //10. Mảng
    $mang = ["An","Nhật Anh", "Vũ Anh", ];
    echo count($mang). "<br>";
    echo $mang[1]. "<br>";
    print_r($mang). "<br>";
    $mang[0] = "Hải Anh";
    print_r($mang) . "<br>";
    

    ?>

    
    
    
</body>
</html>