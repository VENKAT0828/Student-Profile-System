<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudentMasterPage.master" AutoEventWireup="true" CodeFile="StudentQuestion.aspx.cs" Inherits="Student_StudentQuestion" %>

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
        .auto-style1 {
            text-align: center;
            font-size: xx-large;
            color: #FF0000;
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

    </style>
    <table style="width: 100%">
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>1) For each foundation course (ACCT 2101, FIN 2801, FIN 3801), provide a course description and ask Have you taken a course like this? If so, at what school? What was the course prefix, number and title?</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtq1" runat="server"  CssClass="textox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>2) How many classes do you plan to take each fall / spring semester?</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtq2" runat="server"  CssClass="textox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>3) How many classes to you plan to take in the summer?</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtq3" runat="server"  CssClass="textox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>4) Do you plan to work while pursuing your MBA? If so, how many hours a week do you plan to work?</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtq4" runat="server"  CssClass="textox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>5) If currently employed For whom do you work? What is your position?</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtq5" runat="server"  CssClass="textox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>6) How far is your residence from UCM’s Warrensburg campus?</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtq6" runat="server"  CssClass="textox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>7) How far is your work location from UCM’s Warresnburg campus?</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtq7" runat="server"  CssClass="textox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>8) Do you have children for whom you are responsible?</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtq8" runat="server"  CssClass="textox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>9) Are you a single parent?</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtq9" runat="server"  CssClass="textox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>10) Will you have difficulty scheduling morning classes?</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtq10" runat="server"  CssClass="textox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>11) Will you have difficulty scheduling afternoon classes?</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtq11" runat="server"  CssClass="textox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>12) Will you have difficulty scheduling night classes?</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtq12" runat="server"  CssClass="textox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>13) Will you have difficulty scheduling weekend classes?</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtq13" runat="server"  CssClass="textox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>14) What is your motivation in pursing an MBA?</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtq14" runat="server"  CssClass="textox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>15) What type of position do you plan to seek after obtaining your MBA?</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtq15" runat="server"  CssClass="textox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>16) How did you become aware of the MBA program at UCM?</td>
        </tr>
        <tr>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="textox">
                    <asp:ListItem>---Select---</asp:ListItem>
                    <asp:ListItem>Internet search</asp:ListItem>
                    <asp:ListItem>Referral by a friend/co-worker</asp:ListItem>
                    <asp:ListItem>Referral by a manager at work</asp:ListItem>
                    <asp:ListItem>Attended UCM before</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>17) What attracted you to the MBA program at UCM?</td>
        </tr>
        <tr>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="textox">
                    <asp:ListItem>---Select---</asp:ListItem>
                    <asp:ListItem>Cost</asp:ListItem>
                    <asp:ListItem>Entrance requirements</asp:ListItem>
                    <asp:ListItem>Reputation</asp:ListItem>
                    <asp:ListItem>Proximity to work</asp:ListItem>
                    <asp:ListItem>Proximity to home</asp:ListItem>
                    <asp:ListItem>Familiarity with UCM</asp:ListItem>
                    <asp:ListItem>Know other students</asp:ListItem>
                    <asp:ListItem>AACSB Accreditation</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Labelresult" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Terms And Conditions</td>
        </tr>
        <tr>
            <td>
                <asp:CheckBox ID="CheckBox1" runat="server" Text="By Clicking SUBMIT I Agree that:" style="color: #0000FF"/>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>1) The MBA program at the University of Central Missouri is an 11 course program. All students complete a six-course core and five courses for a concentration and electives. There are six concentrations available: Accounting, Finance, Information Systems, Marketing, Sports Business and General.</td>
        </tr>
        <tr>
            <td>2) The MBA Program Director is responsible for MBA program as a whole which includes reviewing applications to the program. Once a student is accepted to the program, he or she is assigned to an advisor based upon the concentration selected.</td>
        </tr>
        <tr>
            <td>3) The business problem is the lack of communication and coordination between new MBA students, the MBA Program Director and the Concentration Advisors.</td>
        </tr>
        <tr>
            <td style="text-align: center">
                    <asp:Button ID="Button1" runat="server" class="button button1" Text="Submit" OnClick="Button1_Click" />
                </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

