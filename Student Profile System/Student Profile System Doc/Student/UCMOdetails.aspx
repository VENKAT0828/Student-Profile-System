<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudentMasterPage.master" AutoEventWireup="true" CodeFile="UCMOdetails.aspx.cs" Inherits="Student_UCMOdetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <style>
        .button1 {
    box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
}

        .button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
}
        .auto-style1 {
         }
         .auto-style2
         {
             width: 548px;
             height: 30px;
         }
         .auto-style3
         {
             height: 30px;
         }
    </style>
    <br />
    <br />
    <table style="width: 100%">
        <tr>
            <td style="text-align: right; " class="auto-style1">
                <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
            </td>
            <td>
                    <asp:TextBox ID="txtu" runat="server" BorderColor="#BDC7D8" BorderStyle="Ridge" Font-Size="13pt" Height="30px" TabIndex="2" Width="243px" Enabled="False"></asp:TextBox>
                    </td>
        </tr>
        <tr>
            <td style="text-align: right; " class="auto-style1">
                <asp:Label ID="Label2" runat="server" Text="Concentration"></asp:Label>
            </td>
            <td>
                    <asp:TextBox ID="txtc" runat="server" BorderColor="#BDC7D8" BorderStyle="Ridge" Font-Size="13pt" Height="30px" TabIndex="2" Width="243px" Enabled="False"></asp:TextBox>
                    </td>
        </tr>
        <tr>
            <td style="text-align: right; " class="auto-style1">
                <asp:Label ID="Label3" runat="server" Text="Concentration code"></asp:Label>
            </td>
            <td>
                    <asp:TextBox ID="txtcc" runat="server" BorderColor="#BDC7D8" BorderStyle="Ridge" Font-Size="13pt" Height="30px" TabIndex="2" Width="243px" Enabled="False"></asp:TextBox>
                    </td>
        </tr>
        <tr>
            <td style="text-align: right; " class="auto-style1">
                <asp:Label ID="Label4" runat="server" Text="Advisor"></asp:Label>
            </td>
            <td>
                    <asp:TextBox ID="txtadv" runat="server" BorderColor="#BDC7D8" BorderStyle="Ridge" Font-Size="13pt" Height="30px" TabIndex="2" Width="243px" Enabled="False"></asp:TextBox>
                    </td>
        </tr>
        <tr>
            <td style="text-align: right; " class="auto-style1">
                <asp:Label ID="Label5" runat="server" Text="Concentration status"></asp:Label>
            </td>
            <td>
                    <asp:TextBox ID="txtcs" runat="server" BorderColor="#BDC7D8" BorderStyle="Ridge" Font-Size="13pt" Height="30px" TabIndex="2" Width="243px" Enabled="False"></asp:TextBox>
                    </td>
        </tr>
        <tr>
            <td style="text-align: right; " class="auto-style1">
                <asp:Label ID="Label6" runat="server" Text="Programentry Date"></asp:Label>
            </td>
            <td>
                    <asp:TextBox ID="txtpd" runat="server" BorderColor="#BDC7D8" BorderStyle="Ridge" Font-Size="13pt" Height="30px" TabIndex="2" Width="243px" Enabled="False"></asp:TextBox>
                    </td>
        </tr>
        <tr>
            <td style="text-align: right; " class="auto-style1">
                <asp:Label ID="Label7" runat="server" Text="Gmat"></asp:Label>
            </td>
            <td>
                    <asp:TextBox ID="txtgm" runat="server" BorderColor="#BDC7D8" BorderStyle="Ridge" Font-Size="13pt" Height="30px" TabIndex="2" Width="243px" Enabled="False"></asp:TextBox>
                    </td>
        </tr>
        <tr>
            <td style="text-align: right; " class="auto-style1">
                <asp:Label ID="Label9" runat="server" Text="Gpa"></asp:Label>
            </td>
            <td>
                    <asp:TextBox ID="txtgp" runat="server" BorderColor="#BDC7D8" BorderStyle="Ridge" Font-Size="13pt" Height="30px" TabIndex="2" Width="243px" Enabled="False"></asp:TextBox>
                    </td>
        </tr>
        <tr>
            <td style="text-align: right; " class="auto-style1">
                <asp:Label ID="Label10" runat="server" Text="Ucmo Email"></asp:Label>
            </td>
            <td>
                    <asp:TextBox ID="txtucmo" runat="server" BorderColor="#BDC7D8" BorderStyle="Ridge" Font-Size="13pt" Height="30px" TabIndex="2" Width="243px" Enabled="False"></asp:TextBox>
                    </td>
        </tr>
        <tr>
            <td style="text-align: right; " class="auto-style2">
                <asp:Label ID="Label11" runat="server" Text="Graduation"></asp:Label>
            </td>
            <td class="auto-style3">
                    <asp:TextBox ID="txtgr" runat="server" BorderColor="#BDC7D8" BorderStyle="Ridge" Font-Size="13pt" Height="30px" TabIndex="2" Width="243px" Enabled="False"></asp:TextBox>
                    </td>
        </tr>
        <tr>
            <td style="text-align: right; " class="auto-style1">
                <asp:Label ID="Label12" runat="server" Text="Program"></asp:Label>
            </td>
            <td>
                    <asp:TextBox ID="txtprogram" runat="server" BorderColor="#BDC7D8" BorderStyle="Ridge" Font-Size="13pt" Height="30px" TabIndex="2" Width="243px" Enabled="False"></asp:TextBox>
                    </td>
        </tr>
        <tr>
            <td style="text-align: right; " class="auto-style1">
                <asp:Label ID="Label13" runat="server" Text="Academic code"></asp:Label>
            </td>
            <td>
                    <asp:TextBox ID="txtacode" runat="server" BorderColor="#BDC7D8" BorderStyle="Ridge" Font-Size="13pt" Height="30px" TabIndex="2" Width="243px" Enabled="False"></asp:TextBox>
                    </td>
        </tr>
        <tr>
            <td style="text-align: right; " class="auto-style1" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                    &nbsp;&nbsp;
                    </td>
        </tr>
    </table>
</asp:Content>

