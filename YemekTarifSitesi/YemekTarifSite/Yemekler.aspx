<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Yemekler.aspx.cs" Inherits="Yemekler" %>

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
        .auto-style27 {
            height: 52px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style21">
        <table class="auto-style15">
            <tr>
                <td class="auto-style24">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style22" Height="30px"  Text="+" Width="30px"   />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style23" Height="30px"  Text="-" Width="30px" />
                </td>
                <td>YEMEK LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="446px" >
            <ItemTemplate>
                <table class="auto-style15">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style20" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style19">
                           <a href="Yemekler.aspx?Yemekid=<%#Eval("Yemekid") %>&islem=sil"><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/resimler/trash.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style19">
                          <a href="YemekDuzenle.aspx?Yemekid=<%#Eval("Yemekid") %>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/resimler/change.png" Width="30px" /></a>
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
                <asp:Button ID="Button3" runat="server" CssClass="auto-style22" Height="30px" Text="+" Width="30px" OnClick="Button3_Click"  />
            </td>
            <td>
                <asp:Button ID="Button4" runat="server" CssClass="auto-style23" Height="30px" Text="-" Width="30px" OnClick="Button4_Click"  />
            </td>
            <td>YEMEK EKLEME</td>
        </tr>
    </table>
</asp:Panel>
    <asp:Panel ID="Panel4" runat="server" Visible="False">
        <table class="auto-style15">
            <tr>
                <td>YEMEK AD:</td>
                <td>
                    <asp:TextBox ID="txt_YemekAd" runat="server" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>MALZEMELER:</td>
                <td>
                    <strong>
                    <asp:TextBox ID="txt_Malzeme" runat="server" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style26">HAZIRLANIŞI:</td>
                <td class="auto-style26">
                    <strong>
                    <asp:TextBox ID="txt_Tarif" runat="server" Height="174px" TextMode="MultiLine" Width="250px"></asp:TextBox>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style26">KATEGORİ:</td>
                <td class="auto-style26">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="37px" Width="250px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style27"><strong>
                    <asp:Button ID="btn_YemekEkle" runat="server" CssClass="b" Text="Ekle" OnClick="btn_YemekEkle_Click" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

