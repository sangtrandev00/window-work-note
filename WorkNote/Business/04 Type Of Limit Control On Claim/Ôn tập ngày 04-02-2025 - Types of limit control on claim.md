
![[Pasted image 20250204092246.png]]

Control ở Field Act
+ Nhập Insurance type
+ Nhập Act code

1 Đơn bảo hiểm có những loại limit nào ?
+ Lifetime limit (Đi theo tất cả các năm của nhà bảo hiểm) => Chưa control ở hệ thống
+ Overall limit (Quyền lợi tổng ?)
	+ 1 Năm người đó không biết khám loại bệnh nào => Tổng lại = overall limit này
+ Annual Limit by benefit (Hay quy định)
	+ Death accident
		+ Bị mất một phần cơ thể
	+ Death illness
		+ Bệnh, tử vong do nguyên nhân khác
	+ Inpatient
		+ Điều trị nội trú (Bệnh, thai sản)
	+ Outpaitient
		+ Điều trị ngoại trú (Bệnh + răng)
	+ Sub limit 
		+ Quyền lợi phụ

1 Ví dụ về việc bồi thường bảo hiểm. Tính toán trên Sheet

![[Pasted image 20250204094621.png]]


**Hệ thống chạy như sau**
+ Có số tiền yêu cầu bồi thường
+ Hệ thống tính toán -> đưa ra con số reimburse basis cho mình
+ reimburse primary
+ reimburse secondary dựa trên lịch sử bồi thường và số tiền balance còn lại
+ Ra tổng total reimburse 
	+ = reimburse primary + reimburse secondary

**Công thức tính toán số tiền cơ bản**:
+ Phải biết Rate là bao nhiêu phần trăm
	+ Register (Link với mục medical provider)
	+ Not register (Link với mục medical provider)
	+ DB Rate

**Công thức tính toán số tiền balance**
+ balance = **limit** - **utilization**
	+ utilization: Khách hàng đã sử dụng
		+ utilization: Tính thông qua claim detail ?
		+ tính ngầm của hệ thống
	+ limit 
		+ bồi thường theo giới hạn của hệ thống (5 loại limit)
		+ limit tính từ trên xuống
			+ Overall limit
			+ Anual
			+ Sublimit
+ balance dùng để tính toán được **reimbursement basis**

**Thứ tự check limit**
+ Treatment Date > Đối chiếu 
	+ Plan Period
		+ Nằm trong giai đoạn nào (Giao nhau)
+ Insurance type:
	+ level 1
	+ ![[Pasted image 20250204132239.png]]
	+ Insurance type effective date
	+ insurance type limit
		+ member
		+ family
+ Section level 2
	+ ![[Pasted image 20250204132448.png]]
	+ Check mối quan hệ
		+ là số 0,,1,2
		+ Lấy được đúng member limit hoặc spouse limit, hoặc children limit
	+ Thực tế bồi thường ở level section (level 2)
		+ ![[Pasted image 20250204132816.png]]
		+ => Bồi thường tối đa là 210.000.000 (Chưa có lịch sử - Claim detail trước đó)
	+ Có 2 loại control limit
		+ Dựa vào amount
		+ Dựa vào quantity
+ Act level 3:
	+ ![[Pasted image 20250204133842.png]]
+ Aggregate control chéo (Trong 1 claim chung)
+ 


Rate lấy ở đâu ?
![[Pasted image 20250204094653.png]]
=> Lấy ở mục limit của Act

Giải thích trường trong hình
+ registered:
	+ 
+ not registered:
	+ ![[Pasted image 20250204101621.png]]
	+ Không được tick ở mục cơ sở y tế (Ở mục aggreement)


** Copayment ? Co-insurance
+ Đồng chi trả theo số phần trăm