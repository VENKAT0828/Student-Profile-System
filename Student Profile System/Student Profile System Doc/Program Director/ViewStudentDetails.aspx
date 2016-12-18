<%@ Page Title="" Language="C#" MasterPageFile="~/Program Director/DirectorMasterPage.master" AutoEventWireup="true" CodeFile="ViewStudentDetails.aspx.cs" Inherits="Program_Director_ViewStudentDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <br />
   
     <table style="width: 100%">
           
            <tr>
                <td>
                    <center>
                        <br />
        <asp:GridView ID="GridView1" EmptyDataText="No Data Found" runat="server"   PagerStyle-CssClass="pgr" CssClass="Grid" AutoGenerateColumns="False" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowDataBound="GridView1_RowDataBound">
            <Columns>

                 <asp:TemplateField HeaderText="View">
        <ItemTemplate>
       <asp:LinkButton runat="server" ID="lnkView" OnClick="lnkView_Click">View Details</asp:LinkButton>
         </ItemTemplate>
       </asp:TemplateField>
                <asp:TemplateField HeaderText="FirstName">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("FirstName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                

                <asp:BoundField HeaderText="Studentid" DataField="Studentid" ReadOnly="true" />
                <asp:TemplateField HeaderText="Ucmoaddress">
                   
                    <ItemTemplate>
                        <asp:Label ID="Label12" runat="server" Text='<%# Bind("Ucmoaddress") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="EmailID">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtEmailID" runat="server"  Text='<%# Bind("EMailID") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblEmailID" runat="server" Text='<%# Bind("EMailID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="graduation">
                    <EditItemTemplate>
                       <asp:DropDownList ID="ddlgrauation" runat="server" Font-Bold="true">
                                        
                                        <asp:ListItem>approved</asp:ListItem>
                                         <asp:ListItem>deny</asp:ListItem>
                                    </asp:DropDownList>


                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server"  Text='<%# Bind("graduation") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="program">
                    
                    <EditItemTemplate>
                        <asp:DropDownList ID="ddlprogram" runat="server" Font-Bold="true">
                                        
                                        <asp:ListItem>accepted</asp:ListItem>
                                         <asp:ListItem>rejected</asp:ListItem>
                                    </asp:DropDownList>


                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("program") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Description">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server"  Text='<%# Bind("Description") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Description") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle Width="2%" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="academiccode">
                    
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("academiccode") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ViewDetails">
                               
                                <ItemTemplate>
                                    <asp:Button ID="Buttonview" runat="server" Font-Italic="true" Height="150%" Width="100%" BackColor="#ff0000" Font-Bold="true" OnClick="Buttonview_Click"  Text="View"></asp:Button> 
                                </ItemTemplate>
                            </asp:TemplateField>
                 <asp:TemplateField HeaderText="ViewPrerequisites">
                               
                                <ItemTemplate>
                                    <asp:Button ID="Buttonpview" runat="server" Font-Italic="true"  Height="150%" Width="100%"  BackColor="#0000ff" Font-Bold="true" OnClick="Buttonpview_Click"  Text="View"></asp:Button> 
                                </ItemTemplate>
                            </asp:TemplateField>
            </Columns>
            <PagerStyle CssClass="pgr"></PagerStyle>
        </asp:GridView>
                    </center>
                </td>
            </tr>
           
             <%--<asp:Panel ID="Panel1" runat="server">--%>
           
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
           
            <tr>
                <td>
                    <center>
                    <asp:GridView ID="GridView2"  PagerStyle-CssClass="pgr" CssClass="Grid" runat="server" AutoGenerateColumns="False" AutoGenerateEditButton="True" OnRowCancelingEdit="GridView2_RowCancelingEdit" OnRowEditing="GridView2_RowEditing" OnRowUpdating="GridView2_RowUpdating">
                        <Columns>
                            <asp:TemplateField HeaderText="StudentId">
                               
                                <ItemTemplate>
                                    <asp:Label ID="lblStudentId" runat="server" Text='<%# Bind("Studentid") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="MailAddress">
                                
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("MailingAddress") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="EMailID">
                               
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("EMailID") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="PhoneNo">
                               
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("PhoneNumber") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>


                             <asp:TemplateField HeaderText="Concentration">
                    
                    <EditItemTemplate>
                        <asp:DropDownList ID="ddlConcentration" runat="server" Font-Bold="true">
                                      <asp:ListItem>---Select---</asp:ListItem>
                        <asp:ListItem>accounting</asp:ListItem>
                        <asp:ListItem>finance</asp:ListItem>
                        <asp:ListItem>information system</asp:ListItem>
                        <asp:ListItem>marketing</asp:ListItem>
                        <asp:ListItem>sports</asp:ListItem>
                        <asp:ListItem>business</asp:ListItem>
                        <asp:ListItem>general</asp:ListItem>
                                    </asp:DropDownList>

                           <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="please select any option" ControlToValidate="ddlprogram"></asp:RequiredFieldValidator>  --%>

                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblConcentration" runat="server" Text='<%# Bind("Concentration") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                           
                            <asp:TemplateField HeaderText="ccode">
                               
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("ccode") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="advisor">
                               
                                <ItemTemplate>
                                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("advisor") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="cstatus">
                               
                                <ItemTemplate>
                                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("cstatus") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="EntryDate">
                               
                                <ItemTemplate>
                                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("EntryDate") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Score">
                              
                                <ItemTemplate>
                                    <asp:Label ID="Label10" runat="server" Text='<%# Bind("Score") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="GPA">
                               
                                <ItemTemplate>
                                    <asp:Label ID="Label11" runat="server" Text='<%# Bind("GPA") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>

<PagerStyle CssClass="pgr"></PagerStyle>
                    </asp:GridView>
                        </center>   
                </td>
            </tr>
           
             
              
            <tr>
                <td>
                    <center>
                <asp:GridView ID="GridViewprerquisite"  runat="server"  CssClass="Grid" PagerStyle-CssClass="pgr" AutoGenerateColumns="False" EmptyDataText="No data Found">
                    <Columns>
                        <asp:BoundField HeaderText="Studentid" DataField="Studentid" />
                       
                        <asp:TemplateField HeaderText="PrerequesiteId">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("prerequisiteprefix") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label13" runat="server" Text='<%# Bind("prerequisiteprefix") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Status">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox13" runat="server" Text='<%# Bind("Status") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label14" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Notes">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox14" runat="server" Text='<%# Bind("Description") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label15" runat="server" Text='<%# Bind("Description") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Date">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox15" runat="server" Text='<%# Bind("Date") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label16" runat="server" Text='<%# Bind("Date") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>

<PagerStyle CssClass="pgr"></PagerStyle>
                </asp:GridView>
                        </center>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
</asp:Content>

