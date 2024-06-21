<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="GununYemegiAdmin.aspx.cs" Inherits="GununYemegiAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style21">
        <table class="auto-style15">
            <tr>
                <td class="auto-style24">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style22" Height="30px" Text="+" Width="30px" OnClick="Button1_Click" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style23" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
                </td>
                <td>YEMEK LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Visible="False">
    <asp:DataList ID="DataList1" runat="server" Width="446px" >
        <ItemTemplate>
            <table class="auto-style15">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style20" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </td> 
                    <td class="auto-style19">
                      <a href="YemekDuzenle.aspx?Yemekid=<%#Eval("Yemekid") %>"><asp:Image ID="Image3" runat="server" Height="38px" ImageUrl="~/resimler/change.png" Width="40px" /></a>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    </asp:Panel>
</asp:Content>

