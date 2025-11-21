# Quy tắc đặt tên trong lập trình và thiết kế hệ thống
# - camelCase: chữ cái đầu tiên của từ đầu tiên được viết thường, còn lại là viết hoa chữ cái đầu, vd:hocSinh,sinhVien
# - PascalCase: viết hoa tất cả các chữ cái đầu tiên của mỗi từ, vd: HocSinh, SinhVien
# - snake_case: viết thường các từ và cách nhau bởi dấu gạch dưới --> CSDL

# Khi viết truy vấn, những từ nào là keyword -> VIẾT IN HOA, VD: CREATE DATABASE quan_ly_sv
# 3. ôn tập truy vấn
# 3.1 Tạo database
# CREATE DATABASE quan_ly_sv;
USE quan_ly_sv;

# 3.2 Tạo bảng
CREATE TABLE IF NOT EXISTS sinh_vien(
	ma_sv INT PRIMARY KEY,
	ho_ten VARCHAR(50),
	nam_sinh INT
);

# 3.3 Chèn dữ liệu vào bảng
INSERT INTO sinh_vien (ma_sv, ho_ten, nam_sinh) VALUES
(1, "Nguyen Van An", 2002),
(2, "Nguyen Minh Thuy", 2001),
(3, "Tran Van Binh", 2001);

# 3.4 Truy vấn
# 3.4.1 Lấy tất cả dữ liệu
SELECT * FROM sinh_vien;
# 3.4.2 Lấy dữ liệu thheo điều kiện
SELECT * FROM sinh_vien WHERE nam_sinh > 2001;
# 3.4.3 Sắp xếp dữ liệu
SELECT * FROM sinh_vien ORDER BY ho_ten ASC;

# 4 CẬP NHÂP DỮ LIỆU
UPDATE sinh_vien SET nam_sinh = 2003 WHERE ma_sv = 1;

# 5 Xóa dữ liệu
DELETE FROM sinh_vien WHERE ma_sv = 1;