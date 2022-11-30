<?php
    session_start();
    include "thuvien.php";
    if(!isset($_SESSION['giohang'])) $_SESSION['giohang']=[];
    //làm rỗng giỏ hàng
    if(isset($_GET['delcart'])&&($_GET['delcart']==1)) unset($_SESSION['giohang']);
    //xóa sp trong giỏ hàng
    if(isset($_GET['delid'])&&($_GET['delid']>=0)){
       array_splice($_SESSION['giohang'],$_GET['delid'],1);
    }
    //lấy dữ liệu từ form
    if(isset($_POST['addcart'])&&($_POST['addcart'])){
        $hinh=$_POST['hinh'];
        $tensp=$_POST['tensp'];
        $gia=$_POST['gia'];
        $soluong=$_POST['soluong'];

        //kiem tra sp co trong gio hang hay khong?

        $fl=0; //kiem tra sp co trung trong gio hang khong?

        for ($i=0; $i < sizeof($_SESSION['giohang']); $i++) { 
            
            if($_SESSION['giohang'][$i][1]==$tensp){
                $fl=1;
                $soluongnew=$soluong+$_SESSION['giohang'][$i][3];
                $_SESSION['giohang'][$i][3]=$soluongnew;
                break;

            }
            
        }
        //neu khong trung sp trong gio hang thi them moi
        if($fl==0){
            //them moi sp vao gio hang
            $sp=[$hinh,$tensp,$gia,$soluong];
            $_SESSION['giohang'][]=$sp;
        }

       // var_dump($_SESSION['giohang']);
    }


?>

<head>
    <title>The Coffee Shop</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="../img/logo.png">
    <link href="./stylesheets/general.css" rel="stylesheet">
    <link href="./stylesheets/button.css" rel="stylesheet">
    <link href="./stylesheets/layout.css" rel="stylesheet">
    <link href="./stylesheets/popup.css" rel="stylesheet">
    <link href="./stylesheets/product.css" rel="stylesheet">
    <!--<link href="./stylesheets/style.css" rel="stylesheet">-->
    <!--<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<header>
    <div class="tabBar">
        <div class="brandName" onclick="location.href='./introduction.html'">THE COFFEE SHOP</div>
        <button class="tabBtn" onclick="location.href='./index.html'" type="button">Trang chủ</button>
        <button class="tabBtn" onclick="location.href='./introduction.html'" type="button">Giới thiệu</button>
        <button class="tabBtn" onclick="location.href='./orderPage.html'" type="button">Đặt hàng</button>
        <button class="tabBtn" onclick="location.href='./cart.php'" type="button">Giỏ hàng</button>
    </div>

    
</header>

<div class="content">
    <ul class="slideshow">
        <li><span></span></li>
        <li><span></span></li>
        <li><span></span></li>
        <li><span></span></li>
        <li><span></span></li>
        <li><span></span></li>
        <li><span></span></li>
        <li><span></span></li>
        <li><span></span></li>
    </ul>
    <div>
        <form action="bill.php" method="post">
            <div class="container-fluid mt-3">
             <h2 style="width: 100%; text-align: center;"><font color="#fa9c21">Thông tin khách hàng</font></h2>
                    <table class="table table-bordered table-striped table-hover">
                        <tr>
                            <td width="20%">Họ tên</td>
                            <td><input type="text" class="form-control" name="hoten" required></td>
                        </tr>
                        <tr>
                            <td>Địa chỉ</td>
                            <td><input type="text" class="form-control" name="diachi"></td>
                        </tr>
                        <tr>
                            <td>Điện thoại</td>
                            <td><input type="text" class="form-control" name="dienthoai" required></td>
                        </tr>
                        <tr>
                            <td>Email</td>
                            <td><input type="text" class="form-control" name="email"></td>
                        </tr>
                    </table>
            </div>
            <div>
                <h2 style="width: 100%; text-align: center;"><font color="#fa9c21">Giỏ hàng</font></h2>
                <table class="table table-bordered table-striped table-hover">
                    <thead class="thead-dark">
                        <tr>
                            <th>STT</th>
                            <th>Hình</th>
                            <th>Tên sản phẩm</th>
                            <th>Đơn giá</th>
                            <th>Số lượng</th>
                            <th>Thành tiền (đ)</th>
                        </tr>
                        <?php showgiohang1(); ?>                  
                    </thead>
                </table>
            </div>
            <div class="row">
                &nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;
                <input type="submit" class="btn btn-warning" value="ĐẶT HÀNG" name="dongydathang">
                &nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;
                <a href="cart.php?delcart=1"><input type="button" class="btn btn-warning" value="XÓA GIỎ HÀNG"></a>
                &nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;
                <a href="orderPage.html"><input type="button" class="btn btn-warning" value="TIẾP TỤC ĐẶT HÀNG"></a>
            </div>
        </div>
    </form>   

</div>


<footer>
    <div class="dropdownGrid">
        <a style="font-size: 180%;">The Coffee Shop</a>
        <button class="dropdown">+ Thông tin website
            <div class="dropdown-content">
                <a href="./index.html">Trang chủ</a>
                <a href="./orderPage.html">Đặt hàng</a>
                
            </div>
        </button>
        <button class="dropdown">+ Hotline<div class="dropdown-content">
                <a href="./orderPage.html">Đặt hàng: 0000 1111 (7AM - 8:30PM)</a>
            </div></button>
    </div>
</footer>