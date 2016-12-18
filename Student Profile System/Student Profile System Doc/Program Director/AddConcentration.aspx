<%@ Page Title="" Language="C#" MasterPageFile="~/Program Director/DirectorMasterPage.master" AutoEventWireup="true" CodeFile="AddConcentration.aspx.cs" Inherits="Program_Director_AddConcentration" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
      <table class="nav-justified">
        <tr>
            <td style="width: 622px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 622px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 622px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-right" style="width: 622px">
                <asp:Label ID="Label1" runat="server" style="font-size: large; font-weight: 700;" Text="Concetration Name:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCname" ErrorMessage="*" style="color: #FF0000; font-weight: 700"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 622px">
                <asp:Label ID="Label2" runat="server" style="font-size: large; font-weight: 700;" Text="Concetration Code:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCCode" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCCode" ErrorMessage="*" style="color: #FF0000; font-weight: 700"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 622px">
                <asp:Label ID="Label3" runat="server" style="font-size: large; font-weight: 700;" Text="Concetration Description:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCDes" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCDes" ErrorMessage="*" style="color: #FF0000; font-weight: 700"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 622px">&nbsp;</td>
            <td>
                <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" />
            </td>
        </tr>
        <tr>
            <td style="width: 622px">&nbsp;</td>
            <td>
                <asp:Label ID="Label4" runat="server" style="font-size: large; color: #FF0000"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <center>
                <asp:GridView ID="GridView1" CssClass="Grid" runat="server">
                </asp:GridView></center>
            </td>
        </tr>
        <tr>
            <td style="width: 622px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

