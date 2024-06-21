<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="KategoriDüzenle.aspx.cs" Inherits="KategoriAdminDeaty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style15">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Kategori Ad:</td>
            <td>
                <asp:TextBox ID="txt_KategoriAd" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Kategori Adet:</td>
            <td>
                    <strong>
                    <asp:TextBox ID="txt_KategoriAdet" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Resim:</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btn_KategoriGüncelle" runat="server" CssClass="b" OnClick="btn_KategoriGüncelle_Click" Text="Güncelle" />
            </td>
        </tr>
    </table>
</asp:Content>

