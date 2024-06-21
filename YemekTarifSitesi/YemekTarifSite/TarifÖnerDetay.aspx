<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="TarifÖnerDetay.aspx.cs" Inherits="TarifÖnerDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style20 {
            width: 346px;
        }
        .auto-style23 {
            height: 15px;
        }
        .auto-style24 {
            width: 346px;
            height: 15px;
        }
        .auto-style25 {
            width: 346px;
            text-align: center;
        }
        .auto-style26 {
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
            }
        .auto-style27 {
            width: 346px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style23">&nbsp;&nbsp; Tarif Ad:</td>
            <td class="auto-style24">
                <asp:TextBox ID="txt_TarifAd" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp; Malzemeler:</td>
            <td class="auto-style20"><strong>
                <asp:TextBox ID="txt_TarifMalzeme" runat="server" Height="156px" TextMode="MultiLine" Width="250px"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;Hazırlanışı:</td>
            <td class="auto-style20"><strong>
                <asp:TextBox ID="txt_TarifHazırlanış" runat="server" CssClass="auto-style28" Height="273px" TextMode="MultiLine" Width="250px"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style32">&nbsp;&nbsp; Resim:</td>
            <td class="auto-style20">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="254px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style32">&nbsp; Öneren:&nbsp;</td>
            <td class="auto-style20"><strong>
                <asp:TextBox ID="txt_TarifÖneren" runat="server" Width="250px"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style32">&nbsp; Mail:&nbsp;</td>
            <td class="auto-style20"><strong>
                <asp:TextBox ID="txt_ÖnerenMail" runat="server" TextMode="Email" Width="250px"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style32">&nbsp; Kategori:&nbsp;</td>
            <td class="auto-style27">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="17px" Width="259px">
                    </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style25">
                    <strong>
                    <asp:Button ID="btn_yorumgönder0" runat="server" BorderStyle="None" CssClass="auto-style26" Height="39px" Text="Onayla" Width="131px" OnClick="btn_yorumgönder_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

