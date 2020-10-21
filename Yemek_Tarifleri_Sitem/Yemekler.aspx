<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yemekler.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.Yemekler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            height: 23px;
        }
        .auto-style8 {
            height: 23px;
            text-align: justify;
            width: 113px;
        }
        .auto-style9 {
            width: 36px;
        }
        .auto-style10 {
            width: 38px;
        }
        .auto-style11 {
            font-weight: bold;
        }
        .auto-style12 {
            width: 35px;
        }
        .auto-style13 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style2">
            <tr>
                <td class="auto-style10">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style11"  Text="+" Width="35px" Height="30px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style9"><strong>
                    <asp:Button ID="Button2" runat="server"  Text="-" Width="35px" Height="30px" OnClick="Button2_Click" />
                    </strong></td>
                <td class="auto-style3"><strong>YEMEK LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="449px">
            <ItemTemplate>
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style6">
                            <strong>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                            </strong>
                        </td>
                        <td class="auto-style8">
                           <a href="Yemekler.aspx?YemekId=<%#Eval("YemekId")%>&islem=sil"><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/iconlar/wrong-sign-illustration-png-clip-art.png" Width="30px" ImageAlign="Right" />
                               </a> 
                        </td>
                        <td class="auto-style8">
                        <a href ="YemekDuzenle.aspx?YemekId=<%#Eval("YemekId") %>">
                        <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/iconlar/update.png" Width="30px" ImageAlign="Right" /> 
                        </td></a>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        <br />
        </asp:Panel>
        <asp:Panel ID="Panel3" runat="server">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style10">
                        <asp:Button ID="Button6" runat="server" Height="30px"  Text="+" Width="35px" OnClick="Button6_Click" />
                    </td>
                    <td class="auto-style12">
                        <asp:Button ID="Button7" runat="server" Height="30px"  Text="-" Width="35px" OnClick="Button7_Click" />
                    </td>
                    <td><strong>YEMEK EKLEME</strong></td>
                </tr>
            </table>
           
            <asp:Panel ID="Panel4" runat="server">
                <table class="auto-style2">
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><strong>YEMEK AD:</strong></td>
                        <td class="auto-style13">
                            <asp:TextBox ID="TextBox1" runat="server" Height="17px" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td><strong>MALZEMELER:</strong></td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td><strong>YEMEK TARİFİ:</strong></td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td><strong>KATEGORİ:</strong></td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="20px" Width="205px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Button ID="Button5" runat="server" Font-Bold="True" OnClick="Button5_Click" Text="EKLE" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
           
            <br />
        </asp:Panel>
</asp:Content>
