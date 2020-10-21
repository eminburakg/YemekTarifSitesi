<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.Iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 450px;
        }
        .auto-style6 {
            width: 224px;
        }
        .auto-style7 {
            width: 224px;
            font-size: x-large;
        }
        .auto-style8 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style3">
        <tr>
            <td class="auto-style7"><strong>MESAJ PANELİ:</strong></td>
            <td class="auto-style6"><strong></strong></td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Ad-Soyad:</strong></td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Mail Adresiniz:</strong></td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Konu:</strong></td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Mesaj:</strong></td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox4" runat="server" Height="177px" TextMode="MultiLine" Width="172px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style6"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style8" Text="Gönder" OnClick="Button1_Click" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
