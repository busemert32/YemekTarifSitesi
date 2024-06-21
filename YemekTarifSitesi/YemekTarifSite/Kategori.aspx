<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Kategori.aspx.cs" Inherits="Kategori" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style19 {
        text-align: right;
    }
    .auto-style20 {
        font-size: large;
    }
        .auto-style21 {
            background-color: #94E4E4;
        }
        .auto-style22 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style23 {
            font-weight: bold;
            font-size: large;
            margin-left: 0px;
        }
        .auto-style24 {
            width: 28px;
        }
        .auto-style26 {
            height: 52px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style21">
        <table class="auto-style15">
            <tr>
                <td class="auto-style24">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style22" Height="30px" OnClick="Button1_Click" Text="+" Width="30px" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style23" Height="30px" OnClick="Button2_Click" Text="-" Width="30px" />
                </td>
                <td>KATEGORİ LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Visible="False">
        <asp:DataList ID="DataList1" runat="server" Width="446px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <ItemTemplate>
                <table class="auto-style15">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style20" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style19">
                           <a href="Kategori.aspx?Kategoriid=<%#Eval("Kategoriid") %>&islem=sil"><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/resimler/trash.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style19">
                         <a href="KategoriDüzenle.aspx?Kategoriid=<%#Eval("Kategoriid") %>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/resimler/change.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        </asp:Panel>
        <asp:Panel ID="Panel3" runat="server" CssClass="auto-style21" style="margin-top:15px;">
    <table class="auto-style15">
        <tr>
            <td class="auto-style24">
                <asp:Button ID="Button3" runat="server" CssClass="auto-style22" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" />
            </td>
            <td>
                <asp:Button ID="Button4" runat="server" CssClass="auto-style23" Height="30px" Text="-" Width="30px" OnClick="Button4_Click" />
            </td>
            <td>KATEGORİ EKLEME</td>
        </tr>
    </table>
</asp:Panel>
    <asp:Panel ID="Panel4" runat="server" Visible="False">
        <table class="auto-style15">
            <tr>
                <td>KATEGORİ AD:</td>
                <td>
                    <asp:TextBox ID="txt_KategoriAd" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>KATEGORİ İKON:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style26"></td>
                <td class="auto-style26">
                    <asp:Button ID="btn_kategoriEkle" runat="server" CssClass="b" Text="Ekle" OnClick="btn_kategoriEkle_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

