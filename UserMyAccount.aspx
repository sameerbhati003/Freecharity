<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserMyAccount.aspx.cs" Inherits="UserMyAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="grid.css" type="text/css" rel="stylesheet" />
    <link href="normalize.css" type="text/css" rel="stylesheet" />
    <link href="StyleSheet2.css" rel="stylesheet" />
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
                        <li><a href="UserHome.aspx">Home</a></li>
                        <li><a href="UserSubject.aspx">Subject</a></li>
                        <li><a href="MyPenny.aspx">My Penny</a></li>
                        <li><a href="UserMyAccount.aspx">My Account</a></li>
                        <li><asp:Button ID="btnlgot" runat="server" Text="LOGOUT" CssClass="aspbtn" OnClick="btnlgot_Click" /></li>
                    </ul>
                     </div>
                </div>
            </nav>

            <section class="section-MYACCOUNTDETAILS">
            <div class="row">
                <h2>ACCOUNT PROFILE</h2>
            </div>
                <div class="row">
                    <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
                    <table class="myaccounttable">
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="USERNAME"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtsrcusername" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Button ID="btnsrcuser" runat="server" Text="SEARCH" CssClass="aspsrcuser" OnClick="btnsrcuser_Click" />
                            </td>
                        </tr>
                        <tr><td> 

                            </td></tr>
                        <tr><td colspan="3" style="color:red;">
                            Please Re-Enter the data you would like to update
                            </td></tr>
                        <tr><td>  </td></tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="USERNAME"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text="EMAIL"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text="COUNTRY"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label5" runat="server" Text="PASSWORD"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>

                    <asp:Button ID="btnupdateuser" runat="server" Text="UPDATE" CssClass="aspupdateuser" OnClick="btnupdateuser_Click" />
                   
                </div>
                </section>

            </header>
    </form>
</body>
</html>