
Ví dụ về việc được check thông qua module Member Claim
![[Pasted image 20250203202312.png]]

Về trường Exe.provider
+ Mã cơ sỡ y tế điều trị
+ Ngày điều trị 
	+ Ở trường ngày điều trị -> Thực hiện 2 flow check
	+ Check trong giai đoạn bảo hiểm ? 
		+ Có ?
			+ Check thêm giai đoạn situation đó có được covered (tick hay không ?)
				+ Có thì cho qua field khác
				+ Được nhập các field khác tuy nhiên không được bồi thường
		+ Không có ?
			+ Show error cảnh báo
+ Sau khi pass treatment date:
+ Nhập disease
	+ Xem trong member có phần exclusion
	+ Hoặc xem trong exclusion của benefit scale
	+ Nếu exclusion của member có chứa các code bệnh exclusion -> không được tính claim
	+ Nếu không chứa, nhưng chưa tới hạn waiting period -> thì không được tính claim
+ Hiểu Waiting Period
	+ Thời gian chờ -> đi theo nhóm bệnh
	+ Đến ngày đó thì mới có hiệu lực của code bệnh (disease)
	+ **Tính từ thời gian nào ?**
		+ **Từ thời gian setup hợp đồng** -> Số ngày waiting period ? => SAI
		+ Waiting là ngày luôn mà  
		+ Lấy từ ngày setup hợp đồng (Tham gia bảo hiểm) để control => SAI
		+ Lấy ngày bắt đầu của giai đoạn mới nhất. Date start của group period ?
		+ Lấy từ ngày hiệu lực đầu tiên của member ? **FIRST EFFECTIVE DATE** ? CÁCH TÍNH FIRST EFFECTIVE DATE NHƯ THẾ NÀO ?
		+ ![[Pasted image 20250203220337.png]]
	+ Waiting period (Ai vào mới thì mới áp dụng thời gian chờ)
	+ ![[Pasted image 20250203215911.png]]


Ví dụ về việc tạo plan (Group period) kết hợp với Situation để biết việc yêu cầu bồi thường bảo hiểm có hợp lệ hay không ?
![[Pasted image 20250203203125.png]]


+ Trường prenium paid
	+ Tick
		+ Đã thanh toán tiền bảo hiểm rồi => Cho chi trả số tiền bồi thường
	+ Không tick
		+ Số tiền reimbursement luôn luôn bằng 0
+ No financial flow
	+ Khi tick
		+ Khi confirm claim -> Trạng thái của payment method: NONE
		+ Không proceed chuyển khoản
			+ Không thanh toán chuyện trả khoản cho khách hàng ?
	+ Không tick

**** Chú ý**
Member > Check Period Member > Check Tick Cover
Plan > Check Period của Plan > Check Preimum > Check No financial > Check Policy Number

** **FLOW CHECK CỦA POLICY**
-TAB POLICY IDENTIFICATION
![[Pasted image 20250203205135.png]]

Chú thích các trường trong mục policy

+ Max period of claim settlement ?
	+ Theo ngày
	+ Theo tháng
	+ Thời gian tối đa để nộp hồ sơ cho TPA -> giải quyết bồi thường của hợp đồng ?
	+ So sánh ngày tạo hồ sơ (policy) với ngày điều trị trên claim (treatment date): Trừ khoản thời gian đó ra là ý nghĩa của trường này
	+ Trong thời gian 1 tháng phải gửi hồ sơ cho TPA -> Mới được -> Quá 1 tháng thì không còn được giải quyết bồi thường nữa
+ Limit of validity of a PGC or and Estimate
	+ Dành cho direct billing claim ?
	+ Tên ý nghĩa của trường này là gì ?
	+ Hiệu lực của pre admision trong khoản thời gian ?
+ Management period ?
+ insurer
	+ Control Alert amount cho nhà bảo hiểm (send email, popup)
-TAB CLAIM TRONG POLICY
![[Pasted image 20250203211524.png]]

+ Date of DB suspension
	+ Ngày quá hạn điều trị
+ Beneficiary of the claim payment
	+ Member
	+ Client
	+ Tạo claim cho nào (member claim hay client claim)
+ Warning insurer
	+ Cảnh báo cho nhà bảo hiểm (Claim adjuster) khi số tiền vượt mức quy định


** Exclude trong Benefit Scale
![[Pasted image 20250203215140.png]]


## Câu hỏi

+ Thứ tự thực hiện flow check là từ đâu ?
+ Check khi nào ? Khi tạo claim để yêu cầu số tiền bồi thường ?


---
## Liên quan
https://fhenterprisedigitalsolutions.atlassian.net/wiki/spaces/SAS/pages/61276161/FLOW+CONTROL+CHECK+-+WHAT+WILL+CHECK+IN+CREATE+A+CLAIM

Bài trước để tiếp nối [[Ôn tập ngày 03-02-2025 - Premium Scales - Setup phí bảo hiểm]]

![[Pasted image 20250203214053.png]]