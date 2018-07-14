<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminUserDetails.aspx.cs" Inherits="AdminUserDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="grid.css" type="text/css" rel="stylesheet" />
    <link href="normalize.css" type="text/css" rel="stylesheet" />
    <link href="StyleSheet2.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Lato:100,300,300i,400" rel="stylesheet" />
    <title>FreeCharity</title>
    <style type="text/css">
        .auto-style1 {
            width: 169px;
        }
    </style>
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
                         <li><asp:Button ID="btnlgot" runat="server" Text="LOGOUT" CssClass="aspbtn"/></li>
                    </ul>
                     </div>
                </div>
            </nav>
            <section class="section-UserDetails">
            <div class="row">
                <h2>User Detials</h2>
            </div>
                <div class="row">
                    <table class="adduserdetailtbl">
                        <%--<tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </td>
                            <td>
<%--                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Must Proved the User Name" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                            </td>
                            </tr>--%>
                        <tr>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="E-Mail"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </td>
                            <td colspan="2">
                                <asp:Button ID="Button2" runat="server" Text="SEARCH USER" CssClass="aspbtnsrcuser" OnClick="Button2_Click"/>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Must Enter the E-Mail" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Your E-mail must be Valid" ControlToValidate="TextBox2"></asp:RegularExpressionValidator>
                            --%></td>
                            <td>
                                
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter your valid E-mail address"></asp:RequiredFieldValidator>--%>
                                
                            </td>
                        </tr>
                        <tr>
                            <td  style="margin-top:180px;"> </td>
                        </tr>
                        
                        <tr>
                            <td  style="margin-top:180px;"> </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="txtusername" runat="server"></asp:TextBox></td>

                            <td>
                                <asp:Label ID="Label3" runat="server" Text="E-Mail"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox></td>

                            <td>
                                <asp:Label ID="Label4" runat="server" Text="Country"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="txtcountry" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox></td>

                            <td>
                                <asp:Label ID="Label6" runat="server" Text="Role"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="txtrole" runat="server"></asp:TextBox></td>

                            <td></td>
                            <td>
                                <asp:Button ID="Button1" runat="server" Text="UPDATE" CssClass="aspbtnsrcuser" OnClick="Button1_Click" /></td>
                        </tr>

                        
                    </table>


                    
                </div>
                
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" CssClass="gridadminuser" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:GridView>
                
         

                </section>
            </header>
        
    </form>
</body>
</html>