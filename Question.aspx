<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Question.aspx.cs" Inherits="Question" %>

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
            <section class="section-addsub">
            <div class="row">
                <h2>Add Question</h2>
            </div>

            <div class="row">
                <table class="addsubtable">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="Enter Question"></asp:Label> &nbsp; &nbsp; &nbsp;
                        </td>
                        <td>
                            <asp:TextBox ID="questiontxt" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Option One"></asp:Label> &nbsp; &nbsp; &nbsp;
                        </td>
                        <td>
                            <asp:TextBox ID="opt1txt" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="Option Two"></asp:Label> &nbsp; &nbsp; &nbsp;
                        </td>
                        <td>
                            <asp:TextBox ID="opt2txt" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="Option Three"></asp:Label> &nbsp; &nbsp; &nbsp;
                        </td>
                        <td>
                            <asp:TextBox ID="opt3txt" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <asp:Label ID="Label5" runat="server" Text="Option Four"></asp:Label> &nbsp; &nbsp; &nbsp;
                        </td>
                        <td>
                            <asp:TextBox ID="opt4txt" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <asp:Label ID="Label6" runat="server" Text="Correct Option"></asp:Label> &nbsp; &nbsp; &nbsp;
                        </td>
                        <td>
                            <asp:TextBox ID="coropttxt" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <asp:Label ID="Label7" runat="server" Text="Subject Id"></asp:Label> &nbsp; &nbsp; &nbsp;
                        </td>
                        <td>
                            <asp:TextBox ID="subidtxt" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    
                </table>
                <asp:Button ID="addquebtn" runat="server" Text="Add Question" CssClass="aspbtnaddque" OnClick="addquebtn_Click"/>
                <asp:Button ID="btnclruser" runat="server" Text="CLEAR" CssClass="aspbtnclruser" OnClick="btnclruser_Click" />
            </div>
                </section>
            </header>
         
    </form>
</body>
</html>
