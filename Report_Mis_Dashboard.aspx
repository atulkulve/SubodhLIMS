<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="Report_Mis_Dashboard, App_Web_report_mis_dashboard.aspx.cdcab7d2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register TagPrefix="Web" Namespace="WebChart" Assembly="WebChart" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <table style="width: 100%; height: 100%;" border="1px" cellpadding="5" cellspacing="5">
        <tr>
            <td style="width: 50%; height: 33.3%;">
                <asp:UpdatePanel ID="upCustomer" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <table style="height: 100%; width: 90%;" cellspacing="5px">
                            <tr>
                                <td align="center" >
                                    From Date :
                                </td>
                                <td align="left" >
                                    <asp:TextBox ID="txtfromdate" runat="server" Text="" oncontextmenu="return false;"
                                        onkeyup="return clearfromdate(event);" onkeydown="return false;" onkeypress="return false;"
                                        Width="122px" Height="20px"></asp:TextBox>
                                    <asp:Image ID="Imgfromdate1" runat="server" ImageUrl="~/Images/Calendar.png" />&nbsp;
                                    <ajaxToolkit:CalendarExtender ID="CalendarExtender5" runat="server" PopupButtonID="Imgfromdate1"
                                        TargetControlID="txtfromdate">
                                    </ajaxToolkit:CalendarExtender>
                                </td>
                                <td align="center" >
                                    To Date :
                                </td>
                                <td align="left" >
                                    <asp:TextBox ID="txttodate" runat="server" Text="" oncontextmenu="return false;"
                                        onkeyup="return cleartodate(event);" onkeydown="return false;" onkeypress="return false;"
                                        Width="122px" ></asp:TextBox>
                                    <asp:Image ID="imgtodate1" runat="server" ImageUrl="~/Images/Calendar.png" />&nbsp;
                                    <ajaxToolkit:CalendarExtender ID="CalendarExtender6" runat="server" PopupButtonID="imgtodate1"
                                        TargetControlID="txttodate">
                                    </ajaxToolkit:CalendarExtender>
                                </td>
                                <td>
                                    <asp:Button ID="ButShow" Text="Show" runat="server" CssClass="normalbutton"
                                        OnClick="ButShow_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="5" style="border-width: 2px; border-color: Black; border-style: solid;
                                    background-color: Gray;" id="tdPieCustomerwise" runat="server" align="center">
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
            <td style="width: 50%; height: 33.3%;">
                <asp:UpdatePanel ID="UpCategory" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <table style="height: 100%; width: 90%;" cellspacing="5px">
                            <tr>
                                <td align="center" >
                                    From Date :
                                </td>
                                <td align="left" >
                                    <asp:TextBox ID="txtCatfromdate" runat="server" Text="" oncontextmenu="return false;"
                                        onkeyup="return clearfromdate(event);" onkeydown="return false;" onkeypress="return false;"
                                        ></asp:TextBox>
                                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Calendar.png" />&nbsp;
                                    <ajaxToolkit:CalendarExtender ID="Calcat1" runat="server" PopupButtonID="Image1"
                                        TargetControlID="txtcatfromdate">
                                    </ajaxToolkit:CalendarExtender>
                                </td>
                                <td align="center" >
                                    To Date :
                                </td>
                                <td align="left" >
                                    <asp:TextBox ID="txtCattodate" runat="server" Text="" oncontextmenu="return false;"
                                        onkeyup="return cleartodate(event);" onkeydown="return false;" onkeypress="return false;"
                                        ></asp:TextBox>
                                    <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/Calendar.png" />&nbsp;
                                    <ajaxToolkit:CalendarExtender ID="Calcat2" runat="server" PopupButtonID="Image2"
                                        TargetControlID="txtcattodate">
                                    </ajaxToolkit:CalendarExtender>
                                </td>
                                <td>
                                    <asp:Button ID="Button1" Text="Show" runat="server" CssClass="normalbutton"
                                        OnClick="ButCategory_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="5" style="border-width: 2px; border-color: Black; border-style: solid;
                                    background-color: Gray;" id="tdPieSampleTested" runat="server" align="center">
                                </td>
                                
                                
                                
                            </tr>
                        </table>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
        </tr>
        <tr>
            <td style="width: 50%; height: 33.3%;">
                <asp:UpdatePanel ID="upinvoice" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <table>
                            <tr>
                                <td align="right" style="height: 20px">
                                    <asp:Label ID="lblYear" runat="server" Text="Year" CssClass="myBigFont"></asp:Label>
                                </td>
                                <td align="left">
                                    <asp:DropDownList ID="drpYear" runat="server" AutoPostBack="true" OnSelectedIndexChanged="drpYear_SelectedIndexChanged">
                                        <asp:ListItem Text="Select Date" Value="2000" Selected="True"></asp:ListItem>
                                        <asp:ListItem Text="2010" Value="2010"></asp:ListItem>
                                        <asp:ListItem Text="2011" Value="2011"></asp:ListItem>
                                        <asp:ListItem Text="2012" Value="2012"></asp:ListItem>
                                        <asp:ListItem Text="2013" Value="2013"></asp:ListItem>
                                        <asp:ListItem Text="2014" Value="2014"></asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <%--<td colspan="5" style="width: 50%; border-width: 2px; border-color: Black; border-style: solid;
                background-color: Gray;" id="tdBarInvoice" runat="server">
            </td>--%>
                                <td colspan="2" align="center" style="width: 100%; height: 100%;">
                                    <Web:ChartControl Width="550" Height="325" ID="chartInvoice" runat="Server" Padding="20"
                                        BottomChartPadding="32">
                                        <YAxisFont StringFormat="Far,Near,Character,LineLimit"></YAxisFont>
                                        <XTitle Text="Month" Font="Tahoma, 10pt, style=Bold" ForeColor="Black" />
                                        <XAxisFont StringFormat="Center,Center,Character,DirectionVertical"></XAxisFont>
                                        <Background Color="LightSteelBlue"></Background>
                                        <ChartTitle StringFormat="Center,Near,Character,LineLimit" Font="Tahoma, 10pt, style=Bold">
                                        </ChartTitle>
                                        <YTitle Text="Sample Tested" Font="Tahoma, 10pt, style=Bold" StringFormat="Center, Near, Character, DirectionVertical" />
                                    </Web:ChartControl>
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
            <td style="width: 50%; height: 33.3%;">
                <asp:UpdatePanel ID="UpTestCategory" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <table style="height: 100%; width: 90%;" cellspacing="5px">
                            <tr>
                                <td align="center" >
                                    From Date :
                                </td>
                                <td align="left" >
                                    <asp:TextBox ID="testCat_txtfromdate" runat="server" Text="" oncontextmenu="return false;"
                                        onkeyup="return clearfromdate(event);" onkeydown="return false;" onkeypress="return false;"
                                        Width="122px" Height="20px"></asp:TextBox>
                                    <asp:Image ID="Imgfromdate" runat="server" ImageUrl="~/Images/Calendar.png" />&nbsp;
                                    <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" PopupButtonID="Imgfromdate"
                                        TargetControlID="testCat_txtfromdate">
                                    </ajaxToolkit:CalendarExtender>
                                </td>
                                <td align="center" >
                                    To Date :
                                </td>
                                <td align="left" >
                                    <asp:TextBox ID="testCat_txttodate" runat="server" Text="" oncontextmenu="return false;"
                                        onkeyup="return cleartodate(event);" onkeydown="return false;" onkeypress="return false;"
                                        Width="122px" Height="20px"></asp:TextBox>
                                    <asp:Image ID="imgtodate" runat="server" ImageUrl="~/Images/Calendar.png" />&nbsp;
                                    <ajaxToolkit:CalendarExtender ID="CalendarExtender2" runat="server" PopupButtonID="imgtodate"
                                        TargetControlID="testCat_txttodate">
                                    </ajaxToolkit:CalendarExtender>
                                </td>
                                <td>
                                    <asp:Button ID="Button2" Text="Show" runat="server" CssClass="normalbutton"
                                        OnClick="ButtestCatShow_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="5" style="border-width: 2px; border-color: Black; border-style: solid;
                                    background-color: Gray;" id="tdTestCategory" runat="server" align="center">
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
        </tr>
        <tr>
            <td style="width: 50%; height: 33.3%;">
            </td>
            <td style="width: 50%; height: 33.3%;">
            </td>
        </tr>
    </table>
</asp:Content>
