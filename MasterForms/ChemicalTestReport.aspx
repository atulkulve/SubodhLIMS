<%@ page language="C#" autoeventwireup="true" inherits="MasterForms_ChemicalTestReport, App_Web_chemicaltestreport.aspx.6fc3a045" title="Sample Report" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
     <link rel="Stylesheet" type="text/css" href="../Style/cssStyleSheet.css" />
    <script type="text/javascript" language="javascript" src="../JS/formvalidation.js"></script>

   

</head>
<body  style="background-color:#FFF1C6">
    <form id="form1" runat="server">
        <center>
            <table  style="font-size:large ">
                <tr>
                    <td align="center"  style="border-bottom-color:Black ">
                        <asp:RadioButton ID="rdbtninternalReport" runat="server" Text="Internal Report" 
                            AutoPostBack="true" GroupName="btn"  Font-Bold="true" Checked="true" 
                            oncheckedchanged="rdbtninternalReport_CheckedChanged"  />
                        <asp:RadioButton ID="rdbtnCustomReport" runat="server" Text="Customer Report" 
                            AutoPostBack="true"  GroupName="btn" Font-Bold="true" 
                            oncheckedchanged="rdbtnCustomReport_CheckedChanged" />
                    </td>
                </tr>
                <tr>
                    <td valign="top" >
                        <div id="divid" runat="server"  style="width:810px; "></div>
                        <div id="divCustom" runat="server"   ></div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblMsg" runat="server" CssClass="myBigFont" Text="No Record Found"
                            ForeColor="Red"></asp:Label>
                    </td>
                </tr>
            </table>
                <asp:Button ID="btnPrint" runat="server" Text="Print Report" Font-Bold="true" 
                    onclick="btnPrint_Click"  />
            <%-- OnClientClick="return PrintReport();"--%>
        </center>
    </form>
    
    <script type="text/javascript" language="javascript" >
    function PrintReport()
        {
           var a = window.open ('','','left =' + screen.width + ',top=' + screen.height + ',width=0,height=0,toolbar=0,scrollbars=0,status=0');
           if(document.getElementById('<%=divid.ClientID%>')!=null)
             a.document.write(document.getElementById('<%=divid.ClientID%>').innerHTML);
             if(document.getElementById('<%=divCustom.ClientID%>')!=null)
                a.document.write(document.getElementById('<%=divCustom.ClientID%>').innerHTML);
                a.document.close();
                a.document.bgColor="black";
                a.focus();
                a.print();
                a.close();
                return false;
        } 
    </script>
</body>
</html>
