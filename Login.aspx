<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="grid.css" type="text/css" rel="stylesheet" />
    <link href="normalize.css" type="text/css" rel="stylesheet" />
    <link href="StyleSheet.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Lato:100,300,300i,400" rel="stylesheet" />
    <title>FreeCharity</title>
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <nav>
                
                    <div class="header-bar">
                       
                    
                 <div class="row">
                    <img src="imges/d.png" alt="charity-logo" class="fixed-logo" />
                    <ul class="main-nav">
                        <li><a href="Default.aspx">Home</a></li>
                        <li><a href="Default.aspx">About us</a></li>
                        <li><a href="Default.aspx">Contact us</a></li>
                        <li><a href="signup.aspx">Sign up</a></li>
                    </ul>
                     </div>
                </div>
            </nav>
           <section class=" section-login">
            <div class="row">
                <h2>we are happy to have you a part of us.<br /> Please Login </h2>
                
            </div>
               <div class="row">
                   <table class="logintable">
                       <tr>
                           <td>
                               <asp:Label ID="Label1" runat="server" Text="USER NAME" ></asp:Label>&nbsp; &nbsp; &nbsp;
                           </td>
                           <td>
                               <asp:TextBox ID="txtlgnusername" runat="server" ></asp:TextBox>
                           </td>
                       </tr>
                       <tr>
                           <td>
                               <asp:Label ID="Label2" runat="server" Text="PASSWORD"></asp:Label>
                           </td>
                           <td>
                               <asp:TextBox ID="txtlgnpass" runat="server" TextMode="Password"></asp:TextBox>
                           </td>
                       </tr>
                       </table>
                   
                   <asp:Button ID="btnuserlgn" runat="server" Text="SUBMIT" CssClass="aspbtnuserlgn" OnClick="btnuserlgn_Click"/>
                   <asp:Button ID="btnclrlgn" runat="server" Text="CLEAR" CssClass="aspbtnclrlgn"  />
                   <br />
                   <br />
                   </div>
               <div class="signuploginred">
                       <a href="signup.aspx">Don't have an Account! Please SIGN-UP</a>
                   </div>
               </section>>
            </header>
       
    </form>
</body>
</html>
