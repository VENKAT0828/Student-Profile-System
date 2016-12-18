<%@ Page Title="" Language="C#" MasterPageFile="~/Program Director/DirectorMasterPage.master" AutoEventWireup="true" CodeFile="AddPrerequest.aspx.cs" Inherits="Program_Director_AddPrerequest" %>

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
             height: 30px;
             width: 578px;
         }
         .auto-style3 {
             height: 30px;
         }


         .auto-style4 {
        text-align: right;
        width: 578px;
    }


    </style>
    <table>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: right; " class="auto-style4">
                    <asp:Label ID="Label1" runat="server" style="font-weight: 700" Text=" Prerequesite Id"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPrefex" runat="server" BorderColor="#BDC7D8" BorderStyle="Ridge" Font-Size="13pt" Height="30px" TabIndex="2" Width="243px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPrefex" ErrorMessage="*" style="color: #FF0066; font-weight: 700"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; " class="auto-style4">
                    <asp:Label ID="Label2" runat="server" style="font-weight: 700" Text="Name:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtNames" runat="server" BorderColor="#BDC7D8" BorderStyle="Ridge" Font-Size="13pt" Height="30px" TabIndex="2" Width="243px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNames" ErrorMessage="*" style="color: #FF0066; font-weight: 700"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; " class="auto-style4">
                    <asp:Label ID="Label3" runat="server" style="font-weight: 700" Text="No of Credit hours"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtnumber" runat="server" BorderColor="#BDC7D8" BorderStyle="Ridge" Font-Size="13pt" Height="30px" TabIndex="2" Width="243px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtnumber" ErrorMessage="*" style="color: #FF0066; font-weight: 700"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; " class="auto-style4">
                    <asp:Label ID="Label5" runat="server" style="font-weight: 700" Text="Prerequest Status:"></asp:Label>
                </td>
                <td>
                    <br />
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" BorderColor="#BDC7D8" BorderStyle="Ridge" style="margin-top:-20px" Height="30px" TabIndex="2" Width="243px">
                        <asp:ListItem Selected="True">Active</asp:ListItem>
                        <asp:ListItem>Inactive</asp:ListItem>
                    </asp:RadioButtonList>
</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" class="button button1" Text="Submit" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <asp:Label ID="Labelresult" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="2">
                    &nbsp;</td>
            </tr>
        </table>
</asp:Content>

