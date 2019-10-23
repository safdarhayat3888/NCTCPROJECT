<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="NCTCUI.login2" EnableEventValidation="false"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>NCTC LOGIN PORTAL</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts1/material-icon/css/material-design-iconic-font.min.css"/>

    <!-- Main css -->
    <link rel="stylesheet" href="css1/style.css"/>

  

    <style type="text/css">
        .auto-style2 {
            width: 119%;
            height: 451px;
        }
    </style>

</head>
<body>
     <div class="main">

        <!-- Sing in  Form -->
        <section class="sign-in">
            <div class="container">
                <div class="signin-content">
                    <div class="signin-image">
                        <figure><img src="images1/signin-image.jpg" alt="sing up image"></figure>
                       
                    </div>

                    <div class="signin-form">
                        <h2 class="form-title">NCTC LOGIN PORTAL</h2>
                        <form action="" runat="server">
                        <form method="POST" class="auto-style2" id="login-form">
                            <div class="form-group">
                                <%--<legend>Show/Hide Password text in textbox</legend>--%>
                                <label for="your_name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <asp:TextBox ID="username" name="your_name" placeholder="User Name" required="" runat="server"></asp:TextBox>
                                
                            </div>
                            <%-- <div class="form-group">
                                <label for="E_Id"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <asp:TextBox ID="empid" name="E_Id" placeholder="E_Id" required="" runat="server"></asp:TextBox>
                                
                            </div>--%>
                            <div class="form-group">
                                <label for="your_pass"><i class="zmdi zmdi-lock"></i></label>
                              <asp:TextBox ID="password" name="your_pass"  placeholder="Password" required="" runat="server" TextMode="Password" Width="506px"></asp:TextBox>
                            <%-- <button type="button" 
                                    title="Show Password">          <!--  this is the title -->
                                    <span class="fa fa-eye"></span> <!--  this is the icon  -->
                                 
                            </button>--%>
                                <%--<br><br>
                                <input type="checkbox" onclick="myFunction()">Show Password

                                <script>
                                    function myFunction() {
                                        var x = document.getElementById("myInput");
                                        if (x.type === "password") {
                                            x.type = "text";
                                        } else {
                                            x.type = "password";
                                        }
                                    }
                                </script>--%>

                            </div>
                          
                            <div class="form-group">
                                   
                               
                               <%-- <input type="checkbox" name="remember-me" id="remember-me" class="agree-term" />
                                <input type="checkbox" onclick="myFunction()"/>
                                Show Password
                                <script>
                                    function myFunction() {
                                        var x = document.getElementById("password");
                                        if (x.type === "password") {
                                            x.type = "text";
                                        } else {
                                            x.type = "password";
                                        }
                                    }
                                </script>--%>

                                <%--<label for="remember-me" class="label-agree-term"><span><span></span></span>Remember me</label>--%>
                            </div>
                            <div class="form-group form-button">
                                <asp:Button ID="loginbutton" name="signin" class="form-submit" value="Log in" runat="server" Text="Login" OnClick="loginbutton_Click" />
                                
                            </div>
                        </form>
                       </form>
                    </div>
                </div>
            </div>
        </section>

    </div>

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js1/main.js"></script>
</body>
</html>
