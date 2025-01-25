
## Thông tin liên quan về Insured Member
![[Pasted image 20250114105242.png]]

## Thông tin liên quan về claim

![[Pasted image 20250114102935.png]]

![[Pasted image 20250114105204.png]]


+ member_family_id và member_suffix_id ở bảng claim và claim_detail khác nhau như thế nào ?
	+ ở bảng claim_detail thì chi tiết hơn ?
	+ Claim detail Cho biết người nào đang đi điều trị vào ngày nào ? (treatmentDate)
	+ Ở claim thì member_id là người đứng tên thụ hưởng ? (cá nhân, tổ chức, bệnh viện nào ?)
+ **Câu hỏi:** 
	+ Hãy diễn đạt bằng lời bảng claim và claim detail dựa vào các khóa

![[Pasted image 20250114105830.png]]

## Thông tin liên quan về Annual Limit

![[Pasted image 20250114111624.png]]

Đầu tiên là loại Annual Limit (Giới hạn chi phí khám hàng năm)
+ Eligible limit
+ Family limit: Giới hạn tổng của người đó
	+ Gồm /0, /1, /2, /3, /4
	+ Trường này chỉ tính toán cho member là cá nhân thôi đúng không ? Tính toán cho member là một tổ chức được không ?
	+ Khi nào thì dùng trường family limit này ? Dựa vào thuộc tính nào ? Ở bảng nào ?
	+ Giữa eligible limit và family limit thì chỉ được chọn 1 trong 2 loại để tính thôi đúng không ?
+ continuty

**Câu hỏi**:
	+ Phân biệt giúp em so sánh giữa 2 bảng act_reference_limit và act_of_reference_listing
	+ Có nhưng loại bảo hiểm (insurance type) không có giới hạn ngày không ? (limit per visit)
	+ **Nếu không có giới hạn ngày left join với bảng act_reference_limit ra null thì là không có ? hay là không giới hạn ?**

Thứ 2 là loại Limit per visit (Giới hạn mỗi lần khám)
![[Pasted image 20250114114548.png]]

![[Pasted image 20250114115058.png]]

Câu hỏi:
+ Phân biệt giữa bộ bảng act_reference_limit và act_of_reference_listing
	+ VD: OPCL -> (OPCSP, OPBIT)
	+ Tùy theo tình huống là sao nhỉ ?
	+ Ví dụ lần đi khám bệnh thuộc loại bệnh là OPCSP thì có được tính tiền trên mỗi lần khám không ? Hay phải bắt buộc là thằng cha ? OPCL mới được tính ?

## Phần thông tin liên quan aggregate control limit

![[Pasted image 20250114115728.png]]

![[Pasted image 20250114133804.png]]

![[Pasted image 20250114133640.png]]

+ Để active aggregate này người setup hợp đồng phải setup luôn các quyền lợi chéo
+ aggregate control limit chỉ là bảng mapp để aggreategate control period tính được limit dựa trên loại member nào.

![[Pasted image 20250114134125.png]]

**Câu hỏi:**
+ Phân biệt giúp em 4 bảng liên quan về aggregate control
+ Bảng **aggregate_control_limit**, **aggregate_control_period**, **aggregate_control_act**, **aggregate_control_list**, **aggregate_control_section**
![[Pasted image 20250117143606.png]]
### Phân loại limit per visit

![[Pasted image 20250114135641.png]]

## Câu hỏi

+ Phân biệt giữa deductable Amount và copayment ?
	+ Copayment: Trả một phần ?
	+ Deductable amount: Khấu trừ ?
		+ Member trả ?
		+ Người đi khám tự chịu, bởi vì chi phí khám không nằm trong benefit của bảo hiểm
		+ Chỉ là nơi để note thông tin thôi
		+ ![[Pasted image 20250114141215.png]]
+ Sự khác nhau giữa situation effective date, expiry date trong situation, group period, và policy và scale insurance type khác nhau như thế nào ?

Kiếm lịch sử chữa trị của member ở đâu ? Dựa trên **claim detail**
Cách tính approve_amount ? Min một con số thấp nhất của act và aggregate ?
