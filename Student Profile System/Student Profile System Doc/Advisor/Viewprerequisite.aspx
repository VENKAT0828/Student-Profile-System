<%@ Page Title="" Language="C#" MasterPageFile="~/Advisor/AdvisorMasterPage.master" AutoEventWireup="true" CodeFile="Viewprerequisite.aspx.cs" Inherits="Advisor_Viewprerequisite" %>

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
        width: 572px;
    }
        .auto-style2 {
            height: 40px;
            width: 572px;
            text-align: left;
        }


        .auto-style3 {
        width: 572px;
        text-align: left;
    }


    </style>
     <table style="width: 100%">
         <tr>
             <td class="auto-style2" style="text-align: left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Button ID="btnSubmit" runat="server" class="button button1" OnClick="btnSubmit_Click" Text="Back" />
             </td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style2" style="text-align: right">&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style2" colspan="2">
                 <center>
                     <asp:GridView ID="GridViewprerquisite" runat="server" AutoGenerateColumns="False" CssClass="Grid" PagerStyle-CssClass="pgr" EmptyDataText="There is no Prerequisites">
                         <Columns>
                             <asp:BoundField DataField="Studentid" HeaderText="Studentid" />
                             <%-- <asp:TemplateField HeaderText="Studentid">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Studentid") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Studentid") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>--%>
                             <asp:TemplateField HeaderText="PrerequesiteId">
                                 <EditItemTemplate>
                                     <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("prerequisiteprefix") %>'></asp:TextBox>
                                 </EditItemTemplate>
                                 <ItemTemplate>
                                     <asp:Label ID="Label2" runat="server" Text='<%# Bind("prerequisiteprefix") %>'></asp:Label>
                                 </ItemTemplate>
                             </asp:TemplateField>
                             <asp:TemplateField HeaderText="Status">
                                 <EditItemTemplate>
                                     <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Status") %>'></asp:TextBox>
                                 </EditItemTemplate>
                                 <ItemTemplate>
                                     <asp:Label ID="Label3" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                                 </ItemTemplate>
                             </asp:TemplateField>
                             <asp:TemplateField HeaderText="Notes">
                                 <EditItemTemplate>
                                     <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Description") %>'></asp:TextBox>
                                 </EditItemTemplate>
                                 <ItemTemplate>
                                     <asp:Label ID="Label4" runat="server" Text='<%# Bind("Description") %>'></asp:Label>
                                 </ItemTemplate>
                             </asp:TemplateField>
                             <asp:TemplateField HeaderText="Date">
                                 <EditItemTemplate>
                                     <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Date") %>'></asp:TextBox>
                                 </EditItemTemplate>
                                 <ItemTemplate>
                                     <asp:Label ID="Label5" runat="server" Text='<%# Bind("Date") %>'></asp:Label>
                                 </ItemTemplate>
                             </asp:TemplateField>
                         </Columns>
                         <PagerStyle CssClass="pgr" />
                     </asp:GridView>
                 </center>
             </td>
         </tr>
         <tr>
             <td colspan="2">&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style2">&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style2">&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style2">&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
     </table>
</asp:Content>

