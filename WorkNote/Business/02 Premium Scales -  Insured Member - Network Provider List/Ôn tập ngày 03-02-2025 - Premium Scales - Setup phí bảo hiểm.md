![[Pasted image 20250203152624.png]]

Sau khi click chọn
![[Pasted image 20250203152819.png]]

Tìm kiếm theo tên. Ví dụ: MPW => ra được thông tin chung của premium scale
![[Pasted image 20250203152924.png]]

Mode of Prorata:
+ Days (Được chọn nhiều)
	+ Tính theo từng ngày và chia 365
+ No prodata
	+1 người bảo hiểm vào bắt đầu tham gia nữa năm  => Phí bảo hiểm của người đó là 12 triệu
+ Tariff by 
	+ Beneficiary: Option mua cho cá nhân
	+ Family: Option mua cho cả gia đình
+ No premium refund if claim ccurred during the insurance period
	+ Nếu 1 người nào đó phát sinh claim rồi -> Người đó hủy đơn -> không trả lại phần còn lại

** Tab setup phí:
![[Pasted image 20250203153916.png]]

+ Phí bảo hiểm là do bên mình nhập cho khách ?

** TAB GROUP:
![[Pasted image 20250203154813.png]]
Tìm group theo client
![[Pasted image 20250203154854.png]]

![[Pasted image 20250203154919.png]]

Setup client -> gắn vào group (Tạo group) -> Setup giai đoạn Group Period (Ngày bắt đầu và ngày kết thúc)
+ Thường tạo một giai đoạn có 12 tháng

+ Tick prenium paid sẽ ảnh hưởng 
	+ Không tick sẽ không được bồi thường
3 thông tin quan trọng nhất mà User cần phải nhập ở mục group (Plan) theo giai đoạn ==> NÓI THẲNG RA LÀ TẠO GROUP PERIOD
+ Policy (Chọn 1 policy)
+ Benefit Scale (Chọn bộ quyền lợi)
+ Chọn Premium (Phí bảo hiểm đã setup ở mục trước)

Trong quá trình setup Group Period ta có thể chọn primary và secondary policy
 
** Tab Client Aggreement là gì ?
![[Pasted image 20250203160501.png]]

Mục đích ?
Có phải setup danh sách whitelist những medical providers hợp lệ để bồi thường bảo hiểm ?


MODULE ADHESION (Phần liên quan đến người được bảo hiểm) ===> Module này liên quan đến bảng member và situation
![[Pasted image 20250203162755.png]]

+ New membership (Tạo thủ công insured member - người được bảo hiểm)
+ Membership modification (Điều chỉnh)
+ Intergration of benefitciaries (Up excel)

Tab New Membership
![[Pasted image 20250203163025.png]]

![[Pasted image 20250203163209.png]]

NHỮNG THÔNG TIN NÀY LIÊN QUAN ĐẾN CÁC CHALLENGE CỦA A CHÂU
+ Giải thích
	+ effective date
	+ registration number
	+ end of card validity (Ngày hết hạn thẻ)
	+ canceled date: Ngày hết hiệu lực
	+ Date of DB suspension/ claim suspension
		+ Ngày tạm dừng bồi thường từ ngày
		+ Tất cả hồ sơ tạo sau ngày suspension này sẽ chặn không cho bồi thường
	+ S.O.G: 
		+ Trường loại bỏ
	+ Apply waiting period ?
		+ Có tick
			+ Kết hợp với loại trừ bệnh -> Sẽ hiệu lực
		+ Không tick
			+ Kết hợp với loại trừ bệnh -> Không thể hiệu lực
	+ **Exceptional payment** ???
	+ Beneficiary of payment: 
		+ Người được nhận tiền bồi thường ?
		+ Tick chọn -> Chi trả cho người được chọn
		+ Không chọn -> Không được chi trả

![[Pasted image 20250203165157.png]]


Phần phía dưới là thông tin giai đoạn bảo hiểm của khách hàng (tương ứng với bảng situation)
Hồ sơ đó thuộc giai đoạn nào ?

** Tab Exclusion trong Members
![[Pasted image 20250203165602.png]]
Apply cho từng người cụ thể

### CLAIM -> DIRECT BILLING CLAIM
![[Pasted image 20250203170816.png]]
![[Pasted image 20250203170848.png]]
Chọn 1 cơ sở y tế
![[Pasted image 20250203170919.png]]
Flow trigger ở direct billing claim theo thứ tự như thế nào ?

Control về network
![[Pasted image 20250203171205.png]]

+ Default
	+ Thông thường, network không bị hạn chế gì hết
	+ Những cơ sở y tết nào nằm trong default network đó
+ Blacklist
	+ Gắn từng provider vào network blacklist này
	+ Từ chối và không được bồi thường
+ Limited
	+ Chỉ có những cơ sở y tết được chọn trong limted network này thì mới có thể được bồi thường


## Câu hỏi



---
## Liên quan

[[Ôn tập ngày 03-02-2025 về setup hợp đồng, benefit]]
https://fhenterprisedigitalsolutions.atlassian.net/wiki/spaces/SAS/pages/59211779/PREMIUM+SCALES+-+INSURED+MEMBER+-+NETWORK+PROVIDER+LIST+-+DBP+PHASE+2