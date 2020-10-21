<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.Kategoriler" %>
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
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style11" OnClick="Button1_Click" Text="+" Width="35px" Height="30px" />
                </td>
                <td class="auto-style9"><strong>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="-" Width="35px" Height="30px" />
                    </strong></td>
                <td class="auto-style3"><strong>KATEGORİ LİSTESİ</strong></td>
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
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                            </strong>
                        </td>
                        <td class="auto-style8">
                           <a href="Kategoriler.aspx?KategoriId=<%#Eval("KategoriId")%>&islem=sil"><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/iconlar/wrong-sign-illustration-png-clip-art.png" Width="30px" ImageAlign="Right" />
                               </a> 
                        </td>
                        <td class="auto-style8">
                        <a href ="KategoriDuzenle.aspx?KategoriId=<%#Eval("KategoriId") %>">
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
                        <asp:Button ID="Button6" runat="server" Height="30px" OnClick="Button6_Click" Text="+" Width="35px" />
                    </td>
                    <td class="auto-style12">
                        <asp:Button ID="Button7" runat="server" Height="30px" OnClick="Button7_Click" Text="-" Width="35px" />
                    </td>
                    <td><strong>KATEGORİ EKLEME</strong></td>
                </tr>
            </table>
           
            <asp:Panel ID="Panel4" runat="server">
                <table class="auto-style2">
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><strong>KATEGORİ AD:</strong></td>
                        <td class="auto-style13">
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td><strong>KATEGORİ İKON:</strong></td>
                        <td>
                            <asp:FileUpload ID="FileUpload1" runat="server" />
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

