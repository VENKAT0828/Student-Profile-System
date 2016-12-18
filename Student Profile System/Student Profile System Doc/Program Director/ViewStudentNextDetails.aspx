<%@ Page Title="" Language="C#" MasterPageFile="~/Program Director/DirectorMasterPage.master" AutoEventWireup="true" CodeFile="ViewStudentNextDetails.aspx.cs" Inherits="Program_Director_ViewStudentNextDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="width: 503px">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 503px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="font-weight: 700; font-size: x-large; color: red;" Text="Back" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 503px">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right; width: 503px;">
                <asp:Label ID="Label3" runat="server" style="font-weight: 700" Text="FirstName"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtfname" runat="server" Enabled="False" BorderColor="#BDC7D8" BorderStyle="Ridge" Font-Size="13pt" Height="30px" TabIndex="2" Width="243px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 503px;">
                <asp:Label ID="Label4" runat="server" style="font-weight: 700" Text="Student ID"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtstdid" runat="server" Enabled="False" BorderColor="#BDC7D8" BorderStyle="Ridge" Font-Size="13pt" Height="30px" TabIndex="2" Width="243px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 503px;">
                <asp:Label ID="Label5" runat="server" style="font-weight: 700" Text="Ucmoaddress"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtucmo" runat="server" Enabled="False" BorderColor="#BDC7D8" BorderStyle="Ridge" Font-Size="13pt" Height="30px" TabIndex="2" Width="243px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 503px;">
                <asp:Label ID="Label6" runat="server" style="font-weight: 700" Text="EmailID"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtemil" runat="server" BorderColor="#BDC7D8" BorderStyle="Ridge" Font-Size="13pt" Height="30px" TabIndex="2" Width="243px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 503px;">
                <asp:Label ID="Label7" runat="server" style="font-weight: 700" Text="Graduation"></asp:Label>
            </td>
            <td>
                <asp:RadioButtonList ID="rdgraduation" runat="server" RepeatDirection="Horizontal" BorderColor="#BDC7D8" BorderStyle="Ridge" Font-Size="13pt" Height="30px" TabIndex="2" Width="243px">
                    <asp:ListItem>Approved</asp:ListItem>
                    <asp:ListItem>Deny</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 503px;">
                <asp:Label ID="Label8" runat="server" style="font-weight: 700" Text="Program"></asp:Label>
            </td>
            <td>
                <asp:RadioButtonList ID="rdprogram" runat="server" RepeatDirection="Horizontal"  BorderColor="#BDC7D8" BorderStyle="Ridge" Font-Size="13pt" Height="30px" TabIndex="2" Width="352px" AutoPostBack="True" OnSelectedIndexChanged="rdprogram_SelectedIndexChanged">
                    <asp:ListItem>Withdrawn</asp:ListItem>
                    <asp:ListItem>Accepted</asp:ListItem>
                    <asp:ListItem>Conditions</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 503px;">
                <asp:Label ID="Label9" runat="server" style="font-weight: 700" Text="Description"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtdes" runat="server" BorderColor="#BDC7D8" BorderStyle="Ridge" Font-Size="13pt" Height="30px" TabIndex="2" Width="243px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 503px;">
                <asp:Label ID="Label10" runat="server" style="font-weight: 700" Text="Academiccode"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtcode" runat="server" Enabled="False" BorderColor="#BDC7D8" BorderStyle="Ridge" Font-Size="13pt" Height="30px" TabIndex="2" Width="243px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 503px;">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" BorderColor="#BDC7D8" BorderStyle="Ridge" Font-Size="13pt" Height="39px" TabIndex="2" Width="167px" Text="Update" style="font-weight: 700" />
            </td>
        </tr>
    </table>
</asp:Content>


