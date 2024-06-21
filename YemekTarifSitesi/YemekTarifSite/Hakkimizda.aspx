<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="Hakkimizda.aspx.cs" Inherits="Hakkimizda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style14 {
            font-size: x-large;
        }
        .auto-style15 {
            font-size: medium;
        }
        .auto-style16 {
            margin-left: 43px;
        }
      
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">&nbsp;
    <asp:Label ID="Label4" runat="server" CssClass="auto-style14" Text="HAKKIMIZDA" BackColor="#FF9900" Font-Names="Arial" Width="448px"></asp:Label>
    <br />
    <br />
    <asp:DataList ID="DataList3" runat="server" Width="447px">
        <ItemTemplate>
            <asp:Label ID="Label5" runat="server" Text='<%# Eval("Metin") %>' CssClass="auto-style15" Font-Names="Arial"></asp:Label>
        </ItemTemplate>
    </asp:DataList>
    <p class="auto-style17">
        &nbsp;
 
    
    &nbsp;<strong><asp:Image runat="server" CssClass="auto-style16" Height="338px" ImageUrl="~/resimler/the-kitchen-has-a-large-restaurant-team-with-many-departments-vector.jpg" Width="339px"></asp:Image>


        </strong>&nbsp;</p>


</asp:Content>

