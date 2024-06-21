<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="HakkımızdaAdmin.aspx.cs" Inherits="Hakkımızda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style20 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style21">
        <table class="auto-style15">
            <tr>
                <td class="auto-style24">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style22" Height="30px" Text="+" Width="30px" OnClick="Button1_Click" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style23" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
                </td>
                <td>HAKKIMIZDA</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Visible="False">
        <table class="auto-style15">
            <tr>
                <td><strong>
                    <asp:TextBox ID="txt_hakkimizda" runat="server" Height="200px" TextMode="MultiLine" Width="437px"></asp:TextBox>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style20">
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Güncelle" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

