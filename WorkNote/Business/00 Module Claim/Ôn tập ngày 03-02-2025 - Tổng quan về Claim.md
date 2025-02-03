
![[Pasted image 20250203085013.png]]

2 module chính:
+ Claim
+ Policy

2 Tab chính:
Contract Claim

Quan trọng
ABCE

### Chú thích từng tab

Member claims
+ Bồi thường cho thành viên của client

Client claims
+ Bồi thường cho bên công ty/cá nhân đại diện của hợp đồng

Direct billing Claims: (Bệnh viện đã bảo lãnh rồi)
+ Trả tiền cho cơ sở y tế

Print claims:
+ Giải quyết claim
+ Close claim (Không cho edit được nữa)

### Giao diện member claim

![[Pasted image 20250203085904.png]]

4 trường ở trên là cái tìm kiếm.
+ Tìm kiếm ra thông tin của ai ?
	+ Member chính và các member phụ
+ Name of family N of the member: Số thẻ của member

Sau khi search, kết quả

![[Pasted image 20250203090243.png]]
Sau khi click vào từng member -> Ra được member chi tiết
![[Pasted image 20250203090340.png]]

Tạo hồ sơ mới -> click vào [button] New Claim -> 
![[Pasted image 20250203090432.png]]

*** Về mặt business rule
Không có công ty bảo hiểm nào, cho phép 1 claim -> có nhiều member
Mỗi claim -> chỉ thỏa hiệp duy nhất 1 member

*** Chú thích các trường khi tạo mới hồ sơ bồi thường (claim)
+ reference provider (optional)
	+ Lấy thông tin lộ trình điều trị trước (Ở đây là đến từ cơ sỡ y tế nào)
	+ Ngày bên dưới reference provider: Ngày request nhập viện/ Ngày gửi lộ trình điều trị
+ exe.provider (required)
	+ Thực tế người điều trị tại đó
	+ Ngày bên dưới là ngày điều trị của khách hàng
+ disease
	+ Nhập code bênh theo chuẩn ICP code 10
+ act (1 hành động)
	+ Ví dụ: Khám bệnh
	+ Nhâp level 3:
		+ Ví du: OPCL
		+ OPCL là viết tắt của 
			+ OP: Out patient
				+ Ngoai trú
			+ CL: Claim
				+ Yêu cầu bồi thường
	+ Nhâp level 1:
		+ Ví du: VNC
+ drug
	+ Nhâp thuốc (mã thuốc)
+ qty
	+ Số lương tương ứng với môt Act
	+ Ví du: Số lương ngày nằm viên 1 ngày là 5 -> nhâp 5
+ pracical exp
	+ Số tiền yêu cầu
	+ Dòng trên: Request amount, medical expense 
	+ Dòng dưới: Số tiền deduct, số tiền bị trừ
+ **reimb.basis**
	+ Yêu cầu bồi thường ban đầu ?
	+ [[Ôn tập ngày 03-02-2025 về setup hợp đồng, benefit|Ôn tập ngày 03-02-2025 về setup hợp đồng, benefit]]
	+ Phải tính
	+ Tính theo hạn mức còn lại của mình (Dựa trên danh sách lịch sử ở Claim Detail)
+ **reimb.pp**
	+ Số tiền chi trả cho hợp đồng chính là bao nhiêu ?
+ **reimb.sp**
	+ Số tiền chi trả cho hợp đồng phụ là bao nhiêu ?
+ **total reimb.**
	+ Tồng số tiền yêu cầu bồi thường

==> Mỗi trường input khi nhập claim của member -> luôn có function control (kiểu validate trên UI form và ở dưới backend)

#### Ví dụ khi nhập đầy đủ thông tin của yêu cầu bồi thường
![[Pasted image 20250203093658.png]]

![[Pasted image 20250203094457.png]]

1 Claim -> 1 member -> nhiều ACT


** Click nút confirm
![[Pasted image 20250203095136.png]]

Show ra popup confirm (Để xác nhận lại trước khi save vào hệ thống)

Chú thích popup
**Status of claim** (Có nhiều hơn)
+ pending:
	+  Pending nội bộ
+ pending forr insurer approval
	+ Chờ bảo hiểm duyệt
+ pending GS management
	+ Chờ khách bổ sung chứng từ
+ to be paid
	+ Hồ sơ chuyển sang phần chờ giải quyết, duyệt hồ sơ
Number Invoice:
+ Số lượng hóa đơn
	+ 1 hồ sơ cơ thể có nhiều hơn một hóa đơn
Claim message: 
+ Nằm trong bảng claim detail (DCP)


## Setup bồi thường cho client

![[Pasted image 20250203100859.png]]
![[Pasted image 20250203101223.png]]
![[Pasted image 20250203101238.png]]

+ Cách nhập và cách control y chang bên member claim
+ Được nhập được nhiều số thẻ (ở quá khứ) ? Ở hiện tại thì sao ?

## Chốt hạ claim -> Print claim

User sẽ không được chỉnh sửa (Còn nhận tiền hay chưa thì bên hệ thống xử lý)

![[Pasted image 20250203101544.png]]

Bấm creation payment groups
![[Pasted image 20250203101823.png]]


## Câu hỏi
+ Có bao nhiêu cấp đô quyền lơi để control limit
	+ Insurance type code
	+ Section code
	+ Act code
+ Ngoai trú và nội trú tên viết tắt tiếng anh là gì ?
+ Khi nào thì 1 claim thành công ?
	+ Nhập data lên hệ thống 
	+ Kế toán chuyển tiền bồi thường
	+ Công ty bảo hiểm trả tiền cho mình
	+ Đóng hồ sơ hồi thường
+ Phạm vi bồi thường của Benefit
	+ Claim nào ?
	+ Benefit code nào ?
## Lưu ý

+ Hệ thống hiện tại chưa cover 100% các yêu cầu, nhu cầu của bảo hiểm
+ Sau này phát sinh thêm module revise (Để trừ ra các trường hợp tính toán sai sót của các bước trước đó)

---
## Liên quan

https://chatgpt.com/share/67a02900-f8c8-8013-b8a8-0a20725cde4d