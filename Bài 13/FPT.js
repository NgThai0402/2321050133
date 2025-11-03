let danhSachPhim = [
    {
        id : 1,
        tenPhim: "Connan",
        namPhatHanh: 2025,
        tuoi: 16,
        theLoai: "Chiếu rạp",
        quocGia: "Nhật Bản",
        poster: "./img/phim/conan.jpg ",
        thoiLuong:"120 phút",
    },
    {
        id : 2,
        tenPhim: "Người đẹp và quái vật",
        namPhatHanh: 2015,
        tuoi: 16,
        theLoai: "Chiếu rạp",
        quocGia: "Mỹ",
        poster: "./img/phim/beautyandthebeaets.jpg",
        thoiLuong:"150 phút",
    },
    {
        id : 3,
        tenPhim: "Cám",
        namPhatHanh: 2023,
        tuoi: 16,
        theLoai: "Chiếu rạp",
        quocGia: "Việt Nam",
        poster: "./img/phim/cam.jpg ",
        thoiLuong:"120 phút",
    },
];
let phimHienTai = danhSachPhim[0];

let anh1 = document.getElementsByClassName('poster')[0];

function chonPhim(idPhim){
    for (let i =0; i< danhSachPhim.length; i++){
        if (danhSachPhim[i].id == idPhim){
            
            anh1.src= danhSachPhim[i].poster;   
        }
    }
}