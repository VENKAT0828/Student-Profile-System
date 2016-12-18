<%@ Page Title="" Language="C#" MasterPageFile="~/Program Director/DirectorMasterPage.master" AutoEventWireup="true" CodeFile="AdvisorViewDetails.aspx.cs" Inherits="Program_Director_AdvisorViewDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <br />
    <br />
    <br />
        <center>
        <asp:GridView ID="GridView2" runat="server" EmptyDataText="No Data Found"  PagerStyle-CssClass="pgr" CssClass="Grid" AutoGenerateColumns="False" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
            <Columns>

                 <asp:TemplateField HeaderText="FacultyID">
                    <ItemTemplate>

                         <asp:LinkButton runat="server" ID="lnkView" ForeColor="Red" Font-Bold="true"  OnClick="lnkView_Click" Text='<%# Bind("UserName") %>'>View Details</asp:LinkButton>
                        <%--<asp:Label ID="lblUserName0" runat="server" Text='<%# Bind("UserName") %>'></asp:Label>--%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Name">
                    <ItemTemplate>
                        <asp:Label ID="LabelUserName" runat="server" Text='<%# Bind("FirstName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Status">
                    <ItemTemplate>
                        <asp:Label ID="Label9" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
               
               
            </Columns>
            <PagerStyle CssClass="pgr"></PagerStyle>
        </asp:GridView>
            <br />
            <asp:Label ID="Label10" runat="server" style="font-weight: 700; color: #FF0066" Text="Faculty:" Visible="False"></asp:Label>
            <asp:Label ID="Label11" runat="server" style="color: #0000FF; font-weight: 700" Text="Label" Visible="False"></asp:Label>
            <br />
            <br />
            <br />
            <br />
<asp:Panel ID="Panel1" runat="server">
        <asp:GridView ID="GridView1" runat="server"   PagerStyle-CssClass="pgr" CssClass="Grid" AutoGenerateColumns="False" AutoGenerateEditButton="True" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowDataBound="GridView1_RowDataBound">
            <Columns>
                <asp:TemplateField HeaderText="FirstName">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("FirstName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="LastName">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("LastName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Faculty ID">
                    <ItemTemplate>
                        <asp:Label ID="lblUserName" runat="server" Text='<%# Bind("UserName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Password">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtpwd" runat="server" ForeColor="White" Font-Bold="true" BackColor="Green" Text='<%# Bind("Password") %>'></asp:TextBox>
                   
                    </EditItemTemplate>

                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Password") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Mobile Number">
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("Mob") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email ID">
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Address">
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Status">
                    <EditItemTemplate>
                         <asp:DropDownList ID="ddlStatus" runat="server"  >
                 <asp:ListItem Selected="True" Value="---Select---"></asp:ListItem>
                          <asp:ListItem   Value="Active" ></asp:ListItem>
                            <asp:ListItem Value="InActive"></asp:ListItem>
                        </asp:DropDownList>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="ddlStatus" InitialValue="---Select---" runat="server" ErrorMessage="*" ForeColor="White"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Font-Bold="true" ForeColor="Red" Text='<%# Bind("Status") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <PagerStyle CssClass="pgr"></PagerStyle>
        </asp:GridView>
    </asp:Panel>

            </center>
</asp:Content>

