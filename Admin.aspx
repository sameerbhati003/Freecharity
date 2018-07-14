<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

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
                   <%-- <ul class="logout-nav">
                        <li>
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></li>
                        <li><asp:Button ID="btnlgot" runat="server" Text="LOGOUT" CssClass="aspbtn" /></li>
                        
                    </ul>--%>
                     <ul class="main-nav">
                       <li><a href="Default.aspx">Home</a></li>
                        <li><a href="Subject.aspx">Subject</a></li>
                        <li><a href="AdminPenny.aspx">Penny</a></li>
                         <li><a href="Question.aspx">Questions</a></li>
                        <li><a href="AdminUserDetails.aspx">User</a></li>
                         <li><asp:Button ID="btnlgot" runat="server" Text="LOGOUT" CssClass="aspbtn" OnClick="btnlgot_Click" /></li>
                    </ul>
                     </div>
                </div>
            </nav>
            </header>
    </form>
</body>
</html>
