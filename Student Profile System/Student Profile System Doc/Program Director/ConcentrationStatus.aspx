<%@ Page Title="" Language="C#" MasterPageFile="~/Program Director/DirectorMasterPage.master" AutoEventWireup="true" CodeFile="ConcentrationStatus.aspx.cs" Inherits="Program_Director_ConcentrationStatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <style>
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
    cursor: pointer;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
}

.button1 {
    box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
}

.button2:hover {
    box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}


    .auto-style1
    {
        text-align: right;
    }


        .auto-style2 {
            text-align: right;
            width: 575px;
        }


    </style>
    <br />
        <table style="width: 100%;">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" style="font-weight: 700" Text="StudentId:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtstudentid" runat="server" BorderColor="#BDC7D8" BorderStyle="Ridge" Font-Size="13pt" Height="30px" TabIndex="2" Width="243px" AutoPostBack="True" OnTextChanged="txtstudentid_TextChanged"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtstudentid" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtstudentid" ErrorMessage="It should be 9 digits" style="color: #FF0000; font-weight: 700" ValidationExpression="[0-9]{9}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; " class="auto-style2">
                    <asp:Label ID="Label1" runat="server" style="font-weight: 700" Text="Concentration Name:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlconcentration" AutoPostBack="true" runat="server" BorderColor="#BDC7D8" BorderStyle="Ridge" Font-Size="13pt" Height="30px" TabIndex="2" Width="243px" OnSelectedIndexChanged="ddlconcentration_SelectedIndexChanged">
                        
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlconcentration" ErrorMessage="*" ForeColor="Red" InitialValue="---select---"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; " class="auto-style2">
                    <asp:Label ID="Label7" runat="server" style="font-weight: 700" Text="Concentration Code:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtcCode" runat="server" BorderColor="#BDC7D8" BorderStyle="Ridge" Font-Size="13pt" Height="30px" TabIndex="2" Width="243px" AutoPostBack="True" OnTextChanged="txtstudentid_TextChanged" Enabled="False"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtcCode" ErrorMessage="*" style="color: #FF0000; font-weight: 700"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; " class="auto-style2">
                    <asp:Label ID="Label8" runat="server" style="font-weight: 700" Text="Concentration Desc:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtcCdesc" runat="server" BorderColor="#BDC7D8" BorderStyle="Ridge" Font-Size="13pt" Height="30px" TabIndex="2" Width="243px" AutoPostBack="True" OnTextChanged="txtstudentid_TextChanged" Enabled="False"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtcCdesc" ErrorMessage="*" style="color: #FF0000; font-weight: 700"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; " class="auto-style2">
                    <asp:Label ID="Label2" runat="server" style="font-weight: 700" Text="Degree Code:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCode" runat="server" BorderColor="#BDC7D8" BorderStyle="Ridge" Font-Size="13pt" Height="30px" TabIndex="2" Width="243px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCode" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; " class="auto-style2">
                    <asp:Label ID="Label3" runat="server" style="font-weight: 700" Text="Advisors:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddAdvisors" runat="server" BorderColor="#BDC7D8" BorderStyle="Ridge" Font-Size="13pt" Height="30px" TabIndex="2" Width="243px">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddAdvisors" ErrorMessage="*" ForeColor="Red" InitialValue="---Select---"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; " class="auto-style2">
                    <asp:Label ID="Label5" runat="server" style="font-weight: 700" Text="Concentration Status:"></asp:Label>
                </td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True">Active</asp:ListItem>
                        <asp:ListItem>Inactive</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" class="button button1" Text="Submit" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="2">
                    &nbsp;</td>
            </tr>
        </table>
</asp:Content>

