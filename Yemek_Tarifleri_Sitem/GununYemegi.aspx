<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="Label9" runat="server" style="font-size: x-large; font-weight: 700; text-align: center" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        <br />
                        <strong>Malzeme: </strong>
                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                        <br />
                        <strong>Tarif:</strong>
                        <asp:Label ID="Label11" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                        <br />
                        <br />
                        <asp:Image ID="Image1" runat="server" Height="159px" ImageUrl='<%# Eval("YemekResim") %>' style="text-align: center" Width="397px" />
                        <br />
                        <strong>Puan:</strong>
                        <asp:Label ID="Label12" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                        <br />
                        <strong>Eklenme Tarih:</strong>
                        <asp:Label ID="Label13" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        <br />
                        <br />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
