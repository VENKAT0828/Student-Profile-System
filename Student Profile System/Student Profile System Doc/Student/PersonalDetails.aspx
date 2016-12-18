<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudentMasterPage.master" AutoEventWireup="true" CodeFile="PersonalDetails.aspx.cs" Inherits="Student_PersonalDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
        .button1 {
    box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
}

        .button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 10px 25px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
}
        .auto-style1 {
            width: 548px;
        }
    </style>
    <br />
    <br />
    <table style="width: 100%">
        <tr>
            <td style="text-align: right; " class="auto-style1">
                <asp:Label ID="Label1" runat="server" Text="FirstName"></asp:Label>
            </td>
            <td>
                    <asp:TextBox ID="txtfname" runat="server" BorderColor="#BDC7D8" BorderStyle="Ridge" Font-Size="13pt" Height="30px" TabIndex="2" Width="243px" Enabled="False"></asp:TextBox>
                    </td>
        </tr>
        <tr>
            <td style="text-align: right; " class="auto-style1">
                <asp:Label ID="Label2" runat="server" Text="LastName"></asp:Label>
            </td>
            <td>
                    <asp:TextBox ID="txtlname" runat="server" BorderColor="#BDC7D8" BorderStyle="Ridge" Font-Size="13pt" Height="30px" TabIndex="2" Width="243px" Enabled="False"></asp:TextBox>
                    </td>
        </tr>
        <tr>
            <td style="text-align: right; " class="auto-style1">
                <asp:Label ID="Label3" runat="server" Text="UserName"></asp:Label>
            </td>
            <td>
                    <asp:TextBox ID="txtuname" runat="server" BorderColor="#BDC7D8" BorderStyle="Ridge" Font-Size="13pt" Height="30px" TabIndex="2" Width="243px" Enabled="False"></asp:TextBox>
                    </td>
        </tr>
        <tr>
            <td style="text-align: right; " class="auto-style1">
                <asp:Label ID="Label4" runat="server" Text="Phone Number"></asp:Label>
            </td>
            <td>
                    <asp:TextBox ID="txtphno" runat="server" BorderColor="#BDC7D8" BorderStyle="Ridge" Font-Size="13pt" Height="30px" TabIndex="2" Width="243px" Enabled="False"></asp:TextBox>
                    </td>
        </tr>
        <tr>
            <td style="text-align: right; " class="auto-style1">
                <asp:Label ID="Label5" runat="server" Text="EMailID"></asp:Label>
            </td>
            <td>
                    <asp:TextBox ID="txtemail" runat="server" BorderColor="#BDC7D8" BorderStyle="Ridge" Font-Size="13pt" Height="30px" TabIndex="2" Width="243px" Enabled="False"></asp:TextBox>
                    </td>
        </tr>
        <tr>
            <td style="text-align: right; " class="auto-style1">
                <asp:Label ID="Label6" runat="server" Text="Address"></asp:Label>
            </td>
            <td>
                    <asp:TextBox ID="txtadd" runat="server" BorderColor="#BDC7D8" BorderStyle="Ridge" Font-Size="13pt" Height="30px" TabIndex="2" Width="243px" Enabled="False"></asp:TextBox>
                    </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                    <asp:Button ID="btnEdit" runat="server" class="button button1" Text="Edit" OnClick="btnEdit_Click" />
                    &nbsp;&nbsp;
                    <asp:Button ID="btnUpdate" runat="server" class="button button1" Text="Update" OnClick="btnUpdate_Click" />
                </td>
        </tr>
    </table>
</asp:Content>

