let danhsachphim = [
  {
    id: 1,
    tenphim: "Mua Do",
    namphathanh: 2025,
    tuoi: 16,
    thoiluong: 2,
    quocgia: "Viet Nam",
    poster: "url('anh/banermuado.jpg')",
    theloai: "Phim Chieu Rap",
  },
  {
    id: 2,
    tenphim: "Conan",
    namphathanh: 2025,
    tuoi: 16,
    thoiluong: 2,
    quocgia: "Viet Nam",
    poster: "url('anh/banermuado.jpg')",
    theloai: "Phim Hoat Hinh",
  },
  {
    id: 3,
    tenphim: "Doraemon",
    namphathanh: 2025,
    tuoi: 16,
    thoiluong: 2,
    quocgia: "Viet Nam",
    poster: "url('anh/banermuado.jpg')",
    theloai: "Phim Hoat Hinh",
  },
  {
    id: 4,
    tenphim: "TET",
    namphathanh: 2025,
    tuoi: 16,
    thoiluong: 2,
    quocgia: "Viet Nam",
    poster: "url('anh/banermuado.jpg')",
    theloai: "Phim Chieu Rap",
  },
];
let phimhientai = danhsachphim[0];
let banner = document.getElementsByClassName("banner2")[0];
function chonphim(idphim) {
  for (let i = 0; i < danhsachphim.length; i++) {
    if (danhsachphim[i].id == idphim) {
      banner.style.backgroundImage = danhsachphim[i].poster;
    }
  }
}
