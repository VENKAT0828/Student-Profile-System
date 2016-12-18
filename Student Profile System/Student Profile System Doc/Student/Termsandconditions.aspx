<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudentMasterPage.master" AutoEventWireup="true" CodeFile="Termsandconditions.aspx.cs" Inherits="Student_Termsandconditions" %>

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
    padding: 10px 25px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
}

         .auto-style2 {
             height: 62px;
         }

    </style>
    <br />
    <br />
    <table style="width: 100%">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
      <tr>
            <td class="auto-style1">Academic Code of Conduct</td>
        </tr>
        </table>
     <asp:Panel ID="Panel1" runat="server">
    <table style="width:100%">
        <tr>
            <td class="auto-style2">
                <asp:CheckBox ID="CheckBox1" runat="server" Text="By Clicking SUBMIT I Agree that:" style="color: #0000FF" OnCheckedChanged="CheckBox1_CheckedChanged"/>
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
                    <asp:Button ID="Buttonresult" runat="server" class="button button1" Text="Submit" OnClick="Button1_Click" />
                </td>
        </tr>
        </table>
          </asp:Panel>
         <table style="width:100%;min-height:500px" >
        <tr>
            <td style="text-align: center">
                <asp:Label ID="Labelresult" runat="server" Font-Bold="True"  Font-Size="50px" ForeColor="Red" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
        
</asp:Content>

