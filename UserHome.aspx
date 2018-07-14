<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserHome.aspx.cs" Inherits="UserHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="grid.css" type="text/css" rel="stylesheet" />
    <link href="normalize.css" type="text/css" rel="stylesheet" />
    <link href="StyleSheet2.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Lato:100,300,300i,400" rel="stylesheet" />
    <title>FreeCharity</title>
    <style>

.Hide { display:none; }
</style>
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
            
                
            <section class="Section-Question">
                <div class="row">
                <h2>Questions</h2>

                </div>
                <div class="row ">
                    <asp:GridView ShowHeader="False" AutoGenerateColumns="False" ID="GridView1" runat="server">
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Label runat="server" ID="Question" Text='<%# Eval("Question") %>' /><br />
                                    <asp:RadioButton GroupName="a" Text='<%# Eval("ans1") %>' runat="server" ID="ans1" /><br />
                                    <asp:RadioButton GroupName="a" Text='<%# Eval("ans2") %>' runat="server" ID="ans2" /><br />
                                    <asp:RadioButton GroupName="a" Text='<%# Eval("ans3") %>' runat="server" ID="ans3" /><br />
                                    <asp:RadioButton GroupName="a" Text='<%# Eval("ans4") %>' runat="server" ID="ans4"/>

                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="Question_id" HeaderStyle-CssClass="Hide" ItemStyle-CssClass="Hide" HeaderText="TEMP" />
                        </Columns>
                    </asp:GridView>
                    
                    
                </div>
            </section>
            <div class="row">
                <%--<asp:Button ID="btnquesub" runat="server" Text="SUBMIT" CssClass="aspbtnquesub" OnClick="btnquesub_Click"/>--%>
                   <asp:Button ID="btnquenxt" runat="server" Text="Next" CssClass="aspbtnnext"  OnClick="btnqueNEXT_Click" />
                <asp:Button ID="btnquesub" runat="server" Text="Change Subject" CssClass="aspbtnnextsub"  OnClick="btnquesub_Click" />
            </div>
            </header>
        
    </form>
</body>
</html>