<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminPenny.aspx.cs" Inherits="AdminPenny" %>

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
            <section class="section-addmypenny">
                <div class="row">
                    <h2>Total Penny Collected</h2>
                </div>
                <div class="row" >
                    <asp:GridView ID="GridView1" CssClass="addmypenny" ShowFooter="true" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderkalWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" >
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <FooterStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                    
                </div>
            </section>
            </header>
    </form>
</body>
</html>