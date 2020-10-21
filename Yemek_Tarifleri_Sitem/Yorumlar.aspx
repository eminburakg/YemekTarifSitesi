<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.Yorumlar" %>
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
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style2">
            <tr>
                <td class="auto-style10">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style11"  Text="+" Width="35px" Height="30px" OnClick="Button1_Click1"  />
                </td>
                <td class="auto-style9"><strong>
                    <asp:Button ID="Button2" runat="server"  Text="-" Width="35px" Height="30px" OnClick="Button2_Click1"  />
                    </strong></td>
                <td class="auto-style3"><strong>ONAYLANAN YORUMLAR LİSTESİ</strong></td>
            </tr>
        </table>
        <br />
        <asp:Panel ID="Panel2" runat="server">
            <asp:DataList ID="DataList2" runat="server" Width="449px">
                <ItemTemplate>
                    <table class="auto-style2">
                        <tr>
                            <td class="auto-style6"><strong>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                                </strong></td>
                            <td class="auto-style8">
                                <asp:Image ID="Image4" runat="server" Height="30px" ImageAlign="Right" ImageUrl="~/iconlar/wrong-sign-illustration-png-clip-art.png" Width="30px" />
                                </td>
                            <td class="auto-style8">
                                <asp:Image ID="Image5" runat="server" Height="30px" ImageAlign="Right" ImageUrl="~/iconlar/update.png" Width="30px" />
                                </td>
                            </a>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
    </asp:Panel>
    <br />
        <table class="auto-style2" __designer:mapid="0">
            <tr __designer:mapid="1">
                <td class="auto-style10" __designer:mapid="2">
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style11"  Text="+" Width="35px" Height="30px" OnClick="Button3_Click"  />
                </td>
                <td class="auto-style9" __designer:mapid="4"><strong __designer:mapid="5">
                    <asp:Button ID="Button4" runat="server"  Text="-" Width="35px" Height="30px" OnClick="Button4_Click"   />
                    </strong></td>
                <td class="auto-style3" __designer:mapid="7"><strong __designer:mapid="8">ONAYLANMAYAN YORUMLAR LİSTESİ</strong></td>
            </tr>
        </table>
            <asp:Panel ID="Panel3" runat="server">
                <asp:DataList ID="DataList3" runat="server" Width="449px">
                    <ItemTemplate>
                        <table class="auto-style2">
                            <tr>
                                <td class="auto-style6"><strong>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                                    </strong></td>
                                <td class="auto-style8">
                                    <asp:Image ID="Image6" runat="server" Height="30px" ImageAlign="Right" ImageUrl="~/iconlar/wrong-sign-illustration-png-clip-art.png" Width="30px" />
                                </td>
                                <td class="auto-style8">
                                    <a href="YorumDetay.aspx?YorumId=<%#Eval("YorumId") %>"><asp:Image ID="Image7" runat="server" Height="30px" ImageAlign="Right" ImageUrl="~/iconlar/update.png" Width="30px" />
                                    </a>
                                </td>
                                </a>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
    </asp:Panel>
        <br />
        </asp:Content>
