<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

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
                        <li><a href="#about">About us</a></li>
                        <li><a href="#contact">Contact us</a></li>
                        <li><a href="signup.aspx">Sign up</a></li>
                    </ul>
                     </div>
                </div>
            </nav>
            <div class="main-line">
                <h1>You Play - We Serve</h1>
                <h3>For your correct answers, we donate pennys through UNICEF to help end hunger</h3>
                
                <asp:Button ID="btnlgn" runat="server" Text="LOGIN" CssClass="aspbtn" OnClick="btnlgn_Click"/>
            </div>
        </header>
        <section id="about">
            <div class="row">
                <h2>About Free Charity</h2>
                <p class="long-about">FreeCharity.com is a project which is made by having only one idea in mind is to help those people who are having problems
                    in getting food even for one time. All proceeds can go to local charities, or https://www.unicefusa.org.  
                    The project try to provide the free education to everyone with eliminating hunger - by donating money to 
                    those charities who are providing food to hungry people around the world,
                    or to UNICEF USA. For each correct answer, we donate 1 penne to reduce hunger, one goal at a time.</p>
            </div>

            <div class="row">
                <div class="col span-1-of-3 box">
                    <h3>Free Education</h3>
                    <p>We provide you a platform where you can learn basics of many fields like Computers, Maths, Physics, Chemistry, Architecture etc.
                    </p>
                </div>

                <div class="col span-1-of-3 box">
                    <h3>Eliminating Hunger</h3>
                    <p>For the provided question if you answer correctly, we will donate a penny to working charities or UNICEF. So try your best.</p>
                </div>
                 <div class="col span-1-of-3 box">
                    <h3>Stay Updated</h3>
                    <p>Content alerts, RSS feeds, Facebook and blogs to keep you updated with the latest ongoing in Free Charity.</p>
                </div>
            </div>
        </section>
        <section class="section-reviews">
        <div class="row">
        <h2>Our Customer's Reviews</h2>
        </div>
        <div class="row">
            <div class="col span-1-of-3">
            <blockquote>
                According to the United Nations, a child dies every 10 seconds from hunger related causes. Which is one good reason why you must stop off 
                here and take part in some of the quizzes, which enable the site to donate pennies for each answer you get correct.
                <cite><img src="imges/customer1.jpg" alt="customer1" />Chris O</cite>
            </blockquote>
            </div>
            <div class="col span-1-of-3">
            <blockquote>
                FreeCharity.com - learn vocabulary, help to end world hunger - pretty catchy site. looks like they donate a portion of 
                their advertising revenues to united nations... and they've got TONS of web traffic.
                <cite><img src="imges/customer2.jpg" alt="customer2" />Veronica</cite>
            </blockquote>
            </div>

            <div class="col span-1-of-3">
            <blockquote>
                Upgrade your vocabulary. . learn new words and feed your mind while you assist truly feeding others.
                <cite><img src="imges/customer3.jpg" alt="customer3" />Robert Hope</cite>
            </blockquote>
            </div>

        </div>
        
    </section>

        <section class="section-form" id="contact">
        <div class="row">
            <h2>We're happy to hear form you</h2>
        </div>
        <div class="row contact-form">
            
                <div class="row">
                    <div class="col span-1-of-3">
                        <asp:Label ID="Label1" runat="server" Text="Name"  ></asp:Label>
                    </div>
                    <div class="col span-2-of-3">
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Your name"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col span-1-of-3">
                        <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
                    </div>
                    <div class="col span-2-of-3">
                    <asp:TextBox ID="TextBox2" runat="server" placeholder="Your email"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col span-1-of-3">
                        <asp:Label ID="Label3" runat="server" Text="How did you find us?" ></asp:Label>
                    </div>
                    <div class="col span-2-of-3">
                    <asp:DropDownList ID="DropDownList1" runat="server" >
                        <asp:ListItem>Friends</asp:ListItem>
                        <asp:ListItem Selected="True">Search Engine</asp:ListItem>
                        <asp:ListItem>Advertisement</asp:ListItem>
                        <asp:ListItem>Others</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="row">
                    <div class="col span-1-of-3">
                        <asp:Label ID="Label4" runat="server" Text="Drop us a line" CssClass="input"></asp:Label>
                    </div>
                    <div class="col span-2-of-3">
                        <asp:TextBox ID="TextBox3" runat="server" placeholder="Your Message"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col span-1-of-3">
                        <asp:Label ID="Label5" runat="server" Text="&nbsp"></asp:Label>
                    </div>
                    <div class="col span-2-of-3">
                    <asp:Button ID="Button3" runat="server" Text="Send it!" CssClass="aspbtncontactform" OnClick="Button3_Click"></asp:Button>
                    </div>
                    
                </div>
          </div>
    </section>
    

    <footer>
        <div class="row">
            <div class="col span-1-of-2">
                <ul class="footer-nav">
                <li><a href="#about">About us</a></li>
                <li><a href="#">Blog</a></li>
                <li><a href="#">Press</a></li>
                <li><a href="#">IOS app</a></li>
                <li><a href="#">Android app</a></li>
                </ul>
            </div>
            <div class="col span-1-of-2">
                <ul class="footer-nav">
                <%--<li><a href="#"><i class="ion-social-facebook"></i></a></li>--%>
                </ul>
            </div>
        </div>
        <div class="row">
            <p>
                Copyright &copy; 2017 by Free Charity. All rights reserved
            </p>
        </div>
    </footer>
   </form>

     <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script type="text/javascript" src="//cdn.jsdelivr.net/respond/1.4.2/respond.min.js"></script>
<script type="text/javascript" src="//cdn.jsdelivr.net/html5shiv/3.7.2/html5shiv.min.js"></script>
<script  type="text/javascript" src="//cdn.jsdelivr.net/selectivizr/1.0.3b/selectivizr.min.js"></script>

    <script src="jquery.waypoints.min.js"></script>
    <script src="JScriptjs.js"></script>

</body>
</html>
