# BÀI TẬP LỚN CSDL 
## Thành viên nhóm
* Lương Mai Phương_21020783

* Đặng Thị Thanh Hiền_21020315

* Lương Phùng Nhâm_21021660

* Phạm Minh Tâm_21020319


# The_Coffee_Shop
<img src="https://raw.githubusercontent.com/maiphuwowng77/coffee_shop/main/coffee_shop/coffeeshop-home/img/stores/221BBakerStreet.jpg" alt="..." width="600">

## Nhiệm vụ nghiên cứu
Phần mềm này được tạo ra nhằm hy vọng mang đến sự thuận tiện cho người sử dụng cũng như giúp cho các chủ quán có thể xem
xét một cách tổng quán tình hình kinh doanh của quán mình.
Giúp khách hàng tiện lợi hơn trong việc đặt món và gọi món,xuất hóa đơn cho khách hàng.
Phần mềm còn mang lại lợi ích kinh tế là giải pháp giúp việc quản lý trở nên đơn giản và thân thiện với mọi người.


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
* Bước 1: Clone project.
* Bước 2: Download và thiết lập Xampp.
* Bước 3: Mở thư mục Xampp và dán toàn bộ dự án vào thư mục htdocs.
* Bước 4: Khởi động máy chủ Xampp và bắt đầu apache và mysql.
* Bước 5: Chạy trang web bằng đường link http://localhost/coffee_shop/

## Mục lục
- [Cơ sở dữ liệu quán cà phê](#coffee-shop-database)
  - [Mục lục](#table-of-content)
  - [Thết kế cớ sở dự liệu](#database-design)
  - [Xem trước](#preview)

## Thiết kế cơ sở dữ liệu
Sử dụng cơ sở dữ liệu

<img src="https://raw.githubusercontent.com/maiphuwowng77/coffee_shop/main/coffeeshop_database/database.jpg" alt="..." width="800">

- Bảng Customer là nơi chúng tôi lưu trữ thông tin của khách hàng. Có 5 hàng khác nhau là  **mã khách hàng**, **tên khách hàng**,**số điện thoại**,**địa chỉ** và **email**
- Bảng Order là nơi chúng tôi lưu trữ thông tin của đơn đặt hàng. Chúng ta có thể thấy **ID** của cửa hàng, ngày đặt hàng và mã đơn đặt.
- Trong Orderdetails chúng tôi có mã đơn đặt,mã dòng sản phẩm,chất lượng sản phẩm và dòng sản phẩm.
- Tiếp theo là bảng products chúng ta có mã sản phẩm, dòng sản phẩm,mục mô tả và giá cả.
- Bảng Store chúng ta bao gồm mã cửa hàng, số điện thoại, địa chỉ và mã của quản lý cửa hàng.
- Productlines gồm dòng sản phẩm, mô tả kèm theo hình ảnh.
- Cuối cùng là bảng employees gồm tên,mã và ngày sinh , điện thoại,email của các nhân viên.

## Xem trước

* Liên kết với chúng tôi https://github.com/maiphuwowng77/coffee_shop

