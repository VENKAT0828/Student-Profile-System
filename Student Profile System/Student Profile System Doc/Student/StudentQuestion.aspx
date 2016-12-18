<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudentMasterPage.master" AutoEventWireup="true" CodeFile="StudentQuestion.aspx.cs" Inherits="Student_StudentQuestion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
  margin-left:15px
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
    padding: 10px 25px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
}

    </style>
    <br />
    <br />
     <table style="width: 100%; text-align: center;">
            
        <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red" style="font-weight: 700;margin-left:300px;font-size: xx-large"></asp:Label>
        </table>
    <asp:Panel ID="Panel1" runat="server">
       

    <table style="width: 100%">
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td><strong>1) For each foundation course (ACCT 2101, FIN 2801, FIN 3801), provide a course description and ask Have you taken a course like this? If so, at what school? What was the course prefix, number and title?</strong></td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtq1" runat="server"  CssClass="textox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtq1" ErrorMessage="*" style="font-weight: 700; color: #FF0000; font-size: large"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><strong>2) How many classes do you plan to take each fall / spring semester?</strong></td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtq2" runat="server"  CssClass="textox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtq2" ErrorMessage="*" style="font-weight: 700; color: #FF0000; font-size: large"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><strong>3) How many classes to you plan to take in the summer?</strong></td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtq3" runat="server"  CssClass="textox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtq3" ErrorMessage="*" style="font-weight: 700; color: #FF0000; font-size: large"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><strong>4) Do you plan to work while pursuing your MBA? If so, how many hours a week do you plan to work?</strong></td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtq4" runat="server"  CssClass="textox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtq4" ErrorMessage="*" style="font-weight: 700; color: #FF0000; font-size: large"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><strong>5) If currently employed For whom do you work? What is your position?</strong></td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtq5" runat="server"  CssClass="textox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtq5" ErrorMessage="*" style="font-weight: 700; color: #FF0000; font-size: large"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><strong>6) How far is your residence from UCM’s Warrensburg campus?</strong></td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtq6" runat="server"  CssClass="textox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtq6" ErrorMessage="*" style="font-weight: 700; color: #FF0000; font-size: large"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><strong>7) How far is your work location from UCM’s Warresnburg campus?</strong></td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtq7" runat="server"  CssClass="textox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtq7" ErrorMessage="*" style="font-weight: 700; color: #FF0000; font-size: large"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><strong>8) Do you have children for whom you are responsible?</strong></td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtq8" runat="server"  CssClass="textox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtq8" ErrorMessage="*" style="font-weight: 700; color: #FF0000; font-size: large"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><strong>9) Are you a single parent?</strong></td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtq9" runat="server"  CssClass="textox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtq9" ErrorMessage="*" style="font-weight: 700; color: #FF0000; font-size: large"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><strong>10) Will you have difficulty scheduling morning classes?</strong></td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtq10" runat="server"  CssClass="textox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtq10" ErrorMessage="*" style="font-weight: 700; color: #FF0000; font-size: large"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><strong>11) Will you have difficulty scheduling afternoon classes?</strong></td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtq11" runat="server"  CssClass="textox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtq11" ErrorMessage="*" style="font-weight: 700; color: #FF0000; font-size: large"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><strong>12) Will you have difficulty scheduling night classes?</strong></td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtq12" runat="server"  CssClass="textox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtq12" ErrorMessage="*" style="font-weight: 700; color: #FF0000; font-size: large"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><strong>13) Will you have difficulty scheduling weekend classes?</strong></td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtq13" runat="server"  CssClass="textox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtq13" ErrorMessage="*" style="font-weight: 700; color: #FF0000; font-size: large"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><strong>14) What is your motivation in pursing an MBA?</strong></td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtq14" runat="server"  CssClass="textox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtq14" ErrorMessage="*" style="font-weight: 700; color: #FF0000; font-size: large"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><strong>15) What type of position do you plan to seek after obtaining your MBA?</strong></td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtq15" runat="server"  CssClass="textox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtq15" ErrorMessage="*" style="font-weight: 700; color: #FF0000; font-size: large"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><strong>16) How did you become aware of the MBA program at UCM?</strong></td>
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
                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="DropDownList1" ErrorMessage="*" InitialValue="---Select---" style="font-weight: 700; color: #FF0000; font-size: large"></asp:RequiredFieldValidator>
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
                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="DropDownList2" ErrorMessage="*" InitialValue="---Select---" style="font-weight: 700; color: #FF0000; font-size: large"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
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
        </asp:Panel>
</asp:Content>

