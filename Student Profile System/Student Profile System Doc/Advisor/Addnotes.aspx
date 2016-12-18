<%@ Page Title="" Language="C#" MasterPageFile="~/Advisor/AdvisorMasterPage.master" AutoEventWireup="true" CodeFile="Addnotes.aspx.cs" Inherits="Advisor_Addnotes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
            width: 475px;
        }


        .auto-style2 {
            width: 475px;
            text-align: center;
        }


        .auto-style3 {
            text-align: left
        }


        </style>
    <br />
    <br />
    <table style="width: 100%">
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-right">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Notes:"></asp:Label>
                </td>
            <td class="auto-style3">
                    <asp:TextBox ID="txtn" runat="server" required BorderColor="#BDC7D8" BorderStyle="Ridge" Font-Size="13pt" Height="59px" TabIndex="2" Width="196px"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-center" colspan="2">
                    <asp:Button ID="Btnotes" class="button button1" runat="server" Text="Submit" OnClick="Btnotes_Click" />
                </td>
        </tr>
        <tr>
            <td class="text-center" colspan="2">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="text-center" colspan="2">
                <center>
                <asp:GridView ID="GridView1" CssClass="Grid" runat="server">
                </asp:GridView>
                    </center>
            </td>
        </tr>
    </table>
</asp:Content>

