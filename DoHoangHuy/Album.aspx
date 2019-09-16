<%@ Page Title="Album" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Album.aspx.cs" Inherits="DoHoangHuy.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>.Các album ca nhạc hay chọn lọc</h3>
    <div class="d-flex flex-column bd-highlight mb-3 bg-danger">
         <h2>Nhạc việt</h2>
            <div class="p-2 bd-highlight "><img src="img/9.jpg" /></div>      
            <p><a class="btn btn-default" href="">Mua Đĩa: 70.000đ &raquo;</a></p>
        <div class="p-2 bd-highlight "> <img src="img/14.jpg" /></div>      
            <p><a class="btn btn-default" href="">Mua Đĩa: 150.000đ &raquo;</a></p>
     </div>

    <div class="d-flex flex-column bd-highlight mb-3 bg-warning">
            <h2>Nhạc Hàn</h2>
        <div class="p-2 bd-highlight"><img src="img/7.jpg" /></div>
        <p> <a class="btn btn-default" href="">Mua Đĩa: 350.000đ &raquo;</a></p>
        <div class="p-2 bd-highlight"><img src="img/13.jpg" /></div>
        <p> <a class="btn btn-default" href="">Mua Đĩa:320.000đ &raquo;</a></p>
        </div>

   <div class="d-flex flex-column bd-highlight mb-3 bg-danger">
            <h2>Nhạc Âu-Mỹ</h2>
            <div class="p-2 bd-highlight"><img src="img/8.jpg" /></div>
            <p><a class="btn btn-default" href="">Mua Đĩa:350.000đ &raquo;</a></p>
       <div class="p-2 bd-highlight"><img src="img/12.jpg" /></div>
            <p><a class="btn btn-default" href="">Mua Đĩa:350.000đ &raquo;</a></p>
        </div>
</asp:Content>
