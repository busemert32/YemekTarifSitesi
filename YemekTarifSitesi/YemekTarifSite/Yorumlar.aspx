<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Yorumlar.aspx.cs" Inherits="Yorumlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style20 {
            color: black;
            text-align: right;
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
                <td>ONAYLI YORUM LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Visible="False">
        <asp:DataList ID="DataList1" runat="server" Width="446px">
            <ItemTemplate>
                <table class="auto-style15">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style20" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style20">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/resimler/trash.png" Width="30px" />
                            </td>
                        <td class="auto-style20">
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/resimler/change.png" Width="30px" />
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
                <asp:Button ID="Button4" runat="server" CssClass="auto-style23" Height="30px" Text="-" Width="30px" OnClick="Button4_Click"   />
            </td>
            <td>ONAYSIZ YORUM LİSTESİ</td>
        </tr>
    </table>
</asp:Panel>
    <asp:Panel ID="Panel4" runat="server" Visible="False">
    <asp:DataList ID="DataList2" runat="server" Width="446px">
        <ItemTemplate>
            <table class="auto-style15">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style20" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                    </td>
                    <td class="auto-style20">
                       <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/resimler/trash.png" Width="30px" />
                        </td>
                    <td class="auto-style20">
                         <a href="YorumDetay.aspx?Yorumid=<%#Eval("Yorumid") %>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/resimler/change.png" Width="30px" /></a>
                        </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Panel>
</asp:Content>

