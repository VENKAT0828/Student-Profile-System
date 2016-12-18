<%@ Page Title="" Language="C#" MasterPageFile="~/Program Director/DirectorMasterPage.master" AutoEventWireup="true" CodeFile="AddStudent.aspx.cs" Inherits="Program_Director_AddStudent" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    
   
    <style>
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


    .auto-style1 {
            width: 556px;
        }
    .auto-style2 {
            height: 40px;
            width: 556px;
        }


        </style>
        <table style="width: 100%">
            <tr>
                <td style="text-align: right; " class="auto-style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: right; " class="auto-style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: right; " class="auto-style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: right; " class="auto-style1">
                    <asp:Label ID="Label1" runat="server" style="font-weight: 700" Text="FirstName"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtFirstName" runat="server" BorderColor="#BDC7D8" BorderStyle="Ridge" Font-Size="13pt" Height="30px" TabIndex="2" Width="243px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtFirstName" ErrorMessage="*" style="color: #FF0000; font-weight: 700"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td style="text-align: right; " class="auto-style1">
                    <asp:Label ID="Label2" runat="server" style="font-weight: 700" Text="LastName"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtLastName" runat="server" BorderColor="#BDC7D8" BorderStyle="Ridge" Font-Size="13pt" Height="30px" TabIndex="2" Width="243px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLastName" ErrorMessage="*" style="font-weight: 700; color: #FF0000"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td style="text-align: right; " class="auto-style1">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="StudentId"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtUname" runat="server" BorderColor="#BDC7D8" BorderStyle="Ridge" Font-Size="13pt" Height="30px" TabIndex="2" Width="243px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtUname" ErrorMessage="*" style="font-weight: 700; color: #FF0000"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtUname" ErrorMessage="It should be 9 digits" style="color: #FF0000; font-weight: 700" ValidationExpression="[0-9]{9}"></asp:RegularExpressionValidator>
                    </td>
            </tr>
            <tr>
                <td style="text-align: right; " class="auto-style1">
                    <asp:Label ID="Label4" runat="server" style="font-weight: 700" Text="Mailing Address"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtMailingAddress" runat="server" BorderColor="#BDC7D8" BorderStyle="Ridge" Font-Size="13pt" Height="30px" TabIndex="2" Width="243px" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtMailingAddress" ErrorMessage="*" style="font-weight: 700; color: #FF0000"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td style="text-align: right; " class="auto-style1">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="EmailID"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtEmailId" runat="server" BorderColor="#BDC7D8" BorderStyle="Ridge" Font-Size="13pt" Height="30px" TabIndex="2" Width="243px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEmailId" ErrorMessage="*" style="font-weight: 700; color: #FF0000"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmailId" ErrorMessage="Please Nter Valid EmailID" Font-Bold="True" ForeColor="#FF0066" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
            </tr>
            <tr>
                <td style="text-align: right; " class="auto-style1">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Phone Number"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtph" runat="server" BorderColor="#BDC7D8" BorderStyle="Ridge" Font-Size="13pt" Height="30px" TabIndex="2" Width="243px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtph" ErrorMessage="*" style="font-weight: 700; color: #FF0000"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtph" ErrorMessage="Mobile No Should be 10 digits" Font-Bold="True" ForeColor="#FF0066" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                    </td>
            </tr>
            <tr>
                <td style="text-align: right; " class="auto-style1">
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Concentration"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlConcentration" runat="server" BorderColor="#BDC7D8" BorderStyle="Ridge" Font-Size="13pt" Height="30px" TabIndex="2" Width="243px">
                        
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ddlConcentration" ErrorMessage="*" InitialValue="---Select---" style="font-weight: 700; color: #FF0000"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td style="text-align: right; " class="auto-style1">
                    <asp:Label ID="Label8" runat="server" style="font-weight: 700" Text="Program EntryDate"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtentrydate" runat="server" placeholder="MM-DD-YYYY" BorderColor="#BDC7D8" BorderStyle="Ridge" Font-Size="13pt" Height="30px" TabIndex="2" Width="243px"></asp:TextBox>
                   <%-- <asp:CalendarExtender ID="txtentrydate_CalendarExtender" Format="dd-MM-yyyy" PopupPosition="Right" runat="server" Enabled="True" TargetControlID="txtentrydate">
                    </asp:CalendarExtender>--%>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtentrydate" ErrorMessage="*" style="font-weight: 700; color: #FF0000"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td style="text-align: right; " class="auto-style2">
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Text="GMAT/GRE Score"></asp:Label>
                </td>
                <td style="height: 40px">
                    <asp:TextBox ID="txtGrescore" runat="server" BorderColor="#BDC7D8" BorderStyle="Ridge" Font-Size="13pt" Height="30px" TabIndex="2" Width="243px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtGrescore" ErrorMessage="*" style="font-weight: 700; color: #FF0000"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td style="text-align: right; " class="auto-style2">
                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Text="GPA"></asp:Label>
                </td>
                <td style="height: 40px">
                    <asp:TextBox ID="txtGpa" runat="server" BorderColor="#BDC7D8" BorderStyle="Ridge" Font-Size="13pt" Height="30px" TabIndex="2" Width="243px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtGpa" ErrorMessage="*" style="font-weight: 700; color: #FF0000"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td style="text-align: right; " class="auto-style1">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" class="button button1" Text="Submit" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td style="text-align: right; " class="auto-style1">&nbsp;</td>
                <td>
                    <asp:Label ID="Lblresult" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:Label>
                </td>
            </tr>
        </table>
</asp:Content>

