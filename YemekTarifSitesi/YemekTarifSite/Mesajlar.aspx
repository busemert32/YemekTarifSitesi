<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Mesajlar.aspx.cs" Inherits="Mesajlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style20 {
            height: 34px;
        }
    </style>
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
                <td>MESAJLAR</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Visible="False">
    <asp:DataList ID="DataList1" runat="server" Width="446px" Visible="True">
        <ItemTemplate>
            <table class="auto-style15">
                <tr>
                    <td class="auto-style20">
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style20" Text='<%# Eval("MesajGonderen") %>'></asp:Label>
                    </td>
                    <td class="auto-style20">
                        <a href="MesajDetay.aspx?mesajid=<%#Eval("mesajid") %>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/resimler/double-check.png" Width="30px" /></a>
                        </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Panel>
</asp:Content>

