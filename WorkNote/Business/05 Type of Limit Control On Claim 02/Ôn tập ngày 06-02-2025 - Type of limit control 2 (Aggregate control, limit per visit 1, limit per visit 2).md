

Benefit Scale
Insurance type limit
![[Pasted image 20250206092955.png]]

Section limit
![[Pasted image 20250206093128.png]]
Act Limit
![[Pasted image 20250206093231.png]]

Aggregate control
![[Pasted image 20250206093412.png]]

**Limit Per visit - option 1 (Áp dụng mỗi lần đi làm khám ngoại trú)**

Benefit scale -> Define act of reference
![[Pasted image 20250206093558.png]]

Câu hỏi
+ LImit amount ở trên là của những thằng reference listing cộng lại. Hay chúng bằng nhau ?
	+ => Cộng lại của những thằng reference listing để bằng limit amount của thằng reference limit
	+ ![[Pasted image 20250206095429.png]]

**1 lần khám định nghĩa như thế nào ?**
+ Khám cùng một ngày
+ Liên quan đến cùng một chẩn đoán bệnh (Same diasnossis code)
+ Nằm dưới referece act code (Underr code OPCL)
Điều kiện hệ thống control
+ Cùng code bệnh
+ Cùng treatment date
+ Nằm dưới referece act code

**LImit Per visit - option 2** (Không quan tâm đến nhiều loại bệnh trong cùng một ngày điều trị)
=> Có lợi cho nhà bảo hiểm

+ Nằm ở đâu ?
	+ ![[Pasted image 20250206100118.png]]
	+ Ở trong aggregate limits và có tên là 1 OP VISIT
+ Type of limit 
	+ 12 month period / Date of prescription
	+ ![[Pasted image 20250206100326.png]]
	+ => 1 Lần khám không care đến chuyên khoa và chẩn đoán ?
		+ Không quan tâm đến Act code và Insurance type nào ?

Công thức tính ra số tiền bồi thường (Min reimbursement, Balance ?)
Lấy min ?

RULE TRIGGER FLOW CHECK KHI TẠO CLAIM
![[Pasted image 20250206102255.png]]
FIELD MAPPING TƯƠNG ỨNG
![[Pasted image 20250206102718.png]]
+ 1 liên quan đến situtation 
+ 2 liên quan đến group period
+ 3 liên quan đến period_covered
+ 4 liên quan đến policy (Ngày nộp hồ sơ)
	+ Trong vòng 1 năm (bao nhiêu thời gian) phải nộp hồ sơ
+ 5 liên quan đến policy
	+ Claim suspension
		+ Ngày hết hạn bồi thường
		+ Nếu vượt quá ngày nầy của treatment date
+ 6 liên quan đến phần bệnh của member
+ 7 liên quan đến phần bệnh được setup trong benefit
+ 8 liên quan đến giai đoạn chờ của bệnh ????


Wishlist
![[Pasted image 20250206104028.png]]


---
## Liên quan

[[Ôn tập ngày 04-02-2025 - Types of limit control on claim]]

