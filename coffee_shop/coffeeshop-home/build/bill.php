<?php
	session_start();
	require_once ('../../db/dbhelper.php');
	include "thuvien.php";
    $ttkh = "";
    $ttghang = "";
	if(isset($_POST['dongydathang']) && ($_POST['dongydathang'])) {
		// lay thong tin kh để tao ma kh
		$customerName = $_POST['hoten'];
		$address = $_POST['diachi'];
		$phone = $_POST['dienthoai'];
		$email = $_POST['email'];
		//insert khach hang neu chua co
		$customerNumber = taokhachhang($customerName,$address,$phone,$email);

		// lay thong tin don hang de tao order
		$total = tongdonhang();
		$orderNumber = taodonhang($customerNumber,$total);

		// lay thong tin don hang de tao orderdetail
		for($i=0; $i < sizeof($_SESSION['giohang']); $i++) {
			$productName = $_SESSION['giohang'][$i][1];
			$priceEach = $_SESSION['giohang'][$i][2]; 
			$quantity = $_SESSION['giohang'][$i][3];
			$orderLineNumber = $i + 1;
			taogiohang($orderNumber, $productName, $quantity, $priceEach, $orderLineNumber);
		}

		// show don hang
		$ttkh = '<h5>Bạn đã tạo thành công đơn hàng.</h5>
					<h2>Mã đơn hàng: '.$orderNumber.'</h2>
					<h2 style="width: 100%; text-align: center;">Thông tin khách hàng</h2>
					<table class="table table-bordered table-striped table-hover">
                        <tr>
                            <td width="20%">Họ tên</td>
                            <td>'.$customerName.'</td>
                        </tr>
                        <tr>
                            <td>Địa chỉ</td>
                            <td>'.$address.'</td>
                        </tr>
                        <tr>
                            <td>Điện thoại</td>
                            <td>'.$phone.'</td>
                        </tr>
                        <tr>
                            <td>Email</td>
                            <td>'.$email.'</td>
                        </tr>
                    </table>';

        $ttghang = showgiohang();
		
		// unset session
        unset($_SESSION['giohang']);

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
        <button class="tabBtn" onclick="location.href='./user.php'" type="button">Giới thiệu</button>
        <button class="tabBtn" onclick="location.href='./orderPage.html'" type="button">Đặt hàng</button>
        <button class="tabBtn" onclick="location.href='./cart.php'" type="button">Giỏ hàng</button>
    </div>    
</header>

<div class="content">
    <div>
            <div class="container-fluid mt-3">
             	<?php echo $ttkh;?>
                    
            </div>
            <div>
                <h2 style="width: 100%; text-align: center;">Giỏ hàng</h2>
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
                        <?php echo $ttghang;?>                  
                    </thead>
                </table>
            </div>
            
        </div>  
      <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>

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
