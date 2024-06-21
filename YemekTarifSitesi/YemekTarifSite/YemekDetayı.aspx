<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="YemekDetayı.aspx.cs" Inherits="YemekDetayı" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style14 {
            font-size: xx-large;
            color: #000000;
        }
        .auto-style24 {
            background-color: #FFFFFF;
            width: 448px;
        }
        .auto-style26 {
            width: 237px;
        }
        .auto-style27 {
            width: 237px;
            text-align: left;
        }
        .auto-style28 {
            margin-left: 0px;
        }
        .auto-style30 {
            background-color: #FF9900;
        }
        .auto-style31 {
            width: 213px;
            text-align: left;
        }
        .auto-style32 {
            width: 213px;
        }
        .auto-style36 {
            height: 30px;
        }
        .auto-style33 {
            font-size: x-large;
            color: #FF9900;
        }
        .auto-style34 {
            font-size: large;
        }
        .auto-style35 {
            font-size: small;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">&nbsp;
    <div style="background-color: #FF9900">
    <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label3" runat="server" CssClass="auto-style14" Text="Label" Font-Names="Arial"></asp:Label></div>
&nbsp;<asp:DataList ID="DataList2" runat="server" Width="446px">
        <ItemTemplate>
            <asp:Panel ID="Panel1" runat="server" BackColor="#E2E2E2" Height="100px">
                <strong>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style36"><strong>
                            <asp:Label ID="Label4" runat="server" CssClass="auto-style33" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                            </strong></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label5" runat="server" CssClass="auto-style34" Text='<%# Eval("Yorumİcerik") %>'></asp:Label>
                            <strong><span class="auto-style34">&nbsp;<br /> </span></strong>
                            <asp:Label ID="Label6" runat="server" CssClass="auto-style35" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                        </td>
                    </tr>
                </table>
                </strong>
            </asp:Panel>&nbsp;
        </ItemTemplate>
    </asp:DataList>
                    <strong>
    <strong>
                    <strong __designer:mapid="c">
                    <strong>
    <strong>
    <br />
    </strong>
    </strong>
                    <strong>
    <div class="auto-style24" style="border: thin groove #000000">

        Yorum Yapma Paneli</div>
    <table class="auto-style1">
        <tr>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style31">&nbsp;&nbsp; Ad Soyad:</td>
            <td class="auto-style26">
                <asp:TextBox ID="txt_yorumadsoyad" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style32">&nbsp;&nbsp; Mail:</td>
            <td class="auto-style26">
                    <strong>
                    <asp:TextBox ID="txt_yorummail" runat="server" TextMode="Email"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style32">&nbsp;&nbsp; Yorumunuz:</td>
            <td class="auto-style26">
                    <strong>
                    <asp:TextBox ID="txt_yorumicerik" runat="server" CssClass="auto-style28" TextMode="MultiLine" Width="328px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style27">
                <asp:Button ID="btn_yorumgönder" runat="server" BorderStyle="None" CssClass="auto-style30" Height="39px" Text="Yorumu Gönder" Width="103px" />
            </td>
        </tr>
    </table>
</asp:Content>

