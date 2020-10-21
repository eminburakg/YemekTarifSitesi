<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table class="auto-style1">
        <tr>
            <td><strong>Tarif Ad: </strong> </td>
            <td> 
                <asp:TextBox ID="TxtTarif" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td><strong>Malzeme:</strong></td>
            <td> 
                <asp:TextBox ID="TxtMalzeme" runat="server" Height="113px" TextMode="MultiLine" Width="249px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td><strong>Yapılış:</strong></td>
            <td> 
                <asp:TextBox ID="TxtYapilis" runat="server" Height="124px" TextMode="MultiLine" Width="249px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td><strong>Resim:</strong></td>
            <td> 
                <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" />
            </td>
        </tr>
        <tr>
            <td><strong>Tarif Öneren:</strong></td>
            <td> 
                <asp:TextBox ID="TxtTarifOner" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td><strong>Mail Adresi:</strong></td>
            <td> 
                <asp:TextBox ID="TxtMail" runat="server" TextMode="Email" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td> 
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Tarif Öner" />
            </td>
        </tr>
    </table>
    
</asp:Content>
