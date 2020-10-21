<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MesajDetay.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.MesajDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style6 {
        height: 23px;
    }
    .auto-style7 {
        height: 23px;
        font-size: large;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style2">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3"><strong>Mesaj Gönderen:</strong></td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7"><strong>Mesaj Başlık:</strong></td>
        <td class="auto-style6">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7"><strong>Mesaj Mail:</strong></td>
        <td class="auto-style6">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7"><strong>Mesaj İçerik:</strong></td>
        <td class="auto-style6">
            <asp:TextBox ID="TextBox4" runat="server" Height="150px" TextMode="MultiLine" Width="200px"></asp:TextBox>
        </td>
    </tr>
</table>
</asp:Content>
