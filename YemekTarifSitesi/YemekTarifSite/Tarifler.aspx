<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Tarifler.aspx.cs" Inherits="Tarifler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style21">
        <table class="auto-style15">
            <tr>
                <td class="auto-style24">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style22" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style23" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click" />
                </td>
                <td>ONAYLI TARİF LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" Visible="False">
    <asp:DataList ID="DataList1" runat="server" Width="446px" Visible="True">
        <ItemTemplate>
            <table class="auto-style15">
                <tr>
                    <td class="auto-style20">
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style20" Text='<%# Eval("TarifAd") %>'></asp:Label>
                    </td>
                    <td class="auto-style20">
                        <a href="TarifÖnerDetay.aspx?Tarifid=<%#Eval("Tarifid") %>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/resimler/evaluating.png" Width="30px" /></a>
                        </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style21">
    <table class="auto-style15">
        <tr>
            <td class="auto-style24">
                <asp:Button ID="Button3" runat="server" CssClass="auto-style22" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click"  />
            </td>
            <td>
                <asp:Button ID="Button4" runat="server" CssClass="auto-style23" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click"  />
            </td>
            <td>ONAYSIZ TARİF LİSTESİ</td>
        </tr>
    </table>
</asp:Panel>
            <asp:Panel ID="Panel4" runat="server" Visible="False">
    <asp:DataList ID="DataList2" runat="server" Width="446px" Visible="True">
        <ItemTemplate>
            <table class="auto-style15">
                <tr>
                    <td class="auto-style20">
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style20" Text='<%# Eval("TarifAd") %>'></asp:Label>
                    </td>
                    <td class="auto-style20">
                        <a href="TarifÖnerDetay.aspx?Tarifid=<%#Eval("Tarifid") %>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/resimler/evaluating.png" Width="30px" /></a>
                        </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Panel>
</asp:Content>

