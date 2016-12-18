<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="ProgramDirector.aspx.cs" Inherits="ProgramDirector" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
       <asp:UpdatePanel ID="UpdatePanel1" runat="server">
          <ContentTemplate>

              <asp:Timer ID="Timer1" runat="server" Interval="2000" OnTick="Timer1_Tick"></asp:Timer>
   
    <asp:Image ID="Image1" runat="server"  style="width: 950px; height: 535px"  />
          </ContentTemplate>
      </asp:UpdatePanel>
    <html>

<head>

  <meta charset="UTF-8">

  <title>CodePen - Log-in</title>

  <%--<link rel='stylesheet' href='http://codepen.io/assets/libs/fullpage/jquery-ui.css'>--%>

    <link rel="stylesheet" href="css/style.css" media="screen" type="text/css" />

</head>

<body>
    <br />
    <br />
  <div class="login-card" style="background-color:white;box-shadow: 2px 2px 2px 8px #888888;margin-top:-550px;margin-left:1000px;background-image:url('images/kk.jpg')">
    <h1 style="color:red;" ><strong>Director</strong></h1><br>
     <asp:TextBox ID="txtUserId" runat="server"  BorderColor="Green"  placeholder="Username"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtUserId" runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
      <asp:TextBox ID="txtpwd" runat="server"  BorderColor="Green" placeholder="Password" TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtpwd" runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
      <asp:Button ID="Button1" runat="server" Text="Login" class="login login-submit" OnClick="Button1_Click" />
  
       &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="true" style="color: #FF0000; font-size: 12px"></asp:Label>
      <br />
      </div>
    

<!-- <div id="error"><img src="https://dl.dropboxusercontent.com/u/23299152/Delete-icon.png" /> Your caps-lock is on.</div> -->

  <script src='http://codepen.io/assets/libs/fullpage/jquery_and_jqueryui.js'></script>

</body>

</html>
</asp:Content>

