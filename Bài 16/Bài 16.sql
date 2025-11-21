CREATE DATABASE IF NOT EXISTS quan_ly_web_phim;
USE quan_ly_web_phim;

DROP TABLE IF EXISTS phim_dien_vien;
DROP TABLE IF EXISTS phim_the_loai;
DROP TABLE IF EXISTS tap_phim;
DROP TABLE IF EXISTS phim;
DROP TABLE IF EXISTS quoc_gia;
DROP TABLE IF EXISTS nguoi_dung;
DROP TABLE IF EXISTS vai_tro;
DROP TABLE IF EXISTS the_loai;

CREATE TABLE the_loai (
   id INT PRIMARY KEY AUTO_INCREMENT,
   ten_the_loai VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE vai_tro (
   id INT PRIMARY KEY AUTO_INCREMENT,
   ten_vai_tro VARCHAR(20) NOT NULL UNIQUE
);

CREATE TABLE nguoi_dung (
    id INT PRIMARY KEY AUTO_INCREMENT,
    ten_dang_nhap VARCHAR(50) NOT NULL UNIQUE,
    mat_khau VARCHAR(50) NOT NULL,
    ho_ten VARCHAR(50),
    email VARCHAR(50) UNIQUE,
    sdt VARCHAR(15),
    vai_tro_id INT,
    ngay_sinh DATE,
    FOREIGN KEY (vai_tro_id) REFERENCES vai_tro(id)
);

CREATE TABLE quoc_gia (
   id INT PRIMARY KEY AUTO_INCREMENT,
   ten_quoc_gia VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE phim (
    id INT PRIMARY KEY AUTO_INCREMENT,
    ten_phim VARCHAR(100),
    dao_dien_id INT,
    nam_phat_hanh INT,
    poster VARCHAR(100),
    quoc_gia_id INT,
    so_tap INT DEFAULT 1,
    trailer VARCHAR(150),
    mo_ta TEXT,
    FOREIGN KEY (dao_dien_id) REFERENCES nguoi_dung(id),
    FOREIGN KEY (quoc_gia_id) REFERENCES quoc_gia(id)
);

CREATE TABLE tap_phim (
    id INT PRIMARY KEY AUTO_INCREMENT,
    so_tap INT NOT NULL,
    tieu_de VARCHAR(255),
    phim_id INT NOT NULL,
    thoi_luong FLOAT,
    trailer VARCHAR(255),
    FOREIGN KEY (phim_id) REFERENCES phim(id),
    UNIQUE (phim_id, so_tap)
);

CREATE TABLE phim_the_loai (
    id INT PRIMARY KEY AUTO_INCREMENT,
    phim_id INT NOT NULL,
    the_loai_id INT NOT NULL,
    FOREIGN KEY (phim_id) REFERENCES phim(id),
    FOREIGN KEY (the_loai_id) REFERENCES the_loai(id),
    UNIQUE (phim_id, the_loai_id)
);

CREATE TABLE phim_dien_vien (
    id INT PRIMARY KEY AUTO_INCREMENT,
    phim_id INT NOT NULL,
    dien_vien_id INT NOT NULL,
    FOREIGN KEY (phim_id) REFERENCES phim(id),
    FOREIGN KEY (dien_vien_id) REFERENCES nguoi_dung(id),
    UNIQUE (phim_id, dien_vien_id)
);

INSERT INTO vai_tro (ten_vai_tro) VALUES
('Admin'), ('User'), ('Dạo diễn');

INSERT INTO quoc_gia (ten_quoc_gia) VALUES
('Việt Nam'), ('Hàn Quốc'), ('Mỹ'), ('Anh'), ('Nhật Bản'),
('Trung Quốc'), ('Thái Lan'), ('Pháp'), ('Đức'), ('Canada'),
('Úc'), ('Ấn Độ'), ('Ý'), ('Tây Ban Nha'), ('Brazil'),
('Mexico'), ('Nga'), ('UAE'), ('Indonesia'), ('Malaysia'),
('Singapore'), ('Philippines'), ('Thụy Điển'), ('Na Uy'), ('Đan Mạch'),
('Hà Lan'), ('Bỉ'), ('Thổ Nhĩ Kỳ'), ('Bồ Đào Nha'), ('Ba Lan');

INSERT INTO the_loai (ten_the_loai) VALUES
('Hành động'), ('Tình cảm'), ('Hài hước'), ('Kinh dị'), ('Viễn tưởng'),
('Hoạt hình'), ('Tâm lý'), ('Phiêu lưu'), ('Cổ trang'), ('Hình sự'),
('Thần thoại'), ('Võ thuật'), ('Gia đình'), ('Âm nhạc'), ('Lãng mạn'),
('Khoa học'), ('Zombie'), ('Ma quỷ'), ('Điều tra'), ('Chiến tranh'),
('Tài liệu'), ('Ca nhạc'), ('Thể thao'), ('LGBT'), ('Học đường'),
('Bí ẩn'), ('Drama'), ('Hacker'), ('Tội phạm'), ('Siêu anh hùng');

INSERT INTO nguoi_dung 
(ten_dang_nhap, mat_khau, email, ho_ten, sdt, vai_tro_id, ngay_sinh)
VALUES
('duc1','123','user1@mail.com','Phạm Đức','0901',2,'2005-07-04'),
('thaingu','123','user2@mail.com','Nguyễn Đình Thái','0902',2,'2005-02-04'),
('user3','123','user3@mail.com','Le C','0903',2,'1992-03-03'),
('user4','123','user4@mail.com','Pham D','0904',2,'1993-04-04'),
('user5','123','user5@mail.com','Hoang E','0905',2,'1994-05-05'),
('user6','123','user6@mail.com','Do F','0906',2,'1990-06-06'),
('user7','123','user7@mail.com','Vo G','0907',2,'1991-07-07'),
('user8','123','user8@mail.com','Dang H','0908',2,'1992-08-08'),
('user9','123','user9@mail.com','Phan I','0909',2,'1993-09-09'),
('user10','123','user10@mail.com','Bui J','0910',2,'1994-10-10'),

('dd1','123','dd1@mail.com','Dao dien 1','0811',3,'1980-01-01'),
('dd2','123','dd2@mail.com','Dao dien 2','0812',3,'1981-02-02'),
('dd3','123','dd3@mail.com','Dao dien 3','0813',3,'1982-03-03'),
('dd4','123','dd4@mail.com','Dao dien 4','0814',3,'1983-04-04'),
('dd5','123','dd5@mail.com','Dao dien 5','0815',3,'1984-05-05'),
('dd6','123','dd6@mail.com','Dao dien 6','0816',3,'1985-06-06'),
('dd7','123','dd7@mail.com','Dao dien 7','0817',3,'1986-07-07'),
('dd8','123','dd8@mail.com','Dao dien 8','0818',3,'1987-08-08'),
('dd9','123','dd9@mail.com','Dao dien 9','0819',3,'1988-09-09'),
('dd10','123','dd10@mail.com','Dao dien 10','0820',3,'1989-10-10');

INSERT INTO phim 
(ten_phim, dao_dien_id, nam_phat_hanh, poster, quoc_gia_id, so_tap, trailer, mo_ta)
VALUES
('Phim 1',11,2020,'poster1.jpg',1,20,'trailer1.mp4','Mo ta phim 1'),
('Phim 2',12,2021,'poster2.jpg',2,16,'trailer2.mp4','Mo ta phim 2'),
('Phim 3',13,2019,'poster3.jpg',3,24,'trailer3.mp4','Mo ta phim 3'),
('Phim 4',14,2022,'poster4.jpg',4,12,'trailer4.mp4','Mo ta phim 4'),
('Phim 5',15,2018,'poster5.jpg',5,30,'trailer5.mp4','Mo ta phim 5'),
('Phim 6',16,2020,'poster6.jpg',6,10,'trailer6.mp4','Mo ta phim 6'),
('Phim 7',17,2021,'poster7.jpg',7,15,'trailer7.mp4','Mo ta phim 7'),
('Phim 8',18,2023,'poster8.jpg',8,25,'trailer8.mp4','Mo ta phim 8'),
('Phim 9',19,2017,'poster9.jpg',9,40,'trailer9.mp4','Mo ta phim 9'),
('Phim 10',20,2016,'poster10.jpg',10,5,'trailer10.mp4','Mo ta phim 10'),
('Phim 11',11,2020,'poster11.jpg',1,20,'trailer11.mp4','Mo ta phim 11'),
('Phim 12',12,2021,'poster12.jpg',2,16,'trailer12.mp4','Mo ta phim 12'),
('Phim 13',13,2019,'poster13.jpg',3,24,'trailer13.mp4','Mo ta phim 13'),
('Phim 14',14,2022,'poster14.jpg',4,12,'trailer14.mp4','Mo ta phim 14'),
('Phim 15',15,2018,'poster15.jpg',5,30,'trailer15.mp4','Mo ta phim 15'),
('Phim 16',16,2020,'poster16.jpg',6,10,'trailer16.mp4','Mo ta phim 16'),
('Phim 17',17,2021,'poster17.jpg',7,15,'trailer17.mp4','Mo ta phim 17'),
('Phim 18',18,2023,'poster18.jpg',8,25,'trailer18.mp4','Mo ta phim 18'),
('Phim 19',19,2017,'poster19.jpg',9,40,'trailer19.mp4','Mo ta phim 19'),
('Phim 20',20,2016,'poster20.jpg',10,5,'trailer20.mp4','Mo ta phim 20'),
('Phim 21',11,2014,'poster21.jpg',1,20,'trailer21.mp4','Mo ta phim 21'),
('Phim 22',12,2015,'poster22.jpg',2,16,'trailer22.mp4','Mo ta phim 22'),
('Phim 23',13,2013,'poster23.jpg',3,24,'trailer23.mp4','Mo ta phim 23'),
('Phim 24',14,2012,'poster24.jpg',4,12,'trailer24.mp4','Mo ta phim 24'),
('Phim 25',15,2011,'poster25.jpg',5,30,'trailer25.mp4','Mo ta phim 25'),
('Phim 26',16,2010,'poster26.jpg',6,10,'trailer26.mp4','Mo ta phim 26'),
('Phim 27',17,2019,'poster27.jpg',7,15,'trailer27.mp4','Mo ta phim 27'),
('Phim 28',18,2020,'poster28.jpg',8,25,'trailer28.mp4','Mo ta phim 28'),
('Phim 29',19,2018,'poster29.jpg',9,40,'trailer29.mp4','Mo ta phim 29'),
('Phim 30',20,2017,'poster30.jpg',10,5,'trailer30.mp4','Mo ta phim 30');

SELECT p.ten_phim, qg.ten_quoc_gia, nd.ho_ten as dao_dien, dv.ho_ten as dien_vien from phim p 
join quoc_gia qg on p.quoc_gia_id = qg.id 
join nguoi_dung nd on p.dao_dien_id = nd.id 
join phim_dien_vien pdv on p.id = pdv.phim_id 
join nguoi_dung dv on pdv.dien_vien_id = dv.id 
where p.id = 10;
