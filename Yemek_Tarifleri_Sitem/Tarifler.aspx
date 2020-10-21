<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Tarifler.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.Tarifler" %>
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
            font-size: large;
            width: 362px;
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
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style2">
            <tr>
                <td class="auto-style10">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style11"  Text="+" Width="35px" Height="30px" OnClick="Button1_Click"   />
                </td>
                <td class="auto-style9"><strong>
                    <asp:Button ID="Button2" runat="server"  Text="-" Width="35px" Height="30px" OnClick="Button2_Click"    />
                    </strong></td>
                <td class="auto-style12"><strong>ONAYSIZ TARİF LİSTESİ</strong></td>
            </tr>
        </table>
        <asp:Panel ID="Panel2" runat="server">
            <asp:DataList ID="DataList2" runat="server" Width="449px">
                <ItemTemplate>
                    <table class="auto-style2">
                        <tr>
                            <td class="auto-style6"><strong>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("TarifAd") %>'></asp:Label>
                                </strong></td>
                            <td class="auto-style8">
                             <a href="TarifOnerDetay.aspx?TarifId=<%#Eval("TarifId") %>"><asp:Image ID="Image5" runat="server" Height="30px" ImageAlign="Right" ImageUrl="~/iconlar/366-3663692_icon-request-for-pro-request-for-proposal-icon.png" Width="30px" />
                                </a></td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
                </asp:Panel>
    </asp:Panel>
            <br />
            <asp:Panel ID="Panel3" runat="server">
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style10">
                            <asp:Button ID="Button3" runat="server" Height="30px" OnClick="Button3_Click" Text="+" Width="35px" />
                        </td>
                        <td class="auto-style9">
                            <asp:Button ID="Button4" runat="server" Height="30px" OnClick="Button4_Click" Text="-" Width="35px" />
                        </td>
                        <td class="auto-style12"><strong>ONAYLI TARİF LİSTESİ</strong></td>
                    </tr>
                </table>
                <br />

            </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList3" runat="server" Width="449px">
            <ItemTemplate>
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style6"><strong>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("TarifAd") %>'></asp:Label>
                            </strong></td>
                        <td class="auto-style8"><a href="TarifOnerDetay.aspx?TarifId=<%#Eval("TarifId") %>">
                            <asp:Image ID="Image6" runat="server" Height="30px" ImageAlign="Right" ImageUrl="~/iconlar/366-3663692_icon-request-for-pro-request-for-proposal-icon.png" Width="30px" />
                            </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
            
    
</asp:Content>
