<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="DoHoangHuy.ShoppingCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 <div id="ShoppingCartTitle" runat="server" class="ContentHead"><h1>Shopping Cart</h1></div>
 <asp:GridView ID="CartList" runat="server" AutoGenerateColumns="False" ShowFooter="True" GridLines="Vertical" CellPadding="4" ItemType="DoHoangHuy.Models.CartItem" SelectMethod ="GetShoppingCartItems" CssClass="table table-striped table-bordered" >
 <Columns><asp:BoundField DataField="MaDia" HeaderText="ID"
 SortExpression="MaDia" />
 <asp:BoundField DataField="Album.TenDia" HeaderText="Tên Đĩa" />
 <asp:BoundField DataField="Album.Gia" HeaderText="Giá Đĩa"
 DataFormatString="{0:c}"/>
 <asp:TemplateField HeaderText="Số lượng">
 <ItemTemplate>
 <asp:TextBox ID="PurchaseQuantity" Width="40"
 runat="server" Text="<%#: Item.Quantity %>"></asp:TextBox>
 </ItemTemplate>
 </asp:TemplateField>
 <asp:TemplateField HeaderText="Tổng tiền">
 <ItemTemplate>
 <%#: String.Format("{0:c}",
 ((Convert.ToDouble(Item.Quantity)) *
Convert.ToDouble(Item.Album.Gia)))%>
 </ItemTemplate>
 </asp:TemplateField>
 <asp:TemplateField HeaderText="Hủy hàng">
 <ItemTemplate>
 <asp:CheckBox id="Remove" runat="server"></asp:CheckBox>
 </ItemTemplate>
 </asp:TemplateField>
 </Columns>
</asp:GridView>
<div>
 <p></p>
 <strong>
 <asp:Label ID="LabelTotalText" runat="server" Text="Tổng tiền:"></asp:Label>
 <asp:Label ID="lblTotal" runat="server" EnableViewState="false"></asp:Label>
 </strong>
</div>
<br />        <table>
<tr>
<td>
<asp:Button ID="UpdateBtn" runat="server" Text="Update" OnClick="UpdateBtn_Click" />
</td>
</tr>
</table>
</asp:Content>
