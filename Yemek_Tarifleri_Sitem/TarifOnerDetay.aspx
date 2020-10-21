<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TarifOnerDetay.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.TarifOnerDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            height: 30px;
        }
        .auto-style8 {
            height: 30px;
            font-size: large;
            text-align: right;
            width: 185px;
        }
        .auto-style9 {
            font-size: large;
            text-align: right;
            width: 185px;
        }
        .auto-style10 {
            width: 185px;
        }
        .auto-style11 {
            width: 185px;
            font-size: large;
        }
        .auto-style12 {
            font-size: large;
            text-align: right;
            width: 185px;
            height: 157px;
        }
        .auto-style13 {
            height: 157px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1" __designer:mapid="296">
        <tr __designer:mapid="297">
            <td __designer:mapid="298" class="auto-style8"><strong>Tarif Ad:</strong></td>
            <td __designer:mapid="29a" class="auto-style6"><strong __designer:mapid="29b">
                <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                </strong></td>
        </tr>
        <tr __designer:mapid="29d">
            <td __designer:mapid="29e" class="auto-style9"><strong>Tarif Malzemeler:</strong></td>
            <td __designer:mapid="2a0">
                <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr __designer:mapid="2a2">
            <td __designer:mapid="2a3" class="auto-style12"><strong __designer:mapid="2a4">Yorumunuz:</strong></td>
            <td __designer:mapid="2a5" class="auto-style13">
                <asp:TextBox ID="TextBox3" runat="server" Height="145px" TextMode="MultiLine" Width="249px"></asp:TextBox>
            </td>
        </tr>
        <tr __designer:mapid="2a7">
            <td __designer:mapid="2a8" class="auto-style11"><strong>Tarif Resim:</strong></td>
            <td __designer:mapid="2a9">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr __designer:mapid="2a7">
            <td __designer:mapid="2a8" class="auto-style11"><strong>Tarif Öneren:</strong></td>
            <td __designer:mapid="2a9">
                <asp:TextBox ID="TextBox4" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr __designer:mapid="2a7">
            <td __designer:mapid="2a8" class="auto-style11"><strong>Öneren Mail:</strong></td>
            <td __designer:mapid="2a9">
                <asp:TextBox ID="TextBox5" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr __designer:mapid="2a7">
            <td __designer:mapid="2a8" class="auto-style10"><span class="auto-style3"><strong>Kategoriler</strong></span>:</td>
            <td __designer:mapid="2a9">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="200px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr __designer:mapid="2a7">
            <td __designer:mapid="2a8" class="auto-style10">&nbsp;</td>
            <td __designer:mapid="2a9">
                <asp:Button ID="Button1" runat="server"  Text="Onayla" Width="200px" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
