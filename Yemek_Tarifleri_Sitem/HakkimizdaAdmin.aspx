<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HakkimizdaAdmin.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.HakkimizdaAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style10 {
            width: 38px;
        }
        .auto-style11 {
            font-weight: bold;
        }
        .auto-style9 {
            width: 36px;
        }
        .auto-style12 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style2" __designer:mapid="356">
        <tr __designer:mapid="357">
            <td class="auto-style10" __designer:mapid="358">
                <asp:Button ID="Button1" runat="server" CssClass="auto-style11"  Text="+" Width="35px" Height="30px" OnClick="Button1_Click" />
            </td>
            <td class="auto-style9" __designer:mapid="35a"><strong __designer:mapid="35b">
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="-" Width="35px" Height="30px" />
                </strong></td>
            <td class="auto-style3" __designer:mapid="35d"><strong>HAKKIMIZDA</strong></td>
        </tr>
    </table>
    <br />
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style2">
            <tr>
                <td class="auto-style12">
                    <asp:TextBox ID="TextBox1" runat="server" Height="169px" TextMode="MultiLine" Width="435px"></asp:TextBox>
                    <br />
                    <strong>
                    <asp:Button ID="Button3" runat="server" Font-Bold="True" Text="GÜNCELLE" OnClick="Button3_Click" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
