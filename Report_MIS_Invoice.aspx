<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="Report_MIS_Invoice, App_Web_report_mis_invoice.aspx.cdcab7d2" %>
<%@ Register TagPrefix="Web" Namespace="WebChart" Assembly="WebChart" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <table>
    <tr>
        <td align="right">
            <asp:Label ID="lblYear" runat="server" Text="Year" CssClass="myBigFont"></asp:Label>
            
        </td>
        <td align="left">
            <asp:DropDownList id="drpYear" runat="server" AutoPostBack="true" 
                onselectedindexchanged="drpYear_SelectedIndexChanged">
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
            <td colspan="2"  align="center" style=" width:100%; height:100%;">
                <web:chartcontrol width="600" height="400" id="chartInvoice" runat="Server"
                    padding="20" bottomchartpadding="32">
                    <YAxisFont StringFormat="Far,Near,Character,LineLimit"></YAxisFont>
                    <XTitle Text="Month" Font="Tahoma, 10pt, style=Bold" ForeColor="Black" />
                    <XAxisFont StringFormat="Center,Center,Character,DirectionVertical"></XAxisFont>
                    <Background Color="LightSteelBlue"></Background>
                    <ChartTitle StringFormat="Center,Near,Character,LineLimit" Font="Tahoma, 10pt, style=Bold">
                    </ChartTitle>
                    <YTitle Text="Sample Tested" Font="Tahoma, 10pt, style=Bold" StringFormat="Center, Near, Character, DirectionVertical" />
                </web:chartcontrol>
            </td>
        </tr>
    </table>
</asp:Content>
