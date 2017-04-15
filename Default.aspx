<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>.</h1>
                <h2>NHÓM 4</h2>
            </hgroup>
            <p>
                &nbsp;</p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>Thông Tin Hóa Đơn:</h3>
    <ol class="round">
        <li class="one">
            <h5>Bảng Khách Hàng:<br />
                <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" Width="722px">
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [KhachHang]"></asp:SqlDataSource>
            </h5>
        </li>
        <li class="two">
            <h5>Bảng Sản Phẩm:<br />
                <asp:DetailsView ID="DetailsView4" runat="server" DataSourceID="SqlDataSource2" Height="50px" Width="737px">
                </asp:DetailsView>
                <br />
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [SanPham_MaSP] FROM [CTHoaDon]"></asp:SqlDataSource>
            </h5>
        </li>
        <li class="three">
            <h5>Bảng Loại Sản Phẩm:<br />
                <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataKeyNames="MaLSP" DataSourceID="SqlDataSource3" Height="50px" Width="736px" AllowPaging="True">
                    <Fields>
                        <asp:BoundField DataField="MaLSP" HeaderText="MaLSP" ReadOnly="True" SortExpression="MaLSP" />
                        <asp:BoundField DataField="TenLSP" HeaderText="TenLSP" SortExpression="TenLSP" />
                        <asp:BoundField DataField="ThuocTinh" HeaderText="ThuocTinh" SortExpression="ThuocTinh" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [LoaiSP]"></asp:SqlDataSource>
            </h5>
        </li>
        <li class="four">
            <h5>Bảng Hóa Đơn:<br />
                <br />
                <asp:DetailsView ID="DetailsView3" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaHD" DataSourceID="SqlDataSource4" Height="50px" Width="736px">
                    <Fields>
                        <asp:BoundField DataField="MaKH" HeaderText="MaKH" SortExpression="MaKH" />
                        <asp:BoundField DataField="MaHD" HeaderText="MaHD" ReadOnly="True" SortExpression="MaHD" />
                        <asp:BoundField DataField="SoHD" HeaderText="SoHD" SortExpression="SoHD" />
                        <asp:BoundField DataField="KhachHang_MaKH" HeaderText="KhachHang_MaKH" SortExpression="KhachHang_MaKH" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [HoaDon]"></asp:SqlDataSource>
            </h5>
        </li>
        <li class="five">
            <h5>Bảng Chi Tiết Hóa Đơn:<br />
                <br />
                <asp:DetailsView ID="DetailsView5" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaCTHD" DataSourceID="SqlDataSource5" Height="50px" Width="731px">
                    <Fields>
                        <asp:BoundField DataField="MaCTHD" HeaderText="MaCTHD" ReadOnly="True" SortExpression="MaCTHD" />
                        <asp:BoundField DataField="SoLuong" HeaderText="SoLuong" SortExpression="SoLuong" />
                        <asp:BoundField DataField="SanPham_MaSP" HeaderText="SanPham_MaSP" SortExpression="SanPham_MaSP" />
                        <asp:BoundField DataField="HoaDon_MaHD" HeaderText="HoaDon_MaHD" SortExpression="HoaDon_MaHD" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [CTHoaDon]"></asp:SqlDataSource>
            </h5>
        </li>
    </ol>
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14896.337797233036!2d105.7628971662984!3d21.029306716787698!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313454b92bd71f9b%3A0xb79f074fe43dcfc1!2zRlBUIFBvbHl0ZWNobmljIChDxqEgc-G7nyBIw6AgTuG7mWkp!5e0!3m2!1svi!2s!4v1492237307327" frameborder="0" style="border-style: none; border-color: inherit; border-width: 0; height: 283px; width: 1020px;" allowfullscreen></iframe>
</asp:Content>
