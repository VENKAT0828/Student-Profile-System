<%@ Page Title="" Language="C#" MasterPageFile="~/Advisor/AdvisorMasterPage.master" AutoEventWireup="true" CodeFile="ViewStudentDetails.aspx.cs" Inherits="Advisor_ViewStudentDetails" %>

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


             .auto-style1 {
                 width: 628px;
             }
             .auto-style2 {
                 text-align: center;
                 width: 628px;
             }


        </style>
    <div class="img">
        <br />
        <br />
        <br />
        <br />
    <table style="width: 100%">
        <tr>
            <td colspan="3" style="text-align: center; font-weight: 700; font-size: x-large; color: #0000FF">&nbsp;&nbsp;&nbsp;&nbsp; Student Details</td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: center; font-weight: 700; font-size: x-large; color: #0000FF">&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right;" class="auto-style1">
                <asp:Label ID="Label1" runat="server" Text="Studentid" Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td style="width: 567px">
                <asp:TextBox ID="TextBox1" Class="textbox"  runat="server" Height="25px" Width="150px"></asp:TextBox>
                <asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Size="25px" ForeColor="Blue" Visible="False"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right; " class="auto-style1">
                &nbsp;</td>
            <td style="text-align: left; width: 567px;">
                <asp:Button ID="Button1" class="button button1" runat="server" Text="Submit" OnClick="Button1_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td style="width: 567px">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center;" colspan="3">
                <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Size="25px" ForeColor="Blue" Text="Personal Details" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <center>
                <asp:GridView ID="GridViewsdetails" CssClass="Grid" PagerStyle-CssClass="pgr" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField HeaderText="Studentid" DataField="Studentid" />
                       
                        <asp:TemplateField HeaderText="firstname">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("firstname") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("firstname") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="lastname">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("lastname") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("lastname") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="phoneno">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("PhoneNumber") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("PhoneNumber") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="emailaddress">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("EMailID") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("EMailID") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="View Details">
                            
                            <ItemTemplate>
                              <asp:LinkButton ID="LinkButton1"  OnClick="LinkButton1_Click"  runat="server">Course Details</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>


                         <asp:TemplateField HeaderText="Prerequisites">
                            
                            <ItemTemplate>
                              <asp:LinkButton ID="LinkButton11"  OnClick="LinkButton2_Click"  runat="server">View Details</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>

<PagerStyle CssClass="pgr"></PagerStyle>
                </asp:GridView>
                    </center>
            </td>
        </tr>
       
        <asp:Panel ID="Paneldetails" runat="server">
        <tr>
            <td style="width: 567px; height: 23px;"></td>
            <td style="height: 23px"></td>
        </tr>
        <tr>
            <td style="width: 567px; text-align: right;">
                <asp:Label ID="Label6" runat="server" Text="Studentid:" Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox6" Class="textbox" runat="server" Height="25px" Width="150px" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 567px; text-align: right;">
                <asp:Label ID="Label7" runat="server" Text="Concentration:" Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox7" Class="textbox" runat="server" Height="25px" Width="150px" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 567px; text-align: right;">
                <asp:Label ID="Label8" runat="server" Text="Concentrationcode:" Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox8" Class="textbox" runat="server" Height="25px" Width="150px" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 567px; text-align: right;">
                <asp:Label ID="Label9" runat="server" Text="ConcentrationStatus" Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox9" Class="textbox" runat="server" Height="25px" Width="150px" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 567px; text-align: right;">
                <asp:Label ID="Label10" runat="server" Text="ProgramentryDate:" Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox10" Class="textbox" runat="server" Height="25px" Width="150px" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 567px; text-align: right;">
                <asp:Label ID="Label11" runat="server" Text="Gmat:" Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox11" Class="textbox" runat="server" Height="25px" Width="150px" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 567px; text-align: right;">
                <asp:Label ID="Label12" runat="server" Text="Gpa:" Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox12" Class="textbox" runat="server" Height="25px" Width="150px" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 567px; text-align: right;">
                <asp:Label ID="Label13" runat="server" Text="UCMO Email:" Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox13" Class="textbox" runat="server" Height="25px" Width="150px" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 567px; text-align: right;">
                <asp:Label ID="Label14" runat="server" Text="Graduation:" Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox14" Class="textbox" runat="server" Height="25px" Width="150px" Enabled="False"></asp:TextBox>
            </td>
        </tr>

             <tr>
            <td style="width: 567px; text-align: right;">
                <asp:Label ID="Label18" runat="server" Text="Graduation Date:" Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtGraduationDate" Class="textbox" runat="server" Height="25px" Width="150px" Enabled="False"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td style="width: 567px; text-align: right;">
                <asp:Label ID="Label15" runat="server" Text="Program:" Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox15" Class="textbox" runat="server" Height="25px" Width="150px" Enabled="False"></asp:TextBox>
            </td>
        </tr>
            
              <tr>
            <td style="width: 567px; text-align: right;">
                <asp:Label ID="Label19" runat="server" Text="Program Date:" Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtProgramDate" Class="textbox" runat="server" Height="25px" Width="150px" Enabled="False"></asp:TextBox>
            </td>
        </tr>      
        <tr>
            <td style="width: 567px; text-align: right;"> <asp:Label ID="Lblprefix" runat="server" Text="Prerequisite:" Font-Bold="True" Font-Size="Medium"></asp:Label></td>
            <td> <asp:DropDownList ID="Ddlprefix" Class="textbox"  Height="25px" Width="150px" runat="server">
               
                 </asp:DropDownList></td>
        </tr>

             <tr>
            <td style="width: 567px; text-align: right;"> <asp:Label ID="Lblstatus" runat="server" Text="Status:" Font-Bold="True" Font-Size="Medium"></asp:Label></td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" AutoPostBack="True" RepeatDirection="Horizontal">
                    <asp:ListItem>Met</asp:ListItem>
                     <asp:ListItem  Selected="True">Not Met</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
              <tr>
            <td style="width: 567px; text-align: right;"> <asp:Label ID="Lbldescription" runat="server" Text="Notes:" Font-Bold="True" Font-Size="Medium"></asp:Label></td>
            <td>
                <asp:TextBox ID="Txtdwscr" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
            <tr>
            <td style="width: 567px; text-align: right;"> </td>
            <td>
                <asp:Button ID="Btnpreadd" runat="server"  BackColor="#E1332D" Font-Bold="True" Height="53px" Text="Update" Width="128px" OnClick="Btnpreadd_Click" />
            </td>
        </tr>
        </asp:Panel>
        <tr>
            <td class="text-center" colspan="2">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
       
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td colspan="2" class="text-center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td style="width: 567px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td style="width: 567px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td style="width: 567px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
        </div>
</asp:Content>

