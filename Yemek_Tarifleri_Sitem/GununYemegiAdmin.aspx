<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="GununYemegiAdmin.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.GununYemegiAdmin" %>
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
        .auto-style6 {
            height: 23px;
        }
        .auto-style8 {
            height: 23px;
            text-align: justify;
            width: 113px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:Panel ID="Panel2" runat="server">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style10">
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style11"  Text="+" Width="35px" Height="30px" OnClick="Button1_Click"  />
                    </td>
                    <td class="auto-style9"><strong>
                        <asp:Button ID="Button2" runat="server"  Text="-" Width="35px" Height="30px" OnClick="Button2_Click"  />
                        </strong></td>
                    <td class="auto-style3"><strong>YEMEK LİSTESİ</strong></td>
                </tr>
            </table>
        </asp:Panel>
    <asp:Panel ID="Panel1" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="449px">
            <ItemTemplate>
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style6"><strong>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                            </strong></td>
                        <td class="auto-style8"><a href ="YemekDuzenle.aspx?YemekId=<%#Eval("YemekId") %>">
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/iconlar/Tick_Mark_Dark-512.png" Width="30px" ImageAlign="Right" />
                        </td>
                        </a>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <br />
</asp:Content>
