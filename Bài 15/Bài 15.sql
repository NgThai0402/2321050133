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
