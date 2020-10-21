<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.YemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            font-size: xx-large;
        }
        .auto-style4 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong>
    <asp:Label ID="Label3" runat="server" Text="Label" CssClass="auto-style3"></asp:Label>
    <br />
    </strong>
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: solid; border-width: thin">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekIcerik") %>'></asp:Label>
                        &nbsp;-
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                        <br />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    </br>
    <div class="auto-style4"><strong>YORUM YAPMA ALANI</strong></div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style1">
            <tr>
                <td><strong>Adı Soyadı:</strong></td>
                <td><strong>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </strong></td>
            </tr>
            <tr>
                <td><strong>Mail:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><strong>Yorumunuz:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="145px" TextMode="MultiLine" Width="249px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Yorumunu Gönder" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Visible="False"></asp:TextBox>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
