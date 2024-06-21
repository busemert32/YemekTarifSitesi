<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="YemekDuzenle.aspx.cs" Inherits="YemekDuzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style21 {
            text-align: center;
        }
        .auto-style23 {
            border-style: none;
            border-color: inherit;
            border-width: 0;
            display: inline-block;
            outline: 0;
            cursor: pointer;
            will-change: box-shadow,transform;
            box-shadow: 0px 2px 4px rgb(45 35 66 / 40%), 0px 7px 13px -3px rgb(45 35 66 / 30%), inset 0px -3px 0px rgb(58 65 111 / 50%);
            padding: 0 32px;
            border-radius: 6px;
            color: #fff;
            font-size: 18px;
            text-shadow: 0 1px 0 rgb(0 0 0 / 40%);
            transition: box-shadow 0.15s ease,transform 0.15s ease; :hover {box-shadow:0px4px8px rgb(45 35 66 / 40%),0px7px13px-3px rgb(45 35 66 / 30%),inset0px-3px0px#3c4fe0;transform:translateY(-2px); } :active {box-shadow:inset0px3px7px#3c4fe0;transform:translateY(2px); };
            margin-left: 0px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style15">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Yemek Ad:</td>
            <td>
                <asp:TextBox ID="txt_YemekAd" runat="server" Height="28px" Width="272px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Malzemeler:</td>
            <td>
                    <strong>
                    <asp:TextBox ID="txt_YemekMalzeme" runat="server" Height="143px" TextMode="MultiLine" Width="272px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Hazırlanışı:</td>
            <td>
                    <strong>
                    <asp:TextBox ID="txt_Tarif" runat="server" Height="200px" TextMode="MultiLine" Width="272px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Kategori:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="17px" Width="275px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Yemek Görüntü:</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="272px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style21">
                    <strong>
                <asp:Button ID="btn_YemekGüncelle" runat="server" CssClass="auto-style23"  Text="Güncelle" Height="25px" OnClick="btn_YemekGüncelle_Click" Width="201px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style21">
                    <asp:Button ID="btn_gununyemegisec" runat="server" Height="25px"  Width="201px" OnClick="btn_gununyemegisec_Click" Text="Günün Yemeği Seç" />
            </td>
        </tr>
    </table>
</asp:Content>

