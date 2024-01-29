<%@ page language="C#" autoeventwireup="true" inherits="MasterForms_ChemicalReport, App_Web_chemicalreport.aspx.6fc3a045" title="Mass Report" %>
<%@ Register TagPrefix="Custom" Namespace="ENTech.WebControls" Assembly="AutoSuggestMenu" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
     <link rel="Stylesheet" type="text/css" href="../Style/cssStyleSheet.css" />
</head>
<body style="background-color:#FFF1C6">
    <form id="form1" runat="server">
    <div>
    <center>
<table width="70%">
  
        <tr>
    <td colspan="4" align="center" style="height: 20px">
    <asp:RadioButton ID="rdbtninternalReport" runat="server" Text="Internal Report" 
            AutoPostBack="true" GroupName="btn"  Font-Bold="true" Checked="true" 
            oncheckedchanged="rdbtninternalReport_CheckedChanged"  />
    <asp:RadioButton ID="rdbtnCustomReport" runat="server" Text="Customer Report" 
            AutoPostBack="true"  GroupName="btn" Font-Bold="true" 
            oncheckedchanged="rdbtnCustomReport_CheckedChanged" />
    </td>
    </tr>
         <tr>
            <td colspan="4" align="center" style="height: 20px">
                <%--<asp:Button ID="btnSearch" runat="server" Text="Show Report" OnClick="btnSearch_Click" />--%>
                <br /><asp:Label ID="lblMsg" runat="server" CssClass="myBigFont" Text="No Record Found"
                    ForeColor="Red"></asp:Label>
                <br />
            </td>
        </tr>
        <tr>
        <td colspan="4" align="center" valign="top" >
        <div id="divCustom" runat="server" >
        
        </div>
        <asp:Button ID="btnPrint" runat="server" Text="Print Report" Font-Bold="true" OnClientClick="return PrintReport();"  /> 

        </td>
        
        </tr>
</table>
</center>
 <script type="text/javascript" language="javascript" >
    function PrintReport()
        {
            var a = window.open ('','','left =' + screen.width + ',top=' + screen.height + ',width=0,height=0,toolbar=0,scrollbars=0,status=0');
      
             if(document.getElementById('<%=divCustom.ClientID%>')!=null)
            a.document.write(document.getElementById('<%=divCustom.ClientID%>').innerHTML);
            a.document.close();
            a.focus();
            a.print();
            a.close();
            
            a.document.close();
            a.focus();
            a.print();
            a.close();
            
          
            return false;
        } 
    </script>
    </div>
    </form>
</body>
</html>
