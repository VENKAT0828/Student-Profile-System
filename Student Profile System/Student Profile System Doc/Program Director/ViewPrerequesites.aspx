<%@ Page Title="" Language="C#" MasterPageFile="~/Program Director/DirectorMasterPage.master" AutoEventWireup="true" CodeFile="ViewPrerequesites.aspx.cs" Inherits="Program_Director_ViewPrerequesites" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <center>
                    <asp:GridView ID="gvPreq" EmptyDataText="No Data Found"  PagerStyle-CssClass="pgr" CssClass="Grid" runat="server" AutoGenerateColumns="False">
                       

                        <Columns>
                            <asp:TemplateField HeaderText="PrerequesiteId">
                                
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("PrerequesiteId") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Name">
                               
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="NoOfCreditHours">
                               
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("NoOfCreditHours") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Status">
                               
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("pstatus") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                       

<PagerStyle CssClass="pgr"></PagerStyle>
                    </asp:GridView>
                    </center>
                </td>
        </tr>
    </table>
</asp:Content>


