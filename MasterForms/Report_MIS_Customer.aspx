<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="MasterForms_Report_MIS_Customer, App_Web_report_mis_customer.aspx.6fc3a045" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <center>
        <div style="vertical-align: middle; text-align: center">
            <table style="height: 100%; width: 90%;" cellspacing="5px">
                <tr>
                    <td align="center" style="height: 20px">
                        From Date :
                    </td>
                    <td align="left" style="margin-left: 40px">
                        <asp:TextBox ID="txtfromdate" runat="server" Text="" oncontextmenu="return false;"
                            onkeyup="return clearfromdate(event);" onkeydown="return false;" onkeypress="return false;"
                            Width="122px" Height="20px"></asp:TextBox>
                        <asp:Image ID="Imgfromdate" runat="server" ImageUrl="~/Images/Calendar.png" />&nbsp;
                        <ajaxToolkit:CalendarExtender ID="CalendarExtender5" runat="server" PopupButtonID="Imgfromdate"
                            TargetControlID="txtfromdate">
                        </ajaxToolkit:CalendarExtender>
                    </td>
                    <td align="center" style="height: 20px">
                        To Date :
                    </td>
                    <td align="left" style="margin-left: 40px">
                        <asp:TextBox ID="txttodate" runat="server" Text="" oncontextmenu="return false;"
                            onkeyup="return cleartodate(event);" onkeydown="return false;" onkeypress="return false;"
                            Width="122px" Height="20px"></asp:TextBox>
                        <asp:Image ID="imgtodate" runat="server" ImageUrl="~/Images/Calendar.png" />&nbsp;
                        <ajaxToolkit:CalendarExtender ID="CalendarExtender6" runat="server" PopupButtonID="imgtodate"
                            TargetControlID="txttodate">
                        </ajaxToolkit:CalendarExtender>
                    </td>
                    <td>
                        <asp:Button ID="ButShow" Text=" Show Graphics" runat="server" 
                            CssClass="normalbutton" onclick="ButShow_Click" />
                    </td>
                </tr>
                
                <tr>
                    <td colspan="5" style="width: 50%; border-width: 2px; border-color: Black; border-style: solid;
                        background-color: Gray;" id="tdPieInstrument" runat="server">
                    </td>
                </tr>
            </table>
        </div>
    </center>
</asp:Content>
