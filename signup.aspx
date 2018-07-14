<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

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
           <section class=" section-signup">
            <div class="row">
                <h2>Registration Form</h2>
            </div>
               <div class="row">
                   <table class="addusertable">
                       <tr>
                           <td>
                               <asp:Label ID="Label1" runat="server" Text="USER NAME"></asp:Label>&nbsp; &nbsp; &nbsp;
                           </td>
                           <td>
                               <asp:TextBox ID="txtusername" runat="server" ></asp:TextBox>
                           </td>
                       </tr>
                       <tr>
                           <td>
                               <asp:Label ID="Label2" runat="server" Text="E-MAIL"></asp:Label>
                           </td>
                           <td>
                               <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                           </td>
                       </tr>
                       <tr>
                           <td>
                               <asp:Label ID="Label3" runat="server" Text="COUNTRY"></asp:Label>
                           </td>
                           <td>
                               <asp:TextBox ID="txtcountry" runat="server"></asp:TextBox>
                           </td>
                       </tr>
                       <tr>
                           <td>
                               <asp:Label ID="Label4" runat="server" Text="PASSWORD"></asp:Label>
                           </td>
                           <td>
                               <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
                           </td>
                       </tr>
                       <tr>
                           <td>
                               <asp:Label ID="Label5" runat="server" Text="ROLE" Visible="false"></asp:Label>
                           </td>
                           <td>
                               <asp:TextBox ID="txtrole" runat="server" Visible="false"></asp:TextBox>
                           </td>
                       </tr>
                   </table>
                   <asp:Button ID="btnadduser" runat="server" Text="SUBMIT" CssClass="aspbtnadduser" OnClick="btnadduser_Click" />
                   <asp:Button ID="btnclruser" runat="server" Text="CLEAR" CssClass="aspbtnclruser" OnClick="btnclruser_Click" />
                   <br />
                   <br />
                 
               </div>
               <div class="signuplog">
                   <a href="Login.aspx">Have an Account already! Please LOGIN</a>  
               </div>
            </section>
            </header>
        
    </form>
</body>
</html>
