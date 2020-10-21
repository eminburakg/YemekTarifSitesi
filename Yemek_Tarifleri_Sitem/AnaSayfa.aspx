<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="AnaSayfa.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.AnaSayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            font-size: x-large;
        }

        .auto-style4 {
            font-size: medium;
        }

        .auto-style5 {
            font-size: medium;
            margin-left: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td><strong>
                        <a href="YemekDetay.aspx?Yemekid=<%# Eval("Yemekid") %>">

                            <asp:Label ID="Label3" runat="server" CssClass="auto-style3" Text='<%# Eval("YemekAd") %>'></asp:Label>

                        </a>


                    </strong></td>
                </tr>
                <tr>
                    <td><strong><span class="auto-style4">Malzemeler:</span></strong>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong>Yemek Tarifi: </strong>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5"><strong>Eklenme Tarihi: </strong>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        &nbsp; <strong>Puan: </strong>
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
