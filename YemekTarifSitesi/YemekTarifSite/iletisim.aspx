<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="iletisim.aspx.cs" Inherits="iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style14 {
        width: 225px;
    }
    .auto-style15 {
        width: 225px;
        text-align: right;
    }
        .auto-style16 {
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
        .auto-style17 {
            border: 2px solid #DAE3F3;
            padding: 0 10px;
            text-align: left;
            transition-property: box-shadow, background;
            transition-duration: 150ms;
            transition-timing-function: ease-in-out;
            background-color: #FFFFFF;
            border-radius: 0px;
            color: #272C34;
            cursor: text;
            font-size: 14px;
            line-height: 20px;
            letter-spacing: 0px;
            font-weight: 400;
            font-style: normal;
:hover {box-shadow:0px2px4px rgb(39 44 52 / 12%); } :focus {transition-property:border-color,box-shadow,background;border-color:#39414D;outline:0px;box-shadow:0003px#c5d2e7; };
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">&nbsp;
    <tr>
        <td colspan="2" style="background-color: #FF9900">
            <asp:Label ID="Label3" runat="server" BackColor="#FF9900" Font-Names="Arial" ForeColor="Black" Text="İLETİŞİM FORMU" Width="225px"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style14">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style15" style="font-family: Arial">Ad Soyad:</td>
        <td>
            <asp:TextBox ID="txt_adsoyad" runat="server" CssClass="t"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style15" style="font-family: Arial">Mail Adresiniz:</td>
        <td>
                    <strong>
                    <asp:TextBox ID="txt_mail" runat="server" CssClass="t" TextMode="Email"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style15" style="font-family: Arial">Konu:</td>
        <td>
                    <strong>
                    <asp:TextBox ID="txt_baslik" runat="server" CssClass="t"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style15" style="font-family: Arial">Mesaj:</td>
        <td>
                    <strong>
                    <asp:TextBox ID="txt_mesaj" runat="server" CssClass="auto-style17" Height="61px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style14">&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" Height="45px" Text="Gönder" Width="132px" BackColor="#FF9900" CssClass="auto-style16" ForeColor="Black" OnClick="Button1_Click" />
        </td>
    </tr>
</table>
</asp:Content>

