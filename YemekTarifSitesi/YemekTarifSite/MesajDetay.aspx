<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="MesajDetay.aspx.cs" Inherits="MesajDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style20 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style15">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Mesaj Gönderen:</td>
            <td>
                    <strong>
                    <asp:TextBox ID="txt_mesajsahip" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style20">Mail:</td>
            <td class="auto-style20">
                    <strong>
                    <asp:TextBox ID="txt_MesajMail" runat="server" TextMode="Email" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Başlık:</td>
            <td>
                    <strong>
                    <asp:TextBox ID="Txt_MesajBaslik" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>İçerik:</td>
            <td>
                    <strong>
                    <asp:TextBox ID="Txt_Mesajİcerik" runat="server" Height="155px" TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>

