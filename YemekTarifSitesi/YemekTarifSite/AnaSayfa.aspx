<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="AnaSayfa.aspx.cs" Inherits="AnaSayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style14 {
            font-size: x-large;
            color: #FF9900;
        }

        .auto-style15 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <asp:DataList ID="DataList2" runat="server" Width="448px">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td
                        class="auto-style9"><strong>
                            <a href="YemekDetayı.aspx?Yemekid=<%# Eval("Yemekid") %>">
                                <asp:Label ID="Label3" runat="server" CssClass="auto-style14" Text='<%# Eval("YemekAd") %>'></asp:Label></a>
                        </strong>


                    </td>
                </tr>
                <strong>
                    <tr>
                        <td><strong><span class="auto-style15">
                            <br />
                            Malzemeler:
                        <br />
                        </span></strong>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td><strong><span class="auto-style15">
                            <br />
                            Hazırlanışı</span></strong>:<br />
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Image ID="Image1" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td><strong>Tarih:</strong>
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td><strong>Puan:<em>
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                        </em></strong></td>
                    </tr>
                    <tr>
                        <td style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #C0C0C0">&nbsp;</td>
                    </tr>
                </strong>
            </table>
        </ItemTemplate>
    </asp:DataList>


</asp:Content>

