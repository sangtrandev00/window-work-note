
Đặt tên nhánh ?


Đặt tên commit ?


Cách merge dự án ?


Flow thường dùng 

## Một ví dụ cụ thể
Flow cơ bản:
+ Git checkout master (Hoặc typeorm-vn)
+ Git pull (Kéo hết code mới nhất từ Repository về - ở đây là upstream) và merge vào local
+ Git checkout về nhánh của mình
+ **Rebase**
	+ Sử dụng git rebase master
	+ (Mỗi ngày rebase) => Giống mỗi ngày nên pull code mới về
	+ Để giải quyết conflict nhanh nhất có thể
	+ Lợi thế của rebase cho với merge là tránh được các cojmmit merge thừa
+ Resolve confict
	+ Sử dụng tool công cụ
	+ Trao đổi giữa các thành viên trong team (Giữ cái nào, bỏ cái nào)
	+ Có thể xem lại trong video
+ Solve message
	+ Gõ :wq
+  Git push lên
+ Yêu cầu review và merge vào dự án


## Các khái niệm
+ feat
+ fix
+ bugfix
+ hotfix


## Câu hỏi

Sự khác nhau giữa Git pull và Git fetch

Tình huống muốn một branch chỉ có 1 commit thôi ?
+ Dùng git Squash
+ Git Squash là gì ?
Làm sao để lấy được mà không muốn rebase
+ Dùng git cherry-pick ? (Không nên dùng nhiều lắm)
	+ Khi dùng git cherry pick. Commit được lấy để thêm vào thì sẽ luôn nằm ở trên đầu
	+ ![[Pasted image 20250207161234.png]]

+ Resolve conflict trên từng commit một 
	+ ![[Pasted image 20250207161345.png]]

Đang code mà muốn rebase thì làm sao ?
+ Git stash
+ Git pull
+ Git rebase master
+ Git stash apply
+ Resolve conflict
+ Code tiếp

--- 
## Liên quan

#git

