<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="TarifOner.aspx.cs" Inherits="TarifOner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style14 {
        width: 226px;
    }
    .auto-style15 {
        width: 226px;
        text-align: left;
    }
    .auto-style16 {
        width: 114px;
    }
    .auto-style18 {
        width: 226px;
        text-align: left;
        height: 159px;
    }
    .auto-style19 {
        width: 114px;
        height: 159px;
    }
    .auto-style20 {
        width: 226px;
        text-align: left;
        height: 26px;
    }
    .auto-style21 {
        width: 114px;
        height: 26px;
    }
    .auto-style22 {
        width: 114px;
        margin-left: 40px;
    }
    .auto-style23 {
        background-color: #990033;
        font-weight: bold;
    }
    .auto-style24 {
        width: 114px;
        text-align: center;
        margin-left: 40px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style14">&nbsp;</td>
        <td class="auto-style16">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style20"><strong>&nbsp;&nbsp;&nbsp; Tarif Ad:</strong></td>
                    <strong>
                    <td class="auto-style21">
                        <asp:TextBox ID="txt_tarifAd" runat="server" Width="278px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style15"><strong>&nbsp;&nbsp;&nbsp; Malzemeler:</strong></td>
        <td class="auto-style16">
                    <strong>
                    <asp:TextBox ID="txt_tarifMalzeme" runat="server" Height="80px" TextMode="MultiLine" Width="278px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style18"><strong>&nbsp;&nbsp;&nbsp; Hazırlanışı:</strong></td>
        <td class="auto-style19">
                    <strong>
                    <asp:TextBox ID="txt_tarifHazirlanis" runat="server" Height="150px" TextMode="MultiLine" Width="278px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style15"><strong>&nbsp;&nbsp;&nbsp; Resim:</strong></td>
        <td class="auto-style16">
            <asp:FileUpload ID="FileUpload1" runat="server" Width="278px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style15"><strong>&nbsp;&nbsp;&nbsp; Tarif Öneren:</strong></td>
        <td class="auto-style16">
                    <strong>
                    <asp:TextBox ID="txt_tarifSahip" runat="server" Height="23px" Width="278px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style15"><strong>&nbsp;&nbsp;&nbsp; Mail:</strong></td>
        <td class="auto-style22">
                    <strong>
                    <asp:TextBox ID="txt_sahipMail" runat="server" TextMode="Email" Width="278px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style15">&nbsp;</td>
        <td class="auto-style24"><strong>
            <asp:Button ID="btn_TarifÖner" runat="server" CssClass="auto-style23" Height="46px" Text="Tarifi Gönder" Width="98px" OnClick="btn_TarifÖner_Click" />
            </strong></td>
    </tr>
</table>
</asp:Content>

