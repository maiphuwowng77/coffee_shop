# BÀI TẬP LỚN CSDL 
## Video demo: <a href="https://l.facebook.com/l.php?u=https%3A%2F%2Fdrive.google.com%2Ffile%2Fd%2F11yt6_eSQbo-0pmdGSY7xWjhmosB9FLEe%2Fview%3Ffbclid%3DIwAR1fgav-DCk8xDazHJ8uDV-NELM3OmNqe-7nvkLMmMlbnsOn51YHROqNZgw&h=AT39YH0f8yWplgUi_0e1bTaVnrgaS_Gi92q7gsiDzmB-pHdFGGzIf3CfqAWBVLXl3nt79ter6eZOoPJ4AJoGi8C8c0XFYJH2d7lI8BTqqfUZF4LJlRBBfhlByIW75O4ZSeftSAyrNDRg7PasaC_Jmg"> Demo</a> (Bật chế độ HD để xem video rõ nét hơn)
## Thành viên nhóm
* Lương Thị Mai Phương_21020783

* Đặng Thị Thanh Hiền_21020315

* Lương Phùng Nhâm_21021660

* Phạm Minh Tâm_21020319


# The_Coffee_Shop
<img src="https://raw.githubusercontent.com/maiphuwowng77/coffee_shop/main/coffee_shop/coffeeshop-home/img/stores/221BBakerStreet.jpg" alt="..." width="800">

## Nhiệm vụ nghiên cứu
Trang web này được tạo ra nhằm hy vọng mang đến sự thuận tiện cho người sử dụng cũng như giúp cho các chủ quán có thể xem
xét một cách tổng quán tình hình kinh doanh của quán mình.
Giúp khách hàng tiện lợi hơn trong việc đặt món và gọi món,xuất hóa đơn cho khách hàng.
Trang web còn mang lại lợi ích kinh tế là giải pháp giúp việc quản lý trở nên đơn giản và thân thiện với mọi người.


## Công nghệ sử dụng
* Nghiên cứu cơ sở lý thuyết về phân tích và thiết kế hệ thống thông tin.
* Hệ quả trị CSDL.
* Sử dụng các công cụ như html,boostrap,css cho frontend
* php,js cho backend và mysql cho database
## Giai đoạn thực hiện
* Giai đoạn 1: Thu thâp tài liệu : Khảo sát tình hình thực tiễn,thu thập tài liệu.
* Giai đoạn 2: Nghiên cứu vấn đề : Đọc hiểu các tài liệu liên quan,nắm rõ vai trò,chức năngc của các công cụ ,ngôn ngữ 
lập trình
* Giai đoạn 3: Xây dựng phần mềm :Dựa vào các dữ liệu đã tham khảo, phân tích,
* Giai đoạn 4: Kiểm thử chương trình: Chạy demo,xem xét đánh giá chức năng.Sửa lỗi hoàn thiện chương trình.
* Giai đoạn 5: Kết luận rút ra kết luận cho đề tài.

## Hướng dẫn
* Bước 1: Clone project về máy tính cá nhân.
* Bước 2: Download và thiết lập xampp trên máy tính cá nhân.
* Bước 3: Mở thư mục xampp và thêm thư mục chứa toàn bộ dự án vào thư mục htdocs.
* Bước 4: Khởi động máy chủ xampp và bắt đầu Apache và MySql.
* Bước 5: Chạy trang web bằng đường link http://localhost/coffee_shop/

## Mục lục
 - [Thiết kế cơ sở dữ liệu](#database-design)
 - [Thiết kế web](#web-design)
   - [Trang web bán hàng](#web-design1)
   - [Trang web quản lý](#web-design2)
 - [Xem trước](#preview)

<a name = "database-design"></a>
## Thiết kế cơ sở dữ liệu
Sử dụng cơ sở dữ liệu sau:

<img src="https://raw.githubusercontent.com/maiphuwowng77/coffee_shop/main/coffeeshop_database/database.jpg" alt="..." width="800">

- Bảng customer là nơi chúng tôi lưu trữ thông tin của khách hàng. Có 5 cột khác nhau là  **mã khách hàng**, **tên khách hàng**,**số điện thoại**,**địa chỉ** và **email**
- Bảng order là nơi chúng tôi lưu trữ thông tin của đơn đặt hàng. Chúng ta có thể thấy **mã đơn hàng**, **mã số cửa hàng**, **ngày đặt hàng**, **ngày đặt hàng** và **giá trị của đơn hàng**.
- Trong orderdetails chúng tôi có **mã đơn hàng**, **mã sản phẩm**, **số lượng**, **giá** và **dòng sản phẩm**.
- Tiếp theo là bảng products chúng ta có **mã sản phẩm**, **tên sản phẩm**, **dòng sản phẩm**, **mô tả**, **giá** và **link ảnh**.
- Bảng store chúng ta bao gồm **mã số cửa hàng**, **số điện thoại**, **địa chỉ**, **thành phố**, **quốc gia** và **mã số của quản lý cửa hàng**.
- Bảng productline gồm **dòng sản phẩm**, **mô tả** và **link ảnh**.
- Cuối cùng là bảng employees gồm **mã số nhân viên**, **tên**, **giới tính**, **ngày sinh**, **điện thoại**, **email**, **mã số cửa hàng**, **mã số của quản lý**, **nghiệp vụ**, **ngày bắt đầu** của các nhân viên.
- Có khóa ngoại giữa các bảng products - productline, orderdetails - products, orderdetails - orders, orders - customers, orders - store, store - employees, employees - store, employees - employees.

<a name = "web-design"></a>
## Thiết kế web

<a name = "web-design1"></a>
### Trang web bán hàng
- Gồm trang chủ, giới thiệu về cửa hàng, trang đặt hàng, trang giỏ hàng để thanh toán và trang đăng nhập quản lý.

  
  <img src="https://raw.githubusercontent.com/maiphuwowng77/coffee_shop/main/coffee_shop/coffeeshop-home/img/demo2/trang chủ.jpg" alt="..." width="800">
  
  
- Giúp khách hàng có thể lựa chọn đồ uống yêu thích với giá cả và số lượng phù hợp để cho vào giỏ hàng.


<img src="https://raw.githubusercontent.com/maiphuwowng77/coffee_shop/main/coffee_shop/coffeeshop-home/img/demo2/dathang.jpg" alt="..." width="800">


- Trang giỏ hàng cho phép khách hàng chọn tiếp tục mua hàng, xóa giỏ hàng hoặc điền thông tin để thanh toán.

 
<img src="https://raw.githubusercontent.com/maiphuwowng77/coffee_shop/main/coffee_shop/coffeeshop-home/img/demo2/giohang.jpg" alt="..." width="800">


- Sau khi điền thông tin và ấn nút đặt hàng, thông tin đơn hàng, khách hàng được lưu vào trong cơ sở dữ liệu, màn hình hiện đơn hàng được đặt thành công và chi tiết hóa đơn.


<img src="https://raw.githubusercontent.com/maiphuwowng77/coffee_shop/main/coffee_shop/coffeeshop-home/img/demo2/thanhtoan.jpg" alt="..." width="800">

<a name = "web-design2"></a>
### Trang web quản lý 

- Đăng nhập vào tài khoản chủ để quản lý cửa hàng.


<img src="https://raw.githubusercontent.com/maiphuwowng77/coffee_shop/main/coffee_shop/coffeeshop-home/img/demo2/dangnhap.jpg" alt="..." width="800">


- Gồm mục quản lý nhân viên, quản lý sản phẩm, quản lý đơn hàng, quản lý khách hàng, trang chủ và đăng xuất.


<img src="https://raw.githubusercontent.com/maiphuwowng77/coffee_shop/main/coffee_shop/coffeeshop-home/img/demo2/nhanvien.jpg" alt="..." width="800">


- Giúp quản lý nhân viên, quản lý sản phẩm, có chức năng thêm, sửa, xóa thông tin nhân viên và sản phẩm.
- Giúp quản lý, kiểm tra thông tin đơn hàng và khách hàng một cách nhanh chóng.


<img src="https://raw.githubusercontent.com/maiphuwowng77/coffee_shop/main/coffee_shop/coffeeshop-home/img/demo2/qlsanpham.jpg" alt="..." width="800">

<a name = "preview"></a>
## Xem trước
* Liên kết với chúng tôi https://github.com/maiphuwowng77/coffee_shop

