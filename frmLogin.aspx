<%@ page language="C#" autoeventwireup="true" inherits="frmLogin, App_Web_frmlogin.aspx.cdcab7d2" title="Login Page" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Welcome - LIMS System</title>
    <link type="text/css" rel="Stylesheet"  href="Style/cssStyleSheet.css" />
   
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table width="100%" style="height: 70%" align="center" cellpadding="0" cellspacing="0">
            <tr class="MasterTopPanel"  >
                <td align="center">
                    <table style="width: 100%; height: 62px;" >
                        <tr  bgcolor="#B87333">
                            <td align="center" >
                                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" 
                                    ForeColor="White" Text="Laboratory Information Management System"></asp:Label>
                                <br />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td valign="top">
                    <table width="100%" >
                    <tr style="background-color:#B87333;">
                    <td >
                       <marquee direction="left" style="width: 1230px; height: 22px; font-family:Verdana ; "  behavior="SCROLL"
                                    ><b> Welcome</b></marquee>
                    </td>
                    </tr>
                        <tr style="background-color:#FFF1C6">
                            <td style="width: 90%; height: 350px;  text-align: center;"
                                valign="top" align="center">
                             
                                <br />
                                <br />
                                <center>
                                    <table cellpadding="0" cellspacing="0" class="style3" style="border: thin solid #000000">
                                        <tr>
                                            <td colspan="2" align="center" style="border-bottom-style: solid; border-bottom-width: thin;
                                                border-bottom-color: #000000;">
                                                <b>Login</b>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" class="style6" style="border-right-style: solid; border-bottom-style: solid;
                                                border-right-width: thin; border-bottom-width: thin; border-right-color: #000000;
                                                border-bottom-color: #000000;">
                                                <asp:Label ID="Label2" runat="server" Text="User ID :"></asp:Label>
                                            </td>
                                            <td class="style5" style="border-bottom: thin solid #000000; text-align: left;">
                                                <asp:TextBox ID="txtuser" MaxLength="50" runat="server" Width="200px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" class="style6" style="border-right-style: solid; border-bottom-style: solid;
                                                border-right-width: thin; border-bottom-width: thin; border-right-color: #000000;
                                                border-bottom-color: #000000;">
                                                <asp:Label ID="Label3" runat="server" Text="Password :"></asp:Label>
                                            </td>
                                            <td class="style5" style="border-bottom: thin solid #000000; text-align: left;">
                                                <asp:TextBox ID="txtPassword" runat="server" MaxLength="20" Width="200px" TextMode="Password"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style6" style="border-right-style: solid; border-right-width: thin; border-right-color: #000000;"
                                                colspan="2" align="center">
                                                <asp:Button ID="btnLogin" runat="server" Font-Bold="True" Text="Login" 
                                                    onclick="btnLogin_Click" />
                                            </td>
                                        </tr>
                                    </table>
                                </center>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr bgcolor="#B87333">
                <td valign="middle" align="center" style="font-family: Verdana; font-size: 8pt; 
                    height: 25px; color: White;">
                    &nbsp;
                </td>
            </tr>
        </table>
    </div>
    </form>
    
</body>
</html>
