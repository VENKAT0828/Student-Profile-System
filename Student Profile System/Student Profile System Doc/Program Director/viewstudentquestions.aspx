<%@ Page Title="" Language="C#" MasterPageFile="~/Program Director/DirectorMasterPage.master" AutoEventWireup="true" CodeFile="viewstudentquestions.aspx.cs" Inherits="Program_Director_viewstudentquestions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <style>
        .textox {
   width: 1250px;
   height: 32px;
   border: solid 2px #00E3E3;
   padding: 2px;
   border-radius: 5px;
   font-size: 23px;
   box-shadow: -6px 1px 9px 2px rgba(156, 156, 156, 0.23);
   background-color: #FFFFFF;
   outline: none;
   color: #3333CC;
   margin-left:15px;
  }
.textox:hover  {
   border: 2px solid #FF00D5;
  }
.textox:focus  {
   border: solid 2px #00D43C;
   box-shadow: inset 0px 1px 2px 0px #9C9C9C;
  }
.textox:active  {
   border: solid 2px #0043EB;
  }
            
.button1 {
    box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
}

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
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
}

        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            color: #3333CC;
            text-decoration: underline;
        }

         .auto-style4 {
             color: black;
             font-weight: 700;
         }

         .auto-style5 {
             text-align: center;
             color: #FF0000;
             font-size: xx-large;
         }

    </style>
    <table style="width: 100%">
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>View List Of Students Answered Questions</strong></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <center>
        <asp:GridView ID="GridView1" runat="server" EmptyDataText="No Data Found"   PagerStyle-CssClass="pgr" CssClass="Grid" AutoGenerateColumns="False" OnRowDataBound="GridView1_RowDataBound" >
            <Columns>
                    <asp:TemplateField HeaderText="View">
        <ItemTemplate>
       <asp:LinkButton runat="server" ID="lnkView" OnClick="lnkView_Click">View Details</asp:LinkButton>
         </ItemTemplate>
       </asp:TemplateField>
             <asp:BoundField DataField="Studentid" HeaderText="Studentid" />
            </Columns>
            <PagerStyle CssClass="pgr"></PagerStyle>
             <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        </asp:GridView>
                    <br />
                    <asp:Label ID="Label1" runat="server" style="color: #FF0000; font-weight: 700" Text="UserName:"></asp:Label>
                    <strong>&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lbluName" runat="server" CssClass="auto-style3"></asp:Label>
                    <br />
                    <br />
                    <br />
                    </strong>
                    </center>
            </td>
        </tr>
        <tr>
            <td>
                <table class="auto-style2">
                    <tr>
                        <td>
                            <asp:Panel ID="Panel1" runat="server">
                                <table class="auto-style2">
                                    <tr>
                                        <td>1) <span class="auto-style4"><strong>For each foundation course (ACCT 2101, FIN 2801, FIN 3801), provide a course description and ask Have you taken a course like this? If so, at what school? What was the course prefix, number and title?</strong></span></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="txtq1" runat="server" CssClass="textox" Enabled="False"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style4"><strong>2) How many classes do you plan to take each fall / spring semester?</strong></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="txtq2" runat="server" CssClass="textox" Enabled="False"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style4"><strong>3) How many classes to you plan to take in the summer?</strong></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="txtq3" runat="server" CssClass="textox" Enabled="False"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style4">4) Do you plan to work while pursuing your MBA? If so, how many hours a week do you plan to work?</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="txtq4" runat="server" CssClass="textox" Enabled="False"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style4">5) If currently employed For whom do you work? What is your position?</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="txtq5" runat="server" CssClass="textox" Enabled="False"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style4">6) How far is your residence from UCM’s Warrensburg campus?</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="txtq6" runat="server" CssClass="textox" Enabled="False"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style4">7) How far is your work location from UCM’s Warresnburg campus?</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="txtq7" runat="server" CssClass="textox" Enabled="False"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style4">8) Do you have children for whom you are responsible?</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="txtq8" runat="server" CssClass="textox" Enabled="False"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style4">9) Are you a single parent?</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="txtq9" runat="server" CssClass="textox" Enabled="False"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style4">10) Will you have difficulty scheduling morning classes?</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="txtq10" runat="server" CssClass="textox" Enabled="False"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style4">11) Will you have difficulty scheduling afternoon classes?</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="txtq11" runat="server" CssClass="textox" Enabled="False"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style4">12) Will you have difficulty scheduling night classes?</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="txtq12" runat="server" CssClass="textox" Enabled="False"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style4">13) Will you have difficulty scheduling weekend classes?</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="txtq13" runat="server" CssClass="textox" Enabled="False"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style4">14) What is your motivation in pursing an MBA?</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="txtq14" runat="server" CssClass="textox" Enabled="False"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style4">15) What type of position do you plan to seek after obtaining your MBA?</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="txtq15" runat="server" CssClass="textox" Enabled="False"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style4">16) How did you become aware of the MBA program at UCM?</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="txtq16" runat="server" CssClass="textox" Enabled="False"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style4">17) What attracted you to the MBA program at UCM?</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="txtq17" runat="server" CssClass="textox" Enabled="False"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        </table>
</asp:Content>

