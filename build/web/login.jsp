<%--<%@page import="static java.lang.System.out;"%>--%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta http-equiv="x-dns-prefetch-control" content="off"/>
        <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" id="viewport">
        <meta name="robots" content="noindex"/>
    <link type="text/css" rel="stylesheet" media="screen" href="https://assets.tumblr.com/assets/styles/global.css?_v=575a180469105f55c4d019c258cbec57">       
        <link type="text/css"rel="stylesheet" media="screen" href="https://assets.tumblr.com/assets/styles/verify_email.css?_v=fadac954598faa4ab265a9b69f6d9452">        
            <title>Login</title>
            <link rel="stylesheet" type="text/css" href="style.css">
                </head>
                <body>
                <center>

                    <div class="central-div">
                        <form method='post' action="controller.jsp">
                            <input type="hidden" name="page" value="login"> 
                                <table>
                                    <tr>
                                        <td colspan="2">
                                    <center><h2>Login:</h2></center>
                                    </td>
                                    </tr>
                                    <tr>
                                        <td>

                                        </td>
                                        <td>
                                    <input type="text" class="text" placeholder="User Name" name="username">
                                        </td>
                                        </tr>
                                        <tr>
                                            <td>

                                            </td>
                                            <td>
                                        <input type="password" class="text" placeholder="Password" name="password">
                                            </td>
                                            </tr>
                                            <tr>
                                                <td>

                                                </td>
                                                <td>
                                                    <%
                                                        if (request.getSession().getAttribute("userStatus") != null) {
//                                                            System.out.println("its called");
                                                            if (request.getSession().getAttribute("userStatus").equals("-1")) {
//                                                          System.out.println("now inside");
                                                    %>
                                            <script>alert("username or password is incorrect");</script>
                                            <p style="color: #4FBBFC;font-size: 17px">username or password is incorrect</p>
                                            <br>
                                            <%
                                                    }
                                                }
                                            %>



                                            </tr>
                                            <tr>
                                                <td>
                                                </td>
                                                <td>
                                            <center>
                                                <input type="submit" value="Login" class="button">
                                            </center>
                                            </td>

                                            <td>

                                            </td>
                                            </tr>
                                                    
                                            </table>
                                            </form>
                                            </div>
                                            </center>
                                            </body>
                                            </html>