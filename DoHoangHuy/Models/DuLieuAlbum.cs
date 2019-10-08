using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace DoHoangHuy.Models
{
    public class DuLieuAlbum : DropCreateDatabaseAlways<AlbumContext>
    {
        protected override void Seed(AlbumContext context)
        {
            GetTheLoais().ForEach(c => context.TheLoais.Add(c));
            GetAlbums().ForEach(p => context.Albums.Add(p));
        }
        private static List<TheLoai> GetTheLoais()
        {
            var categories = new List<TheLoai> {
                new TheLoai
               {
                 MaTL = 1,
                 TenTL = "Nhạc Việt"
                 },
                 new TheLoai
                 {
                 MaTL = 2,
                 TenTL = "Nhạc Hàn"
                 },
                 new TheLoai{
                 MaTL= 3,
                 TenTL = "Nhạc Âu - Mĩ"
                 },
                 };
            return categories;
        }
        private static List<Album> GetAlbums()
        {
            var albums = new List<Album> {

                 new Album
                 {
                 MaDia = 1,
                 TenDia = "Anh Bo Đan Trường",
                 MoTa = "Tình Khúc Vàng.", 
                 HinhAnh="9.jpg",
                 Gia = 100000,
                 MaTL = 1
                 },
                  new Album
                 {
                 MaDia = 1,
                 TenDia = "Sơn Tùng-MTP",
                 MoTa = "Lạc Trôi.",
                 HinhAnh="11.jpg",
                 Gia = 150000,
                 MaTL = 1
                 },
                   new Album
                 {
                 MaDia = 1,
                 TenDia = "Quân AP",
                 MoTa = "Ai là người thương em.",
                 HinhAnh="quanAp.jpg",
                 Gia = 100000,
                 MaTL = 1
                 },
                 new Album
                 {
                 MaDia = 2,
                 TenDia = "BlackPink",
                 MoTa = "kill this love",
                 HinhAnh="13.jpg",
                 Gia = 200000,
                 MaTL = 2
                 },
                 new Album
                 {
                 MaDia = 2,
                 TenDia = "IKON",
                 MoTa = "LOVE SCENARIO",
                 HinhAnh="ikon.jpg",
                 Gia = 200000,
                 MaTL = 2
                 },
                 new Album
                 {
                 MaDia = 2,
                 TenDia = "BTS",
                 MoTa = "Boy With LUV",
                 HinhAnh="7.jpg",
                 Gia = 320000,
                 MaTL = 2
                 },

                 new Album
                 {
                 MaDia = 3,
                 TenDia = "Michael Jackson",
                 MoTa = "Ông Hoàng nhạc POP",
                 HinhAnh="8.jpg",
                 Gia = 400000,
                 MaTL = 3
                 },
                 new Album
                 {
                 MaDia = 3,
                 TenDia = "justin bieber",
                 MoTa = " as love as you love me",
                 HinhAnh="12.jpg",
                 Gia = 300000,
                 MaTL = 3
                 },
                 new Album
                 {
                 MaDia = 3,
                 TenDia = "Maroon 5",
                 MoTa = "Sugar",
                 HinhAnh="maroon5.jpg",
                 Gia = 300000,
                 MaTL = 3
                 },
                 };
            return albums;
        }
    }
}