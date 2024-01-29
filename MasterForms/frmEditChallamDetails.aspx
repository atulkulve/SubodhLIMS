<%@ page language="C#" autoeventwireup="true" inherits="MasterForms_frmEditChallamDetails, App_Web_frmeditchallamdetails.aspx.6fc3a045" title="Update Challan Details" %>

<%@ Register TagPrefix="Custom" Namespace="ENTech.WebControls" Assembly="AutoSuggestMenu" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <link rel="Stylesheet" type="text/css" href="../Style/cssStyleSheet.css" />

    <script type="text/javascript" language="javascript" src="../JS/formvalidation.js"></script>

    <style type="text/css">
        .style1
        {
            width: 204px;
        }
    </style>
</head>
<body style="background-color: #FFF1C6">
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="sds" runat="server">
        </asp:ScriptManager>
        <center>
            <div style="text-align: center; width: 100%; margin-top: 5px;">
                <center>
                    <table class="Tableheading" style="vertical-align: middle; border-width: 2px; border-style: solid;
                        width: 570px;">
                        <tr style="background-color: #B87333">
                            <td colspan="2">
                                <asp:Label ID="Label20" Text="Update Challan Details" runat="server" Style="font-family: Verdana;
                                    font-size: 14px; color: White; font-weight: bold;"></asp:Label>
                            </td>
                        </tr>
                        <tr align="center">
                            <td align="left">
                                <asp:Label ID="Label21" Text="Customer Challan No :" runat="server" CssClass="myBigFont"></asp:Label>
                            </td>
                            <td align="left">
                                <asp:TextBox ID="txteditCustChallanNo" runat="server" Text="" MaxLength="100" Width="250px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr align="center">
                            <td align="left">
                                <asp:Label ID="Label22" Text="Customer Challan date :" runat="server" CssClass="myBigFont"></asp:Label>
                                <%--<asp:Label ID="lblcusername" runat="server" Text="*" ForeColor="Red"></asp:Label>--%>
                            </td>
                            <td align="left">
                                <asp:TextBox ID="txteditCustChallanDate" runat="server" Text="" oncontextmenu="return false;"
                                    onkeydown="return false;" onkeypress="return false;" onkeyup="funCustDate(event);"
                                    Width="250px"></asp:TextBox>
                                <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/Calendar.png" />&nbsp;
                                <ajaxToolkit:CalendarExtender ID="CalendarExtender3" runat="server" PopupButtonID="Image3"
                                    TargetControlID="txteditCustChallanDate">
                                </ajaxToolkit:CalendarExtender>
                            </td>
                        </tr>
                        <tr align="center">
                            <td align="left">
                                <asp:Label ID="Label23" Text="Challan Description :" runat="server" CssClass="myBigFont"></asp:Label>
                                <%--  <asp:Label ID="lblcpassword" runat="server" Text="*" ForeColor="Red"></asp:Label>--%>
                            </td>
                            <td align="left">
                                <asp:TextBox ID="txteditChallanDescription" runat="server" Text="" Width="250px"
                                    MaxLength="255" TextMode="MultiLine" Height="50px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr align="center">
                            <td align="left">
                                <asp:Label ID="Label24" Text="Report Delivery Date :" runat="server" CssClass="myBigFont"></asp:Label>
                                <%--  <asp:Label ID="lblcpassword" runat="server" Text="*" ForeColor="Red"></asp:Label>--%>
                            </td>
                            <td align="left">
                                <asp:TextBox ID="txteditReportDeliveryDate" runat="server" Text="" Width="250px"
                                    oncontextmenu="return false;" onkeydown="return false;" onkeyup="funReportDelDate(event);"
                                    onkeypress="return false;"></asp:TextBox>
                                <asp:Image ID="Image4" runat="server" ImageUrl="~/Images/Calendar.png" />&nbsp;
                                <ajaxToolkit:CalendarExtender ID="CalendarExtender4" runat="server" PopupButtonID="Image4"
                                    TargetControlID="txteditReportDeliveryDate">
                                </ajaxToolkit:CalendarExtender>
                            </td>
                        </tr>
                        <tr align="center">
                            <td align="left">
                                <asp:Label ID="Label25" Text="Priority :" runat="server" CssClass="myBigFont"></asp:Label>
                                <%--  <asp:Label ID="lblcpassword" runat="server" Text="*" ForeColor="Red"></asp:Label>--%>
                            </td>
                            <td align="left">
                                <asp:RadioButton ID="rdbtnedit_Low" Text="Low" Checked="true" runat="server" GroupName="grpbtn"
                                    Font-Bold="true" Font-Names="Verdana" Font-Size="Small" />
                                <asp:RadioButton ID="rdbtnedit_High" Text="High" runat="server" GroupName="grpbtn"
                                    Font-Bold="true" Font-Names="Verdana" Font-Size="Small" />
                            </td>
                        </tr>
                        <tr id="troldAgency" runat="server">
                            <td align="left">
                                <asp:Label ID="Label27" Text="Agency :" runat="server" CssClass="myBigFont"></asp:Label>
                                <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add Agency" /><br />
                            </td>
                            <td align="left">
                                <asp:UpdatePanel ID="upchallanupdate" runat="server" UpdateMode="Conditional">
                                    <ContentTemplate>
                                        <asp:GridView ID="grdeditagency" runat="server" Width="100%" AutoGenerateColumns="false"
                                            EnableViewState="true" DataKeyNames="WitnessID,ChallanID" OnRowCancelingEdit="grdeditagency_RowCancelingEdit"
                                            OnRowDeleting="grdeditagency_RowDeleting" OnRowEditing="grdeditagency_RowEditing"
                                            OnRowUpdating="grdeditagency_RowUpdating">
                                            <Columns>
                                                <asp:TemplateField HeaderText="Sr.No" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="20px">
                                                    <ItemTemplate>
                                                        <%#Container.DataItemIndex+1   %>
                                                    </ItemTemplate>
                                                    <ItemStyle HorizontalAlign="Center" Width="20px" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Agency Name" HeaderStyle-HorizontalAlign="Center">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblAgency" Text='<%#Eval("AgencyNm")%>' runat="server"></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="txtagency" Text='<%# Eval("AgencyNm")%>' runat="server"></asp:TextBox>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>
                                                <asp:CommandField ShowEditButton="true" />
                                                <asp:CommandField ShowDeleteButton="True" />
                                            </Columns>
                                        </asp:GridView>
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="grdeditagency" EventName="RowEditing" />
                                    </Triggers>
                                </asp:UpdatePanel>
                            </td>
                        </tr>
                    </table>
                </center>
            </div>
            <div style="text-align: center; width: 100%; margin-top: 5px; height: 21px;">
                <asp:Button ID="btneditchallan" runat="server" Text="Update Challan" Width="120px"
                    OnClientClick="return validateChallanDetails();" OnClick="btneditchallan_Click" />
                <asp:Button ID="btncanceleditchallan" runat="server" Text="Close" Width="70px" OnClientClick="Javascript:window.close();" />
            </div>
        </center>
    </div>
    </form>

    <script type="text/javascript" language="javascript">
        function funCustDate(e) {

            document.getElementById('<%=txteditCustChallanDate.ClientID%>').value = "";
        }
        function funReportDelDate(e) {
            document.getElementById('<%=txteditReportDeliveryDate.ClientID%>').value = "";

        }

        function validateChallanDetails() {
            if (document.getElementById('<%=txteditCustChallanNo.ClientID%>').value == "") {
                alert("Please Enter Customer Challan No.");
                document.getElementById('<%=txteditCustChallanNo.ClientID%>').focus();
                return false;
            }
            else if (document.getElementById('<%=txteditCustChallanDate.ClientID%>').value == "") {
                alert("Please Enter Customer Challan Date");
                document.getElementById('<%=txteditCustChallanDate.ClientID%>').focus();
                return false;
            }
            else if (document.getElementById('<%=txteditReportDeliveryDate.ClientID%>').value == "") {
                alert("Please Enter Report Delivery Date.");
                document.getElementById('<%=txteditReportDeliveryDate.ClientID%>').focus();
                return false;
            }

            //            if(document.getElementById('<%=txteditCustChallanDate.ClientID%>').value !="")
            //           {
            //                var challandate=document.getElementById('<%=txteditCustChallanDate.ClientID%>').value;
            //                var currentTime = new Date();
            //                var month = currentTime.getMonth() + 1;
            //                var day = currentTime.getDate();
            //                var year = currentTime.getFullYear();
            //                var currentdate=month + "/" + day + "/" + year;
            //               if(comparedates(currentdate,challandate,"Customer Challan Date Must Be Greater Than Current Date",document.getElementById('<%=txteditCustChallanDate.ClientID%>'))==false)
            //               return false;
            //              
            //          }

            if (document.getElementById('<%=txteditCustChallanDate.ClientID%>').value != "" && document.getElementById('<%=txteditReportDeliveryDate.ClientID%>').value != "") {
                var challandate = document.getElementById('<%=txteditCustChallanDate.ClientID%>').value;
                var deliverydate = document.getElementById('<%=txteditReportDeliveryDate.ClientID%>').value;
                if (comparedates(challandate, deliverydate, "Report Delivery Date Must Be Greater Than Customer Challan Date", document.getElementById('<%=txteditReportDeliveryDate.ClientID%>')) == false)
                    return false;
            }
        }

        function comparedates(dt1, dt2, strmsg, control) {
            if (Date.parse(dt2) < Date.parse(dt1)) {
                alert(strmsg);
                document.getElementById(control.id).value = "";
                document.getElementById(control.id).focus();
                return false;
            }
        }
    </script>

</body>
</html>
