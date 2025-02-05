
Module contract
![[Pasted image 20250203110325.png]]

A. Click Insurance Partners
![[Pasted image 20250203110450.png]]
+ Xem danh sách đối tác bảo hiểm

B. Click vào Client
![[Pasted image 20250203110618.png]]
+ Xem danh sách client
+ Tạo client

C. Pricing List 
Quản lý giá -> hiện tại không dùng

D. Click vào Module Policy hợp đồng
![[Pasted image 20250203112030.png]]
![[Pasted image 20250203112057.png]]

Chi tiết hợp đồng. Click vào 1 hợp đồng của client. Ví dụ Test Client T

![[Pasted image 20250203112158.png]]

Chú thích:
+ N of policy: Số hợp đồng
+ Hệ thống của mình mặc định là 1 năm (Control theo giai đoạn)
![[Pasted image 20250203112847.png]]
+ Ràng buộc về độ tuổi

Mục claim trong policy
![[Pasted image 20250203113121.png]]

+ Benefitiary of the claim payment
	+ Tick vào mục nào thì chỉ có member đó mới có hiệu lực (chỉ 1 trong 2 là member hoặc client)
+ 
Co-insurance là gì ? Đồng bảo hiểm ? Như thế nào là một đồng bảo hiểm ?
+ Vì 1 hợp đồng có thể có 2 nhà bảo hiểm 
+ Các công ty bảo hiểm sẽ cùng nhau bồi thường cho 1 đối tượng bảo hiểm

**Network của hợp đồng**
![[Pasted image 20250203113731.png]]

E. Vào mục Benefit (Scales of Compensations)
![[Pasted image 20250203114907.png]]

Chọn Code Scale (Chọn code của Benefit Scale) để lọc ra benefit scale cần tìm
![[Pasted image 20250203115722.png]]

Click chọn chi tiết 1 BS -> ra thông tin chi tiết của BS và danh sách insurance type
![[Pasted image 20250203115743.png]]

Giải thích các trường:
+ Type of limit:
	+ Loại limit cho từng bảo hiểm
	+ Calendar year
		+ Không quan tâm đến ngày hiệu lực bảo hiểm khi nào ?
		+ Vậy lúc này không cần giao điều kiện
	+ For every insurance period
		+ Ngày preauthorization
	+ 1 year from effective date
		+ 1 năm bắt đầu từ ngày hiệu lực hợp đồng
+ Intervertion of external
	+ Công thức tính control của benefit scale, ảnh hưởng đến cách tính limit của hệ thống
+ Limit per disability
	+ Check
		+ Áp dụng cho một loại bệnh nào đó
		+ Apply cho 1 bệnh thôi
	+ Không check
		+ Áp dụng hết tất cả các bệnh, tối đa 10.000$
	+ Eligible party
		+ Người được bảo hiểm (cá nhân)
	+ Family
		+ Gia đình limit
+ Applied to the secondary policy
	+ Áp dụng cho hợp đồng phụ
+ Continuity of limits
	+ Áp dụng với trường hợp khi người đó được thăng chức (tăng quyền lợi) trong 1 giai đoạn
	+ No continutiy
		+ Nguy hiểm (reset lại khi chuyển plan)
		+ Bị lỗ
	+ Change group with same policy
		+ Tick option này để khi chuyển sang quyền lợi khác vẫn tiếp tục tính cái limit đã sài trước đó
	+ Change Policy with the same insurer
		+ Ít xảy ra
		+ 1 nhân viên -> 1 hợp đồng, nhóm giám đóc -> 1 hợp đồng

** Vào level Section sau khi chọn cụ thể 1 insurance type
![[Pasted image 20250203134139.png]]

Giải thích các trường:
+ Deductible
	+ Trừ tiền
		+ Trừ số tiền bồi thường hay số tiền của khách đóng bảo hiểm
	+ Ví dụ: 
+ Các trường về VND và quantity
	+ Đối với các đơn bồi thường bảo hiểm ở việt nam -> chỉ control ở số tiền không control ở quantity

** Click vào chi tiết từng section -> level act
![[Pasted image 20250203140125.png]]

Giải thích các trường
3 dòng trên Rate for (cả 3 dòng đều phải giống nhau)
+ Registered
+ Not registered
+ DB rate
	+ Ví dụ nhập 80% thì khi bồi thường trên từng act sẽ như thế nào ? Chuyện gì sẽ xảy ra ?
+ deductible per one act
	+ Miễn thường trên 1 act
	+ Ví dụ: Chi phí khám bệnh áp dụng mức miễn thường là 1 triệu, nhập yêu cầu bồi thường là 2 triệu -> Hệ thống sẽ bồi thường chỉ 1 triệu thôi
+ Maximum amount for an act
	+ Giới hạn tối đa cho một lần khám
	+ Ví dụ chi phí yêu cầu bồi thường là 10 triệu. Nhưng tối đa của limit act ở trường này là 4.5 triệu -> Chỉ bồi thường 4.5 triệu thôi
+ Type of limit:
	+ Chọn option for every insurance period (Mỗi giai đoạn bảo hiểm)
	+ Có bao nhiêu loại ?
		+ Giống với section
		+ calendar
		+ evert insurance period
		+ monthly
+ Các trường bên phải chưa dùng

*** Tab Exclusions (Loại trừ)
![[Pasted image 20250203144312.png]]
+ Exclusion của act
+ Exclusion của bệnh **(Đang dùng)**
	+ Những bệnh nào là bệnh loại trừ
	+ Gặp code bệnh đó thì không bồi thường. Ví dụ bệnh HIVS, Tâm thần, Không thể điều trị ^^
+ Exclusion của thuốc
+ Có 2 loại control 
	+ Excluded (Loại hoàn toàn)
	+ Wating period (Thời gian chờ)
		+ Ví dụ: 265 đối với bệnh thai sản
		+ Để làm gì ?
			+ Để đến hết thời gian chờ thì mới exclude ? hay đến hết thời gian chờ thì mới hiệu lực

*** Tab cuối về Aggregate Limit
![[Pasted image 20250203144247.png]]

Control chéo

+ Control chéo theo act
	+ ![[Pasted image 20250203144929.png]]
	+ Tổng 2 act đó trong 1 năm không được vượt quá 45 triệu (trong 1 giai đoạn đó không được vượt quá 45 triệu)
+ Control chéo theo section
	+ ![[Pasted image 20250203144949.png]]
	+ Tổng 2 section đó trong 1 năm không được vượt quá 45 triệu

Chỉ có Aggregate theo section và chỉ có aggregate theo act
Không có gộp Aggregate vừa Section và Act khác
**Hạn chế:** Nếu khách hàng muốn chuyển nhóm thì sao ?

** LIMIT PER VISIT
Click vào cụ thể 1 Benefit Scale -> Button Define Act of reference
![[Pasted image 20250203145342.png]]
![[Pasted image 20250203145441.png]]



## Câu hỏi

+ Payment grouping là gì ?
+ Ai là người tạo Policy, Contract
	+ Bên Data processing sẽ setup giúp mình
+ Tạo 1 hợp đồng là primary và secondary để làm gì ?
+ Nhóm (Group) là gì ?
+ Nhóm (Group) khác gì với group period
+ Ai là người setup nhóm
+ Khi nào thì setup nhóm
+ Setup nhóm có cần điều kiện tiên quyết nào không ?
+ Ví dụ thực tế của việc bồi thường thông qua sheet
	+ ![[Pasted image 20250203143012.png]]
+ 
## Liên quan

https://fhenterprisedigitalsolutions.atlassian.net/wiki/spaces/SAS/pages/324370433/LISA+Basic+Data+Flow
Bài trước đó để ôn tập space repitition
[[Ôn tập ngày 03-02-2025 - Tổng quan về Claim|Ôn tập ngày 03-02-2025 - Tổng quan về Claim]]