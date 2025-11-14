let danhsachphim = [
  {
    id: 1,
    tenphim: "Mưa Đỏ",
    namphathanh: 2025,
    tuoi: 16,
    thoiluong: 2,
    quocgia: "Việt Nam",
    poster: "anh/banermuado.jpg",
    theloai: "Phim Chiếu Rạp",
    trailer: "https://www.youtube.com/embed/BD6PoZJdt_M?si=KxpaJhZUT_j7o7U9",
  },
  {
    id: 2,
    tenphim: "Thanh Gươm Diệt Quỷ",
    namphathanh: 2025,
    tuoi: 16,
    thoiluong: 2,
    quocgia: "Viet Nam",
    poster: "anh/bannervohanthanh.jpg",
    theloai: "Phim Chiếu Rạp",
    trailer: "https://www.youtube.com/embed/BSkUboiyeCo?si=BImqQCqDHsq3iS56",
  },
  {
    id: 3,
    tenphim: "Năm Mươi",
    namphathanh: 2025,
    tuoi: 16,
    thoiluong: 2,
    quocgia: "Việt Nam",
    poster: "anh/50banner.jpg",
    theloai: "Phim Chiếu Rạp",
    trailer: "https://www.youtube.com/embed/UQIBqQjXYbo?si=UzdRmW2KOx4ZoXNE",
  },
  {
    id: 4,
    tenphim: "Đèn Âm Hồn",
    namphathanh: 2025,
    tuoi: 16,
    thoiluong: 2,
    quocgia: "Việt Nam",
    poster: "anh/bannerdenamhon.jpg",
    theloai: "Phim Chiếu Rạp",
    trailer: "https://www.youtube.com/embed/E7exHaPHDeM?si=g1NLk5VCcJjSb2Pt",
  },
  {
    id: 5,
    tenphim: "Doraemon Và Cuộc Phưu Lưu",
    namphathanh: 2025,
    tuoi: 16,
    thoiluong: 2,
    quocgia: "Việt Nam",
    poster: "anh/bannerdoraemon1.jpg",
    theloai: "Phim Chiếu Rạp",
    trailer: "https://www.youtube.com/embed/Qs-yOanuK9c?si=0nXkjBubxzvqFRPr",
  },
  {
    id: 6,
    tenphim: "Mùng 1 Tết 2025",
    namphathanh: 2025,
    tuoi: 16,
    thoiluong: 2,
    quocgia: "Việt Nam",
    poster: "anh/bannerphimtet.jpg",
    theloai: "Phim Chiếu Rạp",
    trailer: "https://www.youtube.com/embed/njfAWzmF6oY?si=o2IDkzEYolvqmp4V",
  },
];
let bannerImg = document.querySelector(".banner2 img");
let tenphimbaner = document.querySelector(".tenphimbanner");
let noidungphimbaner = document.querySelector(".noidungphimbaner");
let dungtrailercu;
function chonphim(idphim) {
  for (let i = 0; i < danhsachphim.length; i++) {
    if (danhsachphim[i].id == idphim) {
      if (dungtrailercu) clearTimeout(dungtrailercu);
      let xoanhung = bannerImg.parentElement.querySelector("iframe");
      if (xoanhung) xoanhung.remove();
      bannerImg.src = danhsachphim[i].poster;
      bannerImg.style.display = "block";
      tenphimbaner.innerHTML = danhsachphim[i].tenphim;
      noidungphimbaner.innerHTML =
        danhsachphim[i].namphathanh +
        " · " +
        danhsachphim[i].theloai +
        " · " +
        danhsachphim[i].quocgia;

      setTimeout(() => {
        let trailer = danhsachphim[i].trailer;
        if (!trailer) return;
        let nhung = document.createElement("iframe");
        nhung.src =
          trailer +
          (trailer.includes("?") ? "&autoplay=1&mute=1" : "?autoplay=1&mute=1");
        nhung.frameBorder = "0";
        nhung.allow = "autoplay; encrypted-media";
        nhung.style.width = "100%";
        nhung.style.aspectRatio = "16 / 9";
        nhung.style.borderRadius = "10px";
        bannerImg.style.display = "none";
        bannerImg.parentElement.appendChild(nhung);
      }, 1000);
    }
  }
}
