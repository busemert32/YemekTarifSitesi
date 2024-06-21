<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="YorumDetay.aspx.cs" Inherits="YorumDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style20 {
            text-align: center;
        }
        .auto-style21 {
            border-style: none;
            border-color: inherit;
            border-width: 0;
            display: inline-block;
            outline: 0;
            cursor: pointer;
            will-change: box-shadow,transform;
            box-shadow: 0px 2px 4px rgb(45 35 66 / 40%), 0px 7px 13px -3px rgb(45 35 66 / 30%), inset 0px -3px 0px rgb(58 65 111 / 50%);
            padding: 0 32px;
            border-radius: 6px;
            color: #fff;
            font-size: 18px;
            text-shadow: 0 1px 0 rgb(0 0 0 / 40%);
            transition: box-shadow 0.15s ease,transform 0.15s ease; :hover {box-shadow:0px4px8px rgb(45 35 66 / 40%),0px7px13px-3px rgb(45 35 66 / 30%),inset0px-3px0px#3c4fe0;transform:translateY(-2px); } :active {box-shadow:inset0px3px7px#3c4fe0;transform:translateY(2px); };
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
            <td>Ad Soyad:</td>
            <td>
                <asp:TextBox ID="Txt_adSoyad" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Mail adresi:</td>
            <td>
                    <strong>
                    <asp:TextBox ID="txt_mail" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>İçerik:</td>
            <td>
                    <strong>
                    <asp:TextBox ID="txt_icerik" runat="server" Height="50px" TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Yemek:</td>
            <td>
                    <strong>
                    <asp:TextBox ID="txt_yemek" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style20">
                <asp:Button ID="btn_gönder" runat="server" CssClass="auto-style21" Height="29px" OnClick="btn_gönder_Click" Text="Yorumu Onayla" Width="201px" />
            </td>
        </tr>
    </table>
</asp:Content>

