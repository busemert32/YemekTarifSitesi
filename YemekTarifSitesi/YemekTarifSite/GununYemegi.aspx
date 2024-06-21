<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="GununYemegi.aspx.cs" Inherits="GununYemegi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style17 {
        height: 30px;
    }
    .auto-style14 {
        font-size: x-large;
    }
    .auto-style18 {
        text-align: center;
        height: 256px;
    }
    .auto-style19 {
        text-align: right;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
        <table class="auto-style1">
            <tr>
                <td class="auto-style17"><strong>
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style14" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td>
                    <br />
                    <span class="auto-style14">Malzemeler:</span><br />
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <span class="auto-style14">Hazırlanışı:</span><br />
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">
                    <asp:Image ID="Image1" runat="server" Height="252px" Width="440px" ImageUrl='<%# Eval("YemekResim") %>' />
                </td>
            </tr>
            <tr>
                <td>
                    <table class="auto-style1">
                        <tr>
                            <td><strong>Puan:&nbsp;
                                <asp:Label ID="Label10" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                                </strong></td>
                            <td class="auto-style19"><strong>Tarih:
                                <asp:Label ID="Label11" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                                </strong></td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>

