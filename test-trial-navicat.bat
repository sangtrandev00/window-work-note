Testing Guide
+ Loại test:
	+ Unit test (Test từng đơn vị nhỏ như function, input, output)
	+ Integration test (Test các class liên quan với nhau ví dụ: Controller, Service, Repository)
	+ API Test (E2E test, test với data thật gọi request -> nghiệp vụ -> output)
+ Công cụ sử dung:
	+ Đã sử dung qua Jest
	+ Postman thường xuyên dung
+ Quy tắc viết test:
	+ Cho một ví dụ theo cấu trúc (Given - When - Then)
+ Chạy test:
	+ => Okay
	+ Coverage như thế nào ? => Xem lại
+ Câu hỏi:
	+ Test case lấy ở đâu => Mình là người viết các testcase

API Standard:
+ Quy tắc đặt tên: OK
+ Quy tắc sử dung HTTP methods: OK
+ Cách trả về Response:
	+ Frontend quy định ?
	+ Đọc để hiểu rõ hơn về các lỗi

Security standards:
	+ Đọc them Sanitization, snyk, audit

Cách Debug và Logging:
	+ Cách viết log: => Cho thêm ví dụ cụ thể
	+ Phân cấp log: => Ví dụ cụ thể
	+ Debug: Giống VSCode không ? => Đọc thêm

Mô tả về các portal ở Việt Nam
Tập trung vào mảng bồi thường bảo hiểm về các vấn đề sức khỏe.
Thuât ngữ cần nắm: 
+ Claim: Yêu cầu bồi thường
+ Policy Admin Portal: Tạo các hợp đồng từ bên bên đối tác (User cuối và bệnh viên)
+ Direct Billing Portal: Thanh toán trực tiếp tại bệnh viên & Thanh toán thông qua trung gian (Fullterton health)
+ Provider Portal: Cơ sở y tế và các bệnh viên, thiết bị, phòng khám -> Xem được các network và whitelist của họ
+ Partner Portal: Thống kê ngân sách chi tiêu của Partner đó (thường là bệnh viện)
+ Codex Portal: Codex Portal - Tạo các template thư viện -> và phân bố các library đó cho Partner
+ Member Portal: Cho khách hang cuối đăng ký bảo hiểm tại Fullterton health hoặc bệnh viện.