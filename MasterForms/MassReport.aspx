<%@ page language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="MasterForms_MassReport, App_Web_massreport.aspx.6fc3a045" title="Untitled Page" %>


<%@ Register TagPrefix="Custom" Namespace="ENTech.WebControls" Assembly="AutoSuggestMenu" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
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
</asp:Content>

