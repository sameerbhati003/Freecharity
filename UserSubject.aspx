<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserSubject.aspx.cs" Inherits="UserSubject" %>

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
            <section class="section-addsub">
                <div class="row">
                    <h2>Select Subject</h2>
                </div>
                <div class="row">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Subject_id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Subject_id" HeaderText="Subject_id" InsertVisible="False" ReadOnly="True" SortExpression="Subject_id" />
                    <asp:BoundField DataField="Subject_Name" HeaderText="Subject_Name" SortExpression="Subject_Name" />
                </Columns>
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:freecharityConnectionString %>" SelectCommand="SELECT * FROM [Subject]"></asp:SqlDataSource>
    </div>  

            </section>    

        </header>

        
    </form>
</body>
</html>