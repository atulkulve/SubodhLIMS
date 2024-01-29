<%@ page language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="MasterForms_ReceivedChallan, App_Web_receivedchallan.aspx.6fc3a045" title="Laboratory Information System" enableviewstate="true" enableeventvalidation="false" validaterequest="false" culture="en-US" %>

<%@ Register TagPrefix="Custom" Namespace="ENTech.WebControls" Assembly="AutoSuggestMenu" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <center>

        <script src="../asm_includes/AutoSuggestMenu.js" language="javascript" type="text/javascript"></script>

        <script src="../asm_includes/AutoSuggestMenuItem.js" language="javascript" type="text/javascript"></script>
<%--        <script src="../JS/jsCalculation.js" language="javascript" type="text/javascript"></script>
--%>
    </center>
    <%-- <asp:UpdatePanel ID="UpdatePanelmaster" runat="server" >
                    <ContentTemplate>--%>
    <center>
    
        <table width="100%" style="border-collapse: collapse">
            <tr style="height: 20px">
                <td align="left">
                    Sample No:
                </td>
                <td align="left">
                    <asp:TextBox ID="txtsample" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td align="left" style="height: 20px">
                    From Date :
                </td>
                <td align="left" style="margin-left: 40px">
                    <asp:TextBox ID="txtfromdate" runat="server" Text="" oncontextmenu="return false;"
                        onkeyup="return clearfromdate(event);" onkeydown="return false;" onkeypress="return false;"
                        Width="122px" Height="20px"></asp:TextBox>
                    <asp:Image ID="Imgfromdate" runat="server" ImageUrl="~/Images/Calendar.png" />&nbsp;
                    <ajaxToolkit:CalendarExtender ID="CalendarExtender5" runat="server" PopupButtonID="Imgfromdate"
                        TargetControlID="txtfromdate" Format="M/d/yyyy">
                    </ajaxToolkit:CalendarExtender>
                </td>
                <td align="left" style="height: 20px">
                    To Date :
                </td>
                <td align="left" style="margin-left: 40px">
                    <asp:TextBox ID="txttodate" runat="server" Text="" oncontextmenu="return false;"
                        onkeyup="return cleartodate(event);" onkeydown="return false;" onkeypress="return false;"
                        Width="122px" Height="20px"></asp:TextBox>
                    <asp:Image ID="imgtodate" runat="server" ImageUrl="~/Images/Calendar.png" />&nbsp;
                    <ajaxToolkit:CalendarExtender ID="CalendarExtender6" runat="server" PopupButtonID="imgtodate"
                        TargetControlID="txttodate" Format="M/d/yyyy">
                    </ajaxToolkit:CalendarExtender>
                </td>
            </tr>
            <tr>
                <td align="left">
                    Status:
                </td>
                <td align="left">
                    <asp:DropDownList ID="ddlcustomer_Status" runat="server" Width="150px">
                    </asp:DropDownList>
                </td>
                <td align="left" style="height: 20px" id="tdcustomertitle" runat="server">
                    Customer :
                </td>
                <td align="left" colspan="3" id="tdcustomertxt" runat="server">
                    <asp:TextBox ID="txtSearchCustomer" runat="server" Height="20px" Width="250px"></asp:TextBox>
                    <Custom:AutoSuggestMenu ID="asmVendorhistry" MaxSuggestChars="100" KeyPressDelay="10"
                        TargetControlID="txtSearchCustomer" OnClientTextBoxUpdate="fnVal" UpdateTextBoxOnUpDown="False"
                        MaxHeight="200px" OnGetSuggestions="GetSuggestions_txtSearchCustomer" runat="server"
                        autocomplete="off" CssClass="asmMenu" MenuItemCssClass="asmMenuItem" MinSuggestChars="1"
                        NavigationLinkCssClass="asmNavigationLink" PageSize="10" ResourcesDir="~/asm_includes"
                        SelectedValue="" SelMenuItemCssClass="asmSelMenuItem" UseIFrame="True" UsePageMethods="True"
                        UsePaging="True" />
                    <ajaxToolkit:TextBoxWatermarkExtender ID="TBWsdf" runat="server" TargetControlID="txtSearchCustomer"
                        WatermarkText="Type Alphabet to Get Customer List" WatermarkCssClass="watermarked" />
                </td>
                <td id="tdblank" runat="server" colspan="5">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td colspan="6" align="center" style="height: 20px">
                    <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
                    <%--<asp:Button ID="BtnMassReport" runat="server" Text="Report"  OnClientClick="return PrintReport();" style="width: 75px;height:24px " />--%>
                    <input id="BtnMassReport" runat="server" type="button" value="Report" onclick="return PrintReport();"
                        style="width: 75px; height: 24px" visible="false" />
                    <br />
                    <%-- <asp:TextBox ID="lblMsg" runat="server"    CssClass="myBigFont" Text="No Record Found"
                        ForeColor="Red"></asp:TextBox>--%>
                    <br />
                </td>
            </tr>
            <tr>
                <td align="center" colspan="6">
                </td>
            </tr>
            <tr>
                <td align="center" colspan="6">
                    <asp:UpdatePanel ID="UpdatePanelggd" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <asp:Label ID="lblMsg" runat="server" CssClass="myBigFont" Text="No Record Found"
                                ForeColor="Red"></asp:Label>
                            <asp:GridView ID="gridCustomer" AllowPaging="True" BackColor="#f1f1f1" AutoGenerateColumns="false"
                                CellPadding="0" CellSpacing="0" DataKeyNames="CustID" Style="z-index: 20; left: 40px;
                                position: absolute; top: 210px; width: 92%; border-collapse: collapse" ShowFooter="true"
                                Font-Size="Small" Font-Names="Verdana" runat="server" GridLines="Both" OnRowDataBound="gridCustomer_RowDataBound"
                                AllowSorting="true" BorderColor="White" OnRowCommand="gridCustomer_RowCommand"
                                OnRowDeleting="gridCustomer_RowDeleting" OnRowCreated="gridCustomer_RowCreated"
                                OnPageIndexChanged="gridCustomer_PageIndexChanged" OnPageIndexChanging="gridCustomer_PageIndexChanging"
                                onsorting="gridCustomer_Sorting">
                                <RowStyle BackColor="Gainsboro" />
                                <AlternatingRowStyle BackColor="White" />
                                <HeaderStyle BackColor="#0083C1" ForeColor="White" />
                                <FooterStyle BackColor="white" />
                                <Columns>
                                    <asp:TemplateField>
                                        <%-- <HeaderTemplate>
                                    <a href="javascript:expandcollapse('div0000, 'head');">
                                                <img id="imgdiv0000" alt="Click to show/hide  "
                                                    width="20px" border="0" src="plus.gif" />
                                            </a>
                                    </HeaderTemplate>--%>
                                        <ItemTemplate>
                                            <a href="javascript:expandcollapse('div<%# Eval("CustID") %>', 'one');">
                                                <img id="imgdiv<%# Eval("CustID") %>" alt="Click to show/hide Orders for Customer <%# Eval("CustID") %>"
                                                    width="9px" border="0" src="plus.gif" />
                                            </a>
                                        </ItemTemplate>
                                        <ItemStyle Width="20px" HorizontalAlign="left" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Customer Name" SortExpression="CustNm">
                                        <ItemTemplate>
                                            <asp:Label ID="lblCustomerID" Text='<%# Eval("CustNm") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Left" Width="25%" />
                                    </asp:TemplateField>
                                    <asp:TemplateField>
                                        <HeaderTemplate>
                                            <asp:LinkButton ID="linkAddCustomer" ForeColor="White" CommandName="AddCustomer"
                                                runat="server">Add Customer</asp:LinkButton>
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                        </ItemTemplate>
                                        <HeaderStyle ForeColor="White" Width="20%" HorizontalAlign="Left" />
                                    </asp:TemplateField>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                        </ItemTemplate>
                                        <ItemStyle Width="500px" />
                                    </asp:TemplateField>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:LinkButton ID="linkEditCust" CommandName="EditCustomer" runat="server">Edit</asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:CommandField ShowDeleteButton="true" HeaderText="Delete" />
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <tr>
                                                <td align="left" colspan="100%">
                                                    <div id="div<%# Eval("CustID") %>" style="display: none; position: relative; left: 15px;
                                                        overflow: auto; width: 97%">
                                                        <asp:UpdatePanel ID="UpdatePanelchallan" runat="server" UpdateMode="Conditional">
                                                            <ContentTemplate>
                                                                <asp:GridView ID="GridChallan" PageSize="5" AllowPaging="True" AllowSorting="true"
                                                                    CellPadding="0" CellSpacing="0" BackColor="Gainsboro" GridLines="Both" Style="left: 40px;
                                                                    top: 152px; font-size: 13px; width: 100%; margin-top: 0px; border-collapse: collapse"
                                                                    AutoGenerateColumns="false" Font-Names="Verdana" runat="server" DataKeyNames="ChallanID"
                                                                    ShowFooter="true" BorderColor="White" OnRowDataBound="GridChallan_RowDataBound"
                                                                    OnRowCreated="GridChallan_RowCreated" OnRowDeleting="GridChallan_RowDeleting"
                                                                    OnRowCommand="GridChallan_RowCommand" OnPageIndexChanged="GridChallan_PageIndexChanged"
                                                                    OnPageIndexChanging="GridChallan_PageIndexChanging" OnSorting="GridChallan_Sorting"
                                                                    PagerStyle-HorizontalAlign="Center">
                                                                    <RowStyle BackColor="Gainsboro" />
                                                                    <AlternatingRowStyle BackColor="White" />
                                                                    <HeaderStyle BackColor="#0083C1" ForeColor="White" />
                                                                    <FooterStyle BackColor="White" />
                                                                    <Columns>
                                                                        <asp:TemplateField>
                                                                            <ItemTemplate>
                                                                                <a href="javascript:expandcollapse('divC<%# Eval("ChallanID") %>', 'two');">
                                                                                    <img id="imgdivC<%# Eval("ChallanID") %>" alt="Click to show/hide Orders for Challan <%# Eval("ChallanID") %>"
                                                                                        width="9px" border="0" src="plus.gif" />
                                                                                </a>
                                                                            </ItemTemplate>
                                                                            <ItemStyle Width="2%" HorizontalAlign="left" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Challans" SortExpression="ChallanID">
                                                                            <ItemTemplate>
                                                                                <asp:Label ID="lblChallanNo" Text='<%# Eval("Cust_Challanno") %>' runat="server"></asp:Label>
                                                                            </ItemTemplate>
                                                                            <EditItemTemplate>
                                                                                <asp:Label ID="lblOrderID" Text='<%# Eval("Cust_Challanno") %>' runat="server"></asp:Label>
                                                                            </EditItemTemplate>
                                                                            <ItemStyle HorizontalAlign="Left" Width="15%" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField>
                                                                            <HeaderTemplate>
                                                                                <asp:LinkButton ID="linkAddChallan" CommandName="AddChallan" ForeColor="White" runat="server">Add Challan</asp:LinkButton>
                                                                            </HeaderTemplate>
                                                                            <ItemTemplate>
                                                                                <asp:Button ID="btnAllReport" Text="Print Report" runat="server" Visible="false" />
                                                                                <%--<asp:TextBox ID="txtererer" runat="server" Width="95%" Enabled="false" BorderStyle="Outset"
                                                                                    BackColor="Transparent"></asp:TextBox>--%>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle ForeColor="White" HorizontalAlign="Left" Width="10%" />
                                                                            <ItemStyle Width="10%" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField>
                                                                            <HeaderTemplate>
                                                                                <%-- <asp:DropDownList ID="challan_dropdown" runat="server" width="150px"   OnSelectedIndexChanged="ddlchallan_SelectedIndexChanged"></asp:DropDownList>--%>
                                                                            </HeaderTemplate>
                                                                            <ItemTemplate>
                                                                                <asp:CheckBox ID="Chkbuild" runat="server" Text="Bill" />
                                                                                <asp:TextBox ID="lblinvoice" Text="&nbsp;Invoice No:" runat="server" BackColor="Transparent"
                                                                                    BorderStyle="None" Width="14%"></asp:TextBox>
                                                                                <asp:TextBox ID="txtInvoice" runat="server" Width="15%"></asp:TextBox>
                                                                                <asp:TextBox ID="lbldate" Text="Date:" runat="server" BackColor="Transparent" BorderStyle="None"
                                                                                    Width="6%"></asp:TextBox>
                                                                                <asp:TextBox ID="txtdate" runat="server" Width="13%"></asp:TextBox>
                                                                                <asp:Image ID="Image22" runat="server" ImageUrl="~/Images/Calendar.png" />&nbsp;
                                                                                <ajaxToolkit:CalendarExtender ID="CalendarExtender22" runat="server" PopupButtonID="Image22"
                                                                                    TargetControlID="txtdate" OnClientShown="ShowTodaysdate" Format="M/d/yyyy">
                                                                                </ajaxToolkit:CalendarExtender>
                                                                                <asp:TextBox ID="lblinvoiceamount" Text="Amount:" runat="server" BackColor="Transparent"
                                                                                    BorderStyle="None" Width="10%"></asp:TextBox>
                                                                                <asp:TextBox ID="txtinvoiceamount" runat="server" Width="13%"></asp:TextBox>
                                                                            </ItemTemplate>
                                                                            <ItemStyle HorizontalAlign="Left" Width="75%" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Edit">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="linkEditChallan" CommandName="EditChallan" runat="server">Edit</asp:LinkButton>
                                                                            </ItemTemplate>
                                                                        </asp:TemplateField>
                                                                        <asp:CommandField ShowDeleteButton="true" HeaderText="Delete" />
                                                                        <asp:TemplateField>
                                                                            <ItemTemplate>
                                                                                <tr>
                                                                                    <td colspan="100%">
                                                                                        <div id="divC<%# Eval("ChallanID") %>" style="display: none; position: relative;
                                                                                            left: 40px; overflow: auto; width: 95%;">
                                                                                            <%-- BorderColor="#0083C1"--%>
                                                                                            <asp:UpdatePanel ID="upitem" runat="server" UpdateMode="Conditional">
                                                                                                <ContentTemplate>
                                                                                                    <asp:GridView ID="GridItem" AllowPaging="True" AllowSorting="true" BackColor="White"
                                                                                                        Style="border-collapse: collapse" CellPadding="0" CellSpacing="0" PageSize="10"
                                                                                                        Width="100%" Font-Size="13px" AutoGenerateColumns="false" Font-Names="Verdana"
                                                                                                        runat="server" DataKeyNames="ItemID" ShowFooter="true" BorderStyle="Solid" BorderColor="#ffffff"
                                                                                                        OnRowDataBound="GridItem_RowDataBound" OnRowCancelingEdit="GridItem_RowCancelingEdit"
                                                                                                        OnRowCreated="GridItem_RowCreated" OnRowCommand="GridItem_RowCommand" OnRowEditing="GridItem_RowEditing"
                                                                                                        OnRowUpdating="GridItem_RowUpdating" OnRowDeleting="GridItem_RowDeleting" OnPageIndexChanged="GridItem_PageIndexChanged"
                                                                                                        OnPageIndexChanging="GridItem_PageIndexChanging" OnSorting="GridItem_Sorting"
                                                                                                        PagerStyle-HorizontalAlign="Center">
                                                                                                        <RowStyle BackColor="Gainsboro" />
                                                                                                        <AlternatingRowStyle BackColor="White" />
                                                                                                        <HeaderStyle BackColor="#0083C1" ForeColor="White" />
                                                                                                        <FooterStyle BackColor="Gainsboro" />
                                                                                                        <Columns>
                                                                                                            <asp:TemplateField>
                                                                                                                <ItemTemplate>
                                                                                                                    <a href="javascript:expandcollapse('divI<%# Eval("ItemID") %>', 'three');">
                                                                                                                        <img id="imgdivI<%# Eval("ItemID") %>" alt="Click to show/hide Orders for Customer <%# Eval("ItemID") %>"
                                                                                                                            style="width: 9px; text-align: right" border="0" src="plus.gif" />
                                                                                                                    </a>
                                                                                                                </ItemTemplate>
                                                                                                                <ItemStyle Width="2%" />
                                                                                                            </asp:TemplateField>
                                                                                                            <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderStyle-ForeColor="White">
                                                                                                                <HeaderTemplate>
                                                                                                                    <asp:Label ID="lblheader" Text="Sample No." runat="server"></asp:Label></HeaderTemplate>
                                                                                                                <ItemTemplate>
                                                                                                                    <asp:Label ID="lblitemname" Text='<%# Eval("ItemNm") %>' runat="server"></asp:Label>
                                                                                                                </ItemTemplate>
                                                                                                                <ItemStyle Width="13%" HorizontalAlign="Left" />
                                                                                                            </asp:TemplateField>
                                                                                                            
                                                                                                            <asp:TemplateField HeaderText="Reg. Date">
                                                                                                                <ItemTemplate>
                                                                                                                    <asp:Label ID="lblsampleregdate" runat="server" Text='<%#Eval("RegistrationDate")%>'></asp:Label>
                                                                                                                </ItemTemplate>
                                                                                                                <ItemStyle Width="12%" HorizontalAlign="Left" />
                                                                                                            </asp:TemplateField>
                                                                                                            
                                                                                                            <asp:TemplateField>
                                                                                                                <HeaderTemplate>
                                                                                                                    <asp:LinkButton ID="linkAddItem" CommandName="AddItem" ForeColor="White" runat="server">Add Sample</asp:LinkButton>
                                                                                                                </HeaderTemplate>
                                                                                                                <ItemTemplate>
                                                                                                                    <asp:Button ID="btnSubmitSample" Text="Submit" runat="server" Width="85%" />
                                                                                                                </ItemTemplate>
                                                                                                                <ItemStyle HorizontalAlign="center" Width="11%" />
                                                                                                            </asp:TemplateField>
                                                                                                            <asp:TemplateField>
                                                                                                                <HeaderTemplate>
                                                                                                                    <%--  <asp:DropDownList ID="sample_dropdown" runat="server" width="150px"  OnSelectedIndexChanged="ddlitemstatus_SelectedIndexChanged" ></asp:DropDownList>--%>
                                                                                                                </HeaderTemplate>
                                                                                                                <ItemTemplate>
                                                                                                                    <asp:Button ID="btnAssignTest" Text="Assign" runat="server" Width="25%" />
                                                                                                                    <asp:Button ID="btnRelease" Text="Release For Printing" runat="server" CommandName="Release"
                                                                                                                        Width="45%" />
                                                                                                                    <asp:Button ID="btnPrintReport" Text="Print Report" runat="server" CommandName="Print"
                                                                                                                        Width="26%" />
                                                                                                                </ItemTemplate>
                                                                                                                <ItemStyle HorizontalAlign="Left" Width="41%" />
                                                                                                            </asp:TemplateField>
                                                                                                            <asp:TemplateField HeaderText="Edit ">
                                                                                                                <ItemTemplate>
                                                                                                                    <asp:LinkButton ID="linkEditItem" CommandName="EditItem" runat="server">Edit Sample</asp:LinkButton>
                                                                                                                    <itemstyle horizontalalign="Left" width="13%" />
                                                                                                                </ItemTemplate>
                                                                                                            </asp:TemplateField>
                                                                                                            <asp:CommandField ShowDeleteButton="true" HeaderText="Delete" />
                                                                                                            <asp:TemplateField HeaderText="Copy ">
                                                                                                                <ItemTemplate>
                                                                                                                    <asp:LinkButton ID="lnikCopySample" CommandName="CopySample" runat="server">Copy </asp:LinkButton>
                                                                                                                </ItemTemplate>
                                                                                                            </asp:TemplateField>
                                                                                                            <asp:TemplateField>
                                                                                                                <ItemTemplate>
                                                                                                                    <tr>
                                                                                                                        <td align="left" colspan="100%">
                                                                                                                            <div id="divI<%# Eval("ItemID") %>" style="display: none; position: relative; left: 40px;
                                                                                                                                overflow: auto; width: 98%">
                                                                                                                                <asp:UpdatePanel ID="uptesttype" runat="server" UpdateMode="Conditional">
                                                                                                                                    <ContentTemplate>
                                                                                                                                        <asp:GridView ID="GridTestType" AllowPaging="True" AllowSorting="true" BackColor="White"
                                                                                                                                            Width="98%" Font-Size="13px" AutoGenerateColumns="false" Font-Names="Verdana"
                                                                                                                                            runat="server" DataKeyNames="TestTypeID" ShowFooter="true" BorderStyle="Double"
                                                                                                                                            BorderColor="#0083C1" OnRowCommand="GridTestType_RowCommand" OnRowDataBound="GridTestType_RowDataBound"
                                                                                                                                            OnPageIndexChanging="GridTestType_PageIndexChanging" OnSorting="GridTestType_Sorting">
                                                                                                                                            <RowStyle BackColor="Gainsboro" />
                                                                                                                                            <AlternatingRowStyle BackColor="White" />
                                                                                                                                            <HeaderStyle BackColor="#0083C1" ForeColor="White" />
                                                                                                                                            <FooterStyle BackColor="White" />
                                                                                                                                            <Columns>
                                                                                                                                                <asp:TemplateField HeaderText="Test Type">
                                                                                                                                                    <ItemTemplate>
                                                                                                                                                        <asp:LinkButton ID="lnkShowPara" CommandName="ShowPara" runat="server"> <%# Eval("TestTypeNm") %></asp:LinkButton>
                                                                                                                                                    </ItemTemplate>
                                                                                                                                                    <ItemStyle HorizontalAlign="Left" />
                                                                                                                                                </asp:TemplateField>
                                                                                                                                            </Columns>
                                                                                                                                        </asp:GridView>
                                                                                                                                    </ContentTemplate>
                                                                                                                                    <Triggers>
                                                                                                                                        <asp:AsyncPostBackTrigger ControlID="GridTestType" EventName="RowCommand"></asp:AsyncPostBackTrigger>
                                                                                                                                        <asp:AsyncPostBackTrigger ControlID="GridTestType" EventName="RowDataBound"></asp:AsyncPostBackTrigger>
                                                                                                                                    </Triggers>
                                                                                                                                </asp:UpdatePanel>
                                                                                                                            </div>
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </ItemTemplate>
                                                                                                                <ItemStyle HorizontalAlign="left" />
                                                                                                            </asp:TemplateField>
                                                                                                        </Columns>
                                                                                                    </asp:GridView>
                                                                                                </ContentTemplate>
                                                                                                <Triggers>
                                                                                                    <asp:AsyncPostBackTrigger ControlID="GridItem" EventName="RowDeleting"></asp:AsyncPostBackTrigger>
                                                                                                    <asp:AsyncPostBackTrigger ControlID="GridItem" EventName="RowCancelingEdit"></asp:AsyncPostBackTrigger>
                                                                                                    <asp:AsyncPostBackTrigger ControlID="GridItem" EventName="RowEditing"></asp:AsyncPostBackTrigger>
                                                                                                    <asp:AsyncPostBackTrigger ControlID="GridItem" EventName="RowUpdating"></asp:AsyncPostBackTrigger>
                                                                                                    <asp:AsyncPostBackTrigger ControlID="GridItem" EventName="RowCommand"></asp:AsyncPostBackTrigger>
                                                                                                    <asp:AsyncPostBackTrigger ControlID="GridItem" EventName="RowDataBound"></asp:AsyncPostBackTrigger>
                                                                                                </Triggers>
                                                                                            </asp:UpdatePanel>
                                                                                        </div>
                                                                                    </td>
                                                                                </tr>
                                                                            </ItemTemplate>
                                                                            <ItemStyle HorizontalAlign="Left" />
                                                                        </asp:TemplateField>
                                                                    </Columns>
                                                                </asp:GridView>
                                                            </ContentTemplate>
                                                            <Triggers>
                                                                <asp:AsyncPostBackTrigger ControlID="GridChallan" EventName="RowDeleting" />
                                                                <asp:AsyncPostBackTrigger ControlID="GridChallan" EventName="RowCommand"></asp:AsyncPostBackTrigger>
                                                            </Triggers>
                                                        </asp:UpdatePanel>
                                                    </div>
                                                </td>
                                            </tr>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                            <asp:HiddenField ID="hdncustid" runat="server" />
                            &nbsp;
                            <asp:HiddenField ID="hdnchallanid" runat="server" />
                            &nbsp;
                            <asp:HiddenField ID="hdntesttype" runat="server" />
                            <asp:HiddenField ID="hdnitemid" runat="server" />
                            <asp:HiddenField ID="hdnchallandate" runat="server" />
                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="gridCustomer" EventName="RowCommand" />
                            <asp:AsyncPostBackTrigger ControlID="gridCustomer" EventName="RowDeleting"></asp:AsyncPostBackTrigger>
                            <asp:AsyncPostBackTrigger ControlID="gridCustomer" EventName="RowCancelingEdit"></asp:AsyncPostBackTrigger>
                            <asp:AsyncPostBackTrigger ControlID="gridCustomer" EventName="RowEditing"></asp:AsyncPostBackTrigger>
                            <asp:AsyncPostBackTrigger ControlID="gridCustomer" EventName="RowUpdating"></asp:AsyncPostBackTrigger>
                        </Triggers>
                    </asp:UpdatePanel>
                    <%--  <asp:Button ID="btnAddCustomer" runat="server" Text="Add Customer" />--%>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="6">
                    <asp:Panel ID="pnlUserInfo" runat="server" CssClass="modalPopup" Style="display: none;">
                        <asp:Panel ID="pnlUser" runat="server" CssClass="modalPopupInner" Width="550px">
                            <div style="text-align: center; width: 100%; margin-top: 5px; height: 283px;">
                                <center>
                                    <br />
                                    <table style="vertical-align: middle; border-width: 2px; border-style: solid; width: 500px;">
                                        <tr>
                                            <td colspan="2">
                                                <asp:Label ID="lblEnterUser" Text="Customer Information" runat="server" Style="font-family: Verdana;
                                                    font-size: 14px; color: White; font-weight: bold;"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr align="center">
                                            <td align="left">
                                                <asp:Label ID="lblUserName" Text="Customer Name :" runat="server" CssClass="myBigFont"></asp:Label>
                                                <asp:Label ID="lblcname" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                            </td>
                                            <td align="left">
                                                <asp:TextBox ID="txtName" runat="server" Text="" MaxLength="200" Width="250px"></asp:TextBox>
                                                <%--<ajaxToolkit:FilteredTextBoxExtender ID="fteName" BehaviorID="fteName" TargetControlID="txtName"
                                            runat="server" ValidChars="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ">
                                        </ajaxToolkit:FilteredTextBoxExtender>--%>
                                            </td>
                                        </tr>
                                        <tr align="center">
                                            <td align="left">
                                                <asp:Label ID="lblEnterAddress" Text="Address :" runat="server" CssClass="myBigFont"></asp:Label>
                                            </td>
                                            <td align="left">
                                                <asp:TextBox ID="txtAddress" runat="server" Text="" MaxLength="250" TextMode="MultiLine"
                                                    Width="250px" Height="50px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr align="center">
                                            <td align="left">
                                                <asp:Label ID="lblEnterPhoneNo" Text="Phone No. :" runat="server" CssClass="myBigFont"></asp:Label>
                                            </td>
                                            <td align="left">
                                                <asp:TextBox ID="txtPhoneNo" runat="server" Text="" MaxLength="11" Width="250px"></asp:TextBox>
                                                <%-- <ajaxToolkit:FilteredTextBoxExtender ID="flt_txtPhoneNo" runat="server" Enabled="True"
                                                            FilterType="Custom, Numbers" TargetControlID="txtPhoneNo" ValidChars="1234567890.">
                                                        </ajaxToolkit:FilteredTextBoxExtender>--%>
                                            </td>
                                        </tr>
                                        <tr align="center">
                                            <td align="left">
                                                <asp:Label ID="lblEnterUserName" Text="Customer Email :" runat="server" CssClass="myBigFont"></asp:Label>
                                                <%--<asp:Label ID="lblcusername" runat="server" Text="*" ForeColor="Red"></asp:Label>--%>
                                            </td>
                                            <td align="left">
                                                <asp:TextBox ID="txtUserName" runat="server" Text="" MaxLength="100" Width="250px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr align="center">
                                            <td align="left">
                                                <asp:Label ID="lblPassword" Text="Customer Contact Person :" runat="server" CssClass="myBigFont"></asp:Label>
                                                <%--  <asp:Label ID="lblcpassword" runat="server" Text="*" ForeColor="Red"></asp:Label>--%>
                                            </td>
                                            <td align="left">
                                                <asp:TextBox ID="txtCustContactPerson" runat="server" Text="" Width="250px" MaxLength="200"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr align="center">
                                            <td colspan="2">
                                                &nbsp;
                                            </td>
                                        </tr>
                                        <tr align="center">
                                            <td align="center" colspan="2">
                                                <div style="text-align: center; width: 100%; margin-top: 5px;">
                                                    <asp:Button ID="btnSaveUser" runat="server" Text="Save" Width="150px" OnClick="btnSaveUser_Click" />
                                                    <%--OnClientClick="return ValidateNew();" --%>
                                                    <asp:Button ID="btnClose" runat="server" Text="Cancel" Width="70px" />
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </center>
                            </div>
                        </asp:Panel>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td colspan="6">
                    <asp:Panel ID="pnlUpdateUserInfo" runat="server" CssClass="modalPopup" Style="display: none;">
                        <asp:Panel ID="pnlUUser" runat="server" CssClass="modalPopupInner" Width="550px">
                            <div style="text-align: center; width: 100%; margin-top: 5px; height: 266px;">
                                <center>
                                    <br />
                                    <table style="vertical-align: middle; border-width: 2px; border-style: solid; width: 500px;">
                                        <tr>
                                            <td colspan="2">
                                                <asp:Label ID="lblUserUpdateInfo" Text="Update Customer Information" runat="server"
                                                    Style="font-family: Verdana; font-size: 14px; color: White; font-weight: bold;"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr align="center">
                                            <td align="left">
                                                <asp:Label ID="lblUpdateName" Text="Customer Name :" runat="server" CssClass="myBigFont"></asp:Label>
                                                <asp:Label ID="lblcuname" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                            </td>
                                            <td align="left">
                                                <asp:TextBox ID="txtUpdateName" runat="server" Width="250px" Text="" MaxLength="250"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr align="center">
                                            <td align="left">
                                                <asp:Label ID="lblUpdateAddres" Text="Address :" runat="server" CssClass="myBigFont"
                                                    TextMode="MultiLine" Width="250px" Height="50px"></asp:Label>
                                            </td>
                                            <td align="left">
                                                <asp:TextBox ID="txtUpdateAddress" runat="server" MaxLength="250" TextMode="MultiLine"
                                                    Width="250px" Height="50px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr align="center">
                                            <td align="left">
                                                <asp:Label ID="lblUpdatePhoneNo" Text="Phone No. :" runat="server" CssClass="myBigFont"></asp:Label>
                                            </td>
                                            <td align="left">
                                                <asp:TextBox ID="txtUpdatePhoneNo" runat="server" Width="250px" Text="" MaxLength="11"></asp:TextBox>
                                                <%-- <ajaxToolkit:FilteredTextBoxExtender ID="flt_txtUpdatePhoneNo" runat="server" Enabled="True"
                                                    FilterType="Custom, Numbers" TargetControlID="txtUpdatePhoneNo" ValidChars="1234567890.">
                                                </ajaxToolkit:FilteredTextBoxExtender>--%>
                                            </td>
                                        </tr>
                                        <tr align="center">
                                            <td align="left">
                                                <asp:Label ID="lblUpdateUserName" Text="Customer Email :" runat="server" CssClass="myBigFont"></asp:Label>
                                            </td>
                                            <td align="left">
                                                <asp:TextBox ID="txtUpdateUserName" runat="server" Text="" Width="250px" MaxLength="100"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr align="center">
                                            <td align="left">
                                                <asp:Label ID="lblUpdatePasswprd" Text="Customer Contact Person :" runat="server"
                                                    CssClass="myBigFont"></asp:Label>
                                            </td>
                                            <td align="left">
                                                <asp:TextBox ID="txtUpdateCustContactPerson" runat="server" Width="250px" Text=""
                                                    MaxLength="200"></asp:TextBox>
                                                <asp:HiddenField ID="hdnpwd" runat="server" Value="" />
                                            </td>
                                        </tr>
                                        <tr align="center">
                                            <td align="center" colspan="2">
                                                <div style="text-align: center; width: 100%; margin-top: 5px;">
                                                    <asp:Button ID="btnupdateCustomer" runat="server" Text="Update Customer" OnClick="btnupdateCustomer_Click"
                                                        Width="150px" />
                                                    <asp:Button ID="btncloseupdatecustomer" runat="server" Text="Close" Width="70px" />
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </center>
                            </div>
                        </asp:Panel>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td colspan="6">
                    <asp:Panel ID="PanelouterChallan" runat="server" CssClass="modalPopup" Height="374px"
                        Width="596px" Style="display: none">
                        <asp:Panel ID="Panelchallan" runat="server" CssClass="modalPopupInner" Width="600px"
                            Height="340px">
                            <div style="text-align: center; width: 100%; margin-top: 5px; height: 360px;">
                                <center>
                                    <br />
                                    <table style="vertical-align: middle; border-width: 2px; border-style: solid; width: 570px;">
                                        <tr>
                                            <td colspan="2">
                                                <asp:Label ID="Label1" Text="Challan Details" runat="server" Style="font-family: Verdana;
                                                    font-size: 14px; color: White; font-weight: bold;"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr align="center">
                                            <td align="left">
                                                <asp:Label ID="lblCustChallanNo" Text="Customer Challan No :" runat="server" CssClass="myBigFont"></asp:Label>
                                            </td>
                                            <td align="left">
                                                <asp:TextBox ID="txtCustChallanNo" runat="server" Text="" MaxLength="100" Width="250px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr align="center">
                                            <td align="left">
                                                <asp:Label ID="lblCustChallandate" Text="Customer Challan date :" runat="server"
                                                    CssClass="myBigFont"></asp:Label>
                                                <%--<asp:Label ID="lblcusername" runat="server" Text="*" ForeColor="Red"></asp:Label>--%>
                                            </td>
                                            <td align="left">
                                                <asp:TextBox ID="txtCustChallanDate" runat="server" Text="" oncontextmenu="return false;"
                                                    onkeydown="return false;" onkeypress="return false;" onkeyup="funCustDate(event);"
                                                    Width="250px"></asp:TextBox>
                                                <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Calendar.png" />&nbsp;
                                                <ajaxToolkit:CalendarExtender ID="CalendarExtender2" runat="server" PopupButtonID="Image1"
                                                    TargetControlID="txtCustChallanDate" OnClientShown="ShowCalChallandate" Format="M/d/yyyy">
                                                </ajaxToolkit:CalendarExtender>
                                            </td>
                                        </tr>
                                        <tr align="center">
                                            <td align="left">
                                                <asp:Label ID="lblchallanDesc" Text="Challan Description :" runat="server" CssClass="myBigFont"></asp:Label>
                                                <%--  <asp:Label ID="lblcpassword" runat="server" Text="*" ForeColor="Red"></asp:Label>--%>
                                            </td>
                                            <td align="left">
                                                <asp:TextBox ID="txtChallanDescription" runat="server" Text="" Width="250px" MaxLength="255"
                                                    TextMode="MultiLine" Height="50px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr align="center">
                                            <td align="left">
                                                <asp:Label ID="Label4" Text="Report Delivery Date :" runat="server" CssClass="myBigFont"></asp:Label>
                                                <%--  <asp:Label ID="lblcpassword" runat="server" Text="*" ForeColor="Red"></asp:Label>--%>
                                            </td>
                                            <td align="left">
                                                <asp:TextBox ID="txtReportDeliveryDate" runat="server" Text="" Width="250px" oncontextmenu="return false;"
                                                    onkeydown="return false;" onkeypress="return false;" onkeyup="funReportDelDate(event);"></asp:TextBox>
                                                <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/Calendar.png" />&nbsp;
                                                <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" PopupButtonID="Image2"
                                                    TargetControlID="txtReportDeliveryDate" OnClientShown="showReportDeliveryDate" Format="M/d/yyyy">
                                                </ajaxToolkit:CalendarExtender>
                                            </td>
                                        </tr>
                                        <tr align="center">
                                            <td align="left">
                                                <asp:Label ID="Label5" Text="Priority :" runat="server" CssClass="myBigFont"></asp:Label>
                                                <%--  <asp:Label ID="lblcpassword" runat="server" Text="*" ForeColor="Red"></asp:Label>--%>
                                            </td>
                                            <td align="left">
                                                <asp:RadioButton ID="rdbtn_Low" Text="Low" Checked="true" runat="server" GroupName="grpbtn"
                                                    Font-Bold="true" Font-Names="Verdana" Font-Size="Small" />
                                                <asp:RadioButton ID="rdbtn_High" Text="High" runat="server" GroupName="grpbtn" Font-Bold="true"
                                                    Font-Names="Verdana" Font-Size="Small" />
                                            </td>
                                        </tr>
                                        <tr id="troldAgency" runat="server">
                                            <td align="left" colspan="2">
                                                <asp:UpdatePanel ID="upchallanupdate" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <div style="text-align: center; width: 100%; margin-top: 5px; height: 73px; overflow: auto">
                                                            <table width="100%">
                                                                <tr>
                                                                    <td align="left" style="width: 40%">
                                                                        <asp:Label ID="Label27" Text="Agency :" runat="server" CssClass="myBigFont"></asp:Label>
                                                                        <asp:Button ID="btnAdd" runat="server" Font-Bold="true" OnClick="btnAdd_Click" Text="Add Agency" />
                                                                    </td>
                                                                    <td align="left" style="width: 60%; margin-left: 40px;">
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
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </div>
                                                    </ContentTemplate>
                                                    <Triggers>
                                                        <asp:AsyncPostBackTrigger ControlID="grdeditagency" EventName="RowEditing" />
                                                    </Triggers>
                                                </asp:UpdatePanel>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" align="center">
                                                <div style="text-align: center; width: 100%; margin-top: 5px; height: 27px;">
                                                    <asp:Button ID="btnaddchallan" runat="server" Text="Save Challan" Width="120px" OnClick="btnaddchallan_Click"
                                                        OnClientClick="return validateChallanDetails();" />
                                                    <asp:Button ID="btncancelchallan" runat="server" Text="Cancel" Width="70px" />
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </center>
                            </div>
                        </asp:Panel>
                    </asp:Panel>
                    <%--                </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="btnAddWitness" EventName="Click" />
                    </Triggers>
                </asp:UpdatePanel>--%>
                </td>
            </tr>
            <tr>
                <td colspan="6">
                    <asp:Panel ID="PanelUpdateChallan" runat="server" CssClass="modalPopup" Style="display: none;">
                        <asp:Panel ID="Panelchallanupdate" runat="server" CssClass="modalPopupInner" Width="600px"
                            Height="250px">
                            <%-- <div style="text-align: center; width: 100%; margin-top: 5px;">
                            <table style="vertical-align: middle; border-width: 2px; border-style: solid; width: 570px;">
                                <tr>
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
                                       
                                    </td>
                                    <td align="left">
                                        <asp:TextBox ID="txteditCustChallanDate" runat="server" Text="" oncontextmenu="return false;"
                                            onkeyup="return false;" onkeydown="return false;" onkeypress="return false;"
                                            Width="250px"></asp:TextBox>
                                        <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/Calendar.png" />&nbsp;
                                        <ajaxToolkit:CalendarExtender ID="CalendarExtender3" runat="server" PopupButtonID="Image3"
                                            TargetControlID="txteditCustChallanDate" OnClientShown="ShowCaleditChallandate">
                                        </ajaxToolkit:CalendarExtender>
                                    </td>
                                </tr>
                                <tr align="center">
                                    <td align="left">
                                        <asp:Label ID="Label23" Text="Sample Described As :" runat="server" CssClass="myBigFont"></asp:Label>
                                        
                                    </td>
                                    <td align="left">
                                        <asp:TextBox ID="txteditChallanDescription" runat="server" Text="" Width="250px"
                                            MaxLength="255" TextMode="MultiLine" Height="50px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr align="center">
                                    <td align="left">
                                        <asp:Label ID="Label24" Text="Report Delivery Date :" runat="server" CssClass="myBigFont"></asp:Label>
                                       
                                    </td>
                                    <td align="left">
                                        <asp:TextBox ID="txteditReportDeliveryDate" runat="server" Text="" Width="250px"
                                            oncontextmenu="return false;" onkeyup="return false;" onkeydown="return false;"
                                            onkeypress="return false;"></asp:TextBox>
                                        <asp:Image ID="Image4" runat="server" ImageUrl="~/Images/Calendar.png" />&nbsp;
                                        <ajaxToolkit:CalendarExtender ID="CalendarExtender4" runat="server" PopupButtonID="Image4"
                                            TargetControlID="txteditReportDeliveryDate" OnClientShown="showReporteditDeliveryDate">
                                        </ajaxToolkit:CalendarExtender>
                                    </td>
                                </tr>
                                <tr align="center">
                                    <td align="left">
                                        <asp:Label ID="Label25" Text="Priority :" runat="server" CssClass="myBigFont"></asp:Label>
                                       
                                    </td>
                                    <td align="left">
                                        <asp:RadioButton ID="rdbtnedit_Low" Text="Low" Checked="true" runat="server" GroupName="grpbtn"
                                            Font-Bold="true" Font-Names="Verdana" Font-Size="Small" />
                                        <asp:RadioButton ID="rdbtnedit_High" Text="High" runat="server" GroupName="grpbtn"
                                            Font-Bold="true" Font-Names="Verdana" Font-Size="Small" />
                                    </td>
                                </tr>
                               
                                <tr>
                                <td align="left">
                                        <asp:Label ID="Label27" Text="Agency :" runat="server" CssClass="myBigFont"></asp:Label>
                                    </td>
                                <td align="center">
                                            <asp:UpdatePanel ID="upchallanupdate" runat="server" UpdateMode="Conditional" >
                                        <ContentTemplate>
                                    <asp:GridView ID="grdeditagency" runat="server" AutoGenerateColumns="false"   EnableViewState="true"
                                        DataKeyNames="WitnessID,ChallanID" 
                                        onrowcancelingedit="grdeditagency_RowCancelingEdit" 
                                        onrowdeleting="grdeditagency_RowDeleting" 
                                        onrowediting="grdeditagency_RowEditing" 
                                        onrowupdating="grdeditagency_RowUpdating">
                                        <Columns>
                                            <asp:TemplateField HeaderText="Sr.No" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="20px">
                                                <ItemTemplate>
                                                    <%#Container.DataItemIndex+1   %>
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Center" Width="20px" />
                                            </asp:TemplateField>
                                           
                                            <asp:TemplateField>
                                            <ItemTemplate>
                                            <asp:Label ID="lblAgency"  runat="server" ></asp:Label>
                                            </ItemTemplate> 
                                            <EditItemTemplate >
                                            <asp:TextBox id="txtagency"  runat="server" ></asp:TextBox>
                                            </EditItemTemplate>
                                            </asp:TemplateField> 
                                            <asp:CommandField ShowEditButton="true" /> 
                                        </Columns>
                                    </asp:GridView>
                                    </ContentTemplate>
                                    <Triggers >
                                    <asp:AsyncPostBackTrigger ControlID="grdeditagency" EventName="RowEditing" />  
                                    </Triggers>
                                    </asp:UpdatePanel>
                                </td>
                            </tr>
                                <tr align="center">
                                    <td align="center" colspan="2">
                                       
                                    </td>
                                </tr>
                            </table>
                        </div>--%>
                            <%--  </ContentTemplate>
                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="btneditchallan" EventName="Click" />
                                        </Triggers>
                                    </asp:UpdatePanel>--%>
                            <div style="text-align: center; width: 100%; margin-top: 5px; height: 21px;">
                                <asp:Button ID="btneditchallan" runat="server" Text="Save Challan" Width="120px"
                                    OnClick="btneditchallan_Click" />
                                <asp:Button ID="btncanceleditchallan" runat="server" Text="Cancel" Width="70px" />
                            </div>
                        </asp:Panel>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="6">
                    <%-- <asp:UpdatePanel ID="UpdatePanechallaniteminfo" runat="server" UpdateMode="Conditional" >
                        <ContentTemplate>--%>
                    <asp:Panel ID="pnlChallanItemInfo" runat="server" CssClass="modalPopup" Style="display: none">
                        <asp:Panel ID="pnlChallanItem" runat="server" CssClass="modalPopupInner" Width="990px">
                            <div style="text-align: center; width: 100%; margin-top: 5px;">
                                <asp:UpdatePanel ID="upUpdateUser" runat="server" UpdateMode="Conditional">
                                    <ContentTemplate>
                                        <table style="vertical-align: middle; border-width: 2px; border-style: solid; width: 950px;">
                                            <tr>
                                                <td colspan="2">
                                                    <asp:Label ID="lblchallanitemInfo" Text="Sample Information" runat="server" Style="font-family: Verdana;
                                                        font-size: 14px; color: White; font-weight: bold;"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr align="center">
                                                <td align="left">
                                                    <asp:Label ID="Label2" Text="Sample No :" runat="server" CssClass="myBigFont"></asp:Label>
                                                    <asp:Label ID="Label3" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                                </td>
                                                <td align="left">
                                                    <asp:TextBox ID="txtItemNm" runat="server" Width="250px" Text="" MaxLength="250"></asp:TextBox>
                                                    <%--<ajaxToolkit:FilteredTextBoxExtender ID="fteUpdateName" BehaviorID="fteUpdateName"
                                            runat="server" TargetControlID="txtUpdateName" ValidChars="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ">
                                        </ajaxToolkit:FilteredTextBoxExtender>--%>
                                                </td>
                                            </tr>
                                            <tr align="center">
                                                <td align="left">
                                                    <asp:Label ID="lblDescription" Text="Sample Described As:" runat="server" CssClass="myBigFont"></asp:Label>
                                                </td>
                                                <td align="left">
                                                    <asp:TextBox ID="txtItemDesc" runat="server" Width="250px" Text="" MaxLength="250"
                                                        TextMode="MultiLine" Height="50px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr align="center">
                                                <td align="left">
                                                    <asp:Label ID="Label10" Text=" Registration Date :" runat="server" CssClass="myBigFont"></asp:Label>
                                                    <%--<asp:Label ID="lblcusername" runat="server" Text="*" ForeColor="Red"></asp:Label>--%>
                                                </td>
                                                <td align="left">
                                                    <asp:TextBox ID="txtRegDate" runat="server" Text="" oncontextmenu="return false;"
                                                        onkeydown="return false;" onkeypress="return false;" onkeyup="funRegDate(event);"
                                                        Width="250px"></asp:TextBox>
                                                    <asp:Image ID="Image32" runat="server" ImageUrl="~/Images/Calendar.png" />&nbsp;
                                                    <ajaxToolkit:CalendarExtender ID="CalendarExtender31213" runat="server" PopupButtonID="Image32"
                                                        TargetControlID="txtRegDate" OnClientShown="ShowCalRegdate" Format="M/d/yyyy">
                                                    </ajaxToolkit:CalendarExtender>
                                                </td>
                                            </tr>
                                            <%--  <tr align="center">
                                            <td align="left">
                                                <asp:Label ID="lblqty" Text="Quantity:" runat="server" CssClass="myBigFont"></asp:Label>
                                            </td>
                                            <td align="left">
                                                <asp:TextBox ID="txtQuantity" runat="server" Width="250px" Text="" MaxLength="11"></asp:TextBox>
                                                <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server"
                                                    Enabled="True" FilterType="Custom, Numbers" TargetControlID="txtQuantity" ValidChars="1234567890.">
                                                </ajaxToolkit:FilteredTextBoxExtender>
                                            </td>
                                        </tr>--%>
                                            <tr align="center">
                                                <td align="left">
                                                    <asp:Label ID="Label6" Text="Returnable :" runat="server" CssClass="myBigFont"></asp:Label>
                                                </td>
                                                <td align="left">
                                                    <asp:RadioButton ID="rdbtn_Yes" Text="Yes" Checked="true" runat="server" GroupName="grp"
                                                        Font-Bold="true" Font-Names="Verdana" Font-Size="Small" />
                                                    <asp:RadioButton ID="rdbtn_No" Text="No" runat="server" GroupName="grp" Font-Bold="true"
                                                        Font-Names="Verdana" Font-Size="Small" />
                                                </td>
                                            </tr>
                                            <tr align="center">
                                                <td align="left">
                                                    <asp:Label ID="Label13" Text="Specification :" runat="server" CssClass="myBigFont"></asp:Label>
                                                </td>
                                                <td align="left">
                                                    <asp:TextBox ID="txtSpecification" runat="server" Height="20px" AutoPostBack="true"
                                                        Width="250px" OnTextChanged="txtSpecification_TextChanged"></asp:TextBox>
                                                    <ajaxToolkit:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" MinimumPrefixLength="1"
                                                        ServiceMethod="FetchSpecification" ServicePath="WebService.asmx" TargetControlID="txtSpecification"
                                                        OnClientShown="ShowSpec" OnClientItemSelected="GetCode">
                                                    </ajaxToolkit:AutoCompleteExtender>
                                                    <ajaxToolkit:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server"
                                                        TargetControlID="txtSpecification" WatermarkText="Type Alphabet to Get Specification List"
                                                        WatermarkCssClass="watermarked" />
                                                </td>
                                            </tr>
                                            <tr align="center">
                                                <td align="left">
                                                    <asp:Label ID="Label14" Text="Grade :" runat="server" CssClass="myBigFont"></asp:Label>
                                                </td>
                                                <td align="left">
                                                    <%--<asp:TextBox ID="txtGrade" runat="server" Width="250px" Text="" MaxLength="11"></asp:TextBox>--%>
                                                    <div>
                                                        <asp:DropDownList ID="ddlGrade" runat="server" Width="250px" AutoPostBack="true"
                                                            OnSelectedIndexChanged="ddlGrade_SelectedIndexChanged">
                                                        </asp:DropDownList>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr align="center">
                                                <td align="left">
                                                    <asp:Label ID="Label7" Text="Select Specimen :" runat="server" CssClass="myBigFont"></asp:Label>
                                                </td>
                                                <td align="left">
                                                    <%--<asp:TextBox ID="txtGrade" runat="server" Width="250px" Text="" MaxLength="11"></asp:TextBox>--%>
                                                    <div>
                                                        <asp:DropDownList ID="ddlSpcimenn" runat="server" Width="250px" AutoPostBack="false"
                                                            OnSelectedIndexChanged="ddlSpcimenn_SelectedIndexChanged">
                                                        </asp:DropDownList>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" style="height: 13px" colspan="2">
                                                    <asp:Label ID="Label15" runat="server" CssClass="myBigFont" Text="Test Categories:"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr align="center">
                                                <td align="center" colspan="2" id="tdtree" runat="server">
                                                    <div style="width: 950px; height: 190px; overflow: auto; vertical-align: top;" id="divtree"
                                                        runat="server">
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID= "btnsaveChallanItem" EventName="Click" />
                                        <%--<asp:PostBackTrigger ControlID = "btnsaveChallanItem"/>--%>
                                    </Triggers>
                                </asp:UpdatePanel>
                            </div>
                            <div style="text-align: center; width: 100%; margin-top: 5px;">
                                <asp:Button ID="btnsaveChallanItem" runat="server" Text="Save" Width="70px" OnClientClick="return validateIfParentisChecked();"
                                    OnClick="btnsaveChallanItem_Click" />
                                <asp:Button ID="btnItemCancel" runat="server" Text="Cancel" Width="70px" 
                                    onclick="btnItemCancel_Click1" />
                            </div>
                        </asp:Panel>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="6">
                    <asp:Panel ID="pnlCopyItemInfo" runat="server" CssClass="modalPopup" Height="93px"
                        Style="display: none">
                        <asp:Panel ID="pnlCopyItem" runat="server" CssClass="modalPopupInner" Width="90%">
                            <center>
                                <div style="text-align: center; width: 98%; margin-top: 5px;">
                                    <br />
                                    <asp:UpdatePanel ID="upUpdatesample" runat="server" UpdateMode="Conditional">
                                        <ContentTemplate>
                                            <center>
                                                <table style="vertical-align: middle; border-width: 2px; border-style: solid; width: 100%;">
                                                    <tr align="center">
                                                        <td align="center" style="width: 60%">
                                                            <asp:Label ID="Label8" Text="Enter Sample No :" runat="server" CssClass="myBigFont"></asp:Label>
                                                            <asp:Label ID="Label9" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                                        </td>
                                                        <td align="left" style="width: 40%">
                                                            <asp:TextBox ID="txtduplicateSample" runat="server" Width="180px" Text="" MaxLength="250"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </center>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                                <div style="text-align: center; width: 100%; height: 25px;">
                                    <asp:Button ID="btnsaveDuplicateSample" runat="server" Text="Save Sample" Width="95px"
                                        OnClick="btnsaveDuplicateSample_Click" />
                                    <asp:Button ID="btnSampleCancel" runat="server" Text="Cancel" Width="70px" />
                                </div>
                            </center>
                        </asp:Panel>
                    </asp:Panel>
                </td>
            </tr>
            <tr class="tableRow1">
                <td align="center" colspan="6" style="overflow: auto; width: 100%">
                    <asp:Panel ID="pnlNewPara" runat="server" CssClass="modalPopup" Style="display: none">
                        <asp:Panel ID="pnlPara" runat="server" CssClass="modalPopupInner" Width="980px">
                            <asp:UpdatePanel ID="upParaInfo" runat="server" UpdateMode="Conditional">
                                <ContentTemplate>
                                    <asp:HiddenField ID="hdnwidth" runat="server" />
                                    <asp:HiddenField ID="hdnthickness" runat="server" />
                                    <asp:HiddenField ID="hdninnerdiameter" runat="server" />
                                    <asp:HiddenField ID="hdnouterdiameter" runat="server" />
                                    <asp:HiddenField ID="hdncornerradius" runat="server" />
                                    <asp:HiddenField ID="hdncrosssectionalarea" runat="server" />
                                    <asp:HiddenField ID="hdninitarea" runat="server" />
                                    <asp:HiddenField ID="hdnfinalarea" runat="server" />
                                    <asp:HiddenField ID="hdnfinalwidth" runat="server" />
                                    <asp:HiddenField ID="hdnfinalthickness" runat="server" />
                                    <asp:HiddenField ID="hdnfinalinnerdiameter" runat="server" />
                                    <asp:HiddenField ID="hdnfinalouterdiameter" runat="server" />
                                    <asp:HiddenField ID="hdnfinalcornerradius" runat="server" />
                                    <asp:HiddenField ID="hdnfinalcrosssectionalarea" runat="server" />
                                    <asp:HiddenField ID="hdnindex" runat="server" />
                                    <asp:HiddenField ID="hdninitgaugelength" runat="server" />
                                    <asp:HiddenField ID="hdnfinalgaugelength" runat="server" />
                                    <asp:HiddenField ID="hdninitdiameter" runat="server" />
                                    <asp:HiddenField ID="hdnfinaldiameter" runat="server" />
                                    <asp:HiddenField ID="hdnmass" runat="server" />
                                    <asp:HiddenField ID="hdndensity" runat="server" />
                                    <asp:HiddenField ID="hdnfinalmass" runat="server" />
                                    <asp:HiddenField ID="hdnfinaldensity" runat="server" />
                                    <asp:HiddenField ID="hdnoddlength" runat="server" />
                                    <asp:HiddenField ID="hdnfinaloddlength" runat="server" />
                                    <asp:HiddenField ID="hdntpwidth" runat="server" />
                                    <asp:HiddenField ID="hdnfinaltpwidth" runat="server" />
                                    <asp:HiddenField ID="hdntpthickness" runat="server" />
                                    <asp:HiddenField ID="hdnfinaltpthickness" runat="server" />
                                    <asp:HiddenField ID="hdntpouterdiameter" runat="server" />
                                    <asp:HiddenField ID="hdnfinaltpouterdiameter" runat="server" />
                                    <asp:HiddenField ID="hdnpipethickness" runat="server" />
                                    <asp:HiddenField ID="hdnfinalpipethickness" runat="server" />
                                    <asp:HiddenField ID="hdnpipeouterdiameter" runat="server" />
                                    <asp:HiddenField ID="hdnfinalpipeouterdiameter" runat="server" />
                                    <asp:HiddenField ID="hdnthick" runat="server" />
                                    <asp:HiddenField ID="hdnbreadth" runat="server" />
                                    <asp:HiddenField ID="hdnlength" runat="server" />
                                    <asp:HiddenField ID="hdnfinalthick" runat="server" />
                                    <asp:HiddenField ID="hdnfinalbreadth" runat="server" />
                                    <asp:HiddenField ID="hdnfinallength" runat="server" />
                                    <asp:HiddenField ID="hdnspecimeninputtype" runat="server" />
                                    <center>
                                        <div style="height: 510px; overflow: auto">
                                            <table id="mytab" runat="server" width="100%">
                                                <tr align="center">
                                                    <td style="width: 100%;">
                                                        <asp:GridView ID="gdvItem" runat="server" AllowPaging="True" AllowSorting="True"
                                                            AutoGenerateColumns="False" DataKeyNames="ParaID,TestTypeID" ForeColor="#333333"
                                                            HeaderStyle-CssClass="myBigFont" PagerStyle-HorizontalAlign="Center" PageSize="10"
                                                            RowStyle-CssClass="myGridFont" Width="100%" OnRowDataBound="gdvItem_RowDataBound"
                                                            OnPageIndexChanging="gdvItem_PageIndexChanging" EnableViewState="true">
                                                            <Columns>
                                                                <%--<asp:TemplateField HeaderText="Sr.No" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="20px">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblUnitName" runat="server" Text='<%# Eval("UnitName")%>'></asp:Label>
                                                                    </ItemTemplate>
                                                                    <ItemStyle HorizontalAlign="Center" Width="20px" />
                                                                </asp:TemplateField>--%>
                                                            </Columns>
                                                            <PagerStyle HorizontalAlign="Center" />
                                                            <RowStyle CssClass="GridRowStyle" />
                                                            <HeaderStyle CssClass="Gridheading" Font-Bold="True" ForeColor="White" />
                                                            <AlternatingRowStyle CssClass="GridAlternateRowStyle" />
                                                        </asp:GridView>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center">
                                                        <asp:GridView ID="GrdAgency" runat="server" AutoGenerateColumns="false" EnableViewState="true"
                                                            DataKeyNames="WitnessID,ChallanID" Width="75%">
                                                            <Columns>
                                                                <asp:TemplateField HeaderText="Sr.No" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="20px">
                                                                    <ItemTemplate>
                                                                        <%#Container.DataItemIndex+1   %>
                                                                    </ItemTemplate>
                                                                    <ItemStyle HorizontalAlign="Center" Width="20px" />
                                                                </asp:TemplateField>
                                                                <asp:BoundField DataField="AgencyNm" HeaderText="Witness Agency Name" ItemStyle-HorizontalAlign="Left"
                                                                    ItemStyle-Width="300px" SortExpression="ParaNm">
                                                                    <ItemStyle HorizontalAlign="Left" Width="250px" />
                                                                </asp:BoundField>
                                                            </Columns>
                                                        </asp:GridView>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center">
                                                        <table width="75%">
                                                            <tr id="trRemark" runat="server">
                                                                <td align="right">
                                                                    Remark :
                                                                </td>
                                                                <td align="left">
                                                                    <asp:TextBox ID="txtsampleremark" runat="server" Width="250px"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="right">
                                                                    Test Method :
                                                                </td>
                                                                <td align="left">
                                                                    <asp:DropDownList ID="ddlTestMethod" runat="server" Width="400px">
                                                                    </asp:DropDownList>
                                                                </td>
                                                            </tr>
                                                            <tr id="trobservation" runat="server">
                                                                <td align="right">
                                                                    Observation :
                                                                </td>
                                                                <td align="left">
                                                                    <asp:TextBox ID="txtObservation" runat="server" Width="400px"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center">
                                                        <asp:Button ID="btnSavePara" runat="server" Text="Save As Draft" Width="120px" OnClick="btnSavePara_Click"
                                                            Visible="false" OnClientClick="return paraValidation();" />
                                                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" Width="60px" OnClick="btnSubmit_Click"
                                                            OnClientClick="return onSubmitValidateResultEntry();" />
                                                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" Width="60px" OnClick="btnCancel_Click" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </center>
                                </ContentTemplate>
                                <Triggers>
                                    <asp:PostBackTrigger ControlID="btnSavePara" />
                                    <asp:PostBackTrigger ControlID="btnSubmit" />
                                    <asp:PostBackTrigger ControlID="btnCancel" />
                                </Triggers>
                            </asp:UpdatePanel>
                            <div>
                                <table width="100%">
                                    <tr>
                                        <td align="right">
                                        </td>
                                        <td align="center">
                                            <%--  --%>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <asp:Label ID="lbltestype" runat="server"></asp:Label>
                        </asp:Panel>
                    </asp:Panel>
                </td>
            </tr>
            <tr class="tableRow1">
                <td align="center" colspan="6">
                    <asp:HiddenField ID="hiddenCustId" runat="server" />
                    <asp:HiddenField ID="hdnSpecid" runat="server" />
                </td>
            </tr>
            <tr class="tableRow1">
                <td align="center" colspan="6" style="overflow: auto; width: 100%">
                    <asp:Panel ID="PrintDatePanelouter" runat="server" CssClass="modalPopup" Style="display: none">
                        <asp:Panel ID="PrintDatePanelinner" runat="server" CssClass="modalPopupInner" Width="350px">
                            <div style="width: 377px">
                                <table>
                                    <tr>
                                        <td style="width: 50%">
                                            
                                            <%--<Shreya> Create New ModelPopup for Printing Date on 09 Sept 2011--%>
                                            
                                           <%-- <asp:UpdatePanel ID="PrintDateupdatePanel" runat="server" UpdateMode="Conditional">
                                                <ContentTemplate>
                                                    <table id="Table1" runat="server" style="height: 88px; width: 267px;">
                                                        <tr align="center">
                                                            <td style="width: 80%">
                                                                Release Date:
                                                                <asp:TextBox ID="txtprintdate" runat="server" Text="" oncontextmenu="return false;"
                                                                    onkeydown="return false;" onkeypress="return false;" Width="123px" Height="27px"></asp:TextBox>
                                                                <asp:Image ID="Image123434" runat="server" ImageUrl="~/Images/Calendar.png" />&nbsp;
                                                                <ajaxToolkit:CalendarExtender ID="cal" runat="server" PopupButtonID="Image123434"
                                                                    TargetControlID="txtprintdate" OnClientShown="ShowPrintDate">
                                                                    
                                                                </ajaxToolkit:CalendarExtender>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 100%;" align="right" valign="bottom">
                                                                <asp:Button ID="btnSaveReleasedItem" runat="server" Text="Release Sample" Width="136px"
                                                                    OnClick="btnSaveReleasedItem_Click" OnClientClick="return ReleasedDateConfirmation();" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ContentTemplate>
                                                <Triggers>
                                                    <asp:AsyncPostBackTrigger ControlID="btnSaveReleasedItem" EventName="Click" />
                                                </Triggers>
                                            </asp:UpdatePanel>--%>
                                            
                                            <asp:UpdatePanel ID="upPrintDate" runat="server" UpdateMode="Conditional">
                                                <ContentTemplate>
                                                    <table id="Table1" runat="server" style="height: 88px; width: 267px;">
                                                        <tr align="center">
                                                            <td style="width:80%">
                                                                Release Date:
                                                                <asp:TextBox ID="txtPrintDate" runat="server" Text="" oncontextmenu="return false;"
                                                                    onkeydown="return false;" onkeypress="return false;" Width="123px" Height="27px"></asp:TextBox>
                                                                <asp:Image ID="Image123434" runat="server" ImageUrl="~/Images/Calendar.png" />&nbsp;
                                                                <ajaxToolkit:CalendarExtender ID="cal" runat="server" PopupButtonID="Image123434"
                                                                    TargetControlID="txtPrintDate" OnClientShown="ShowPrintDate" Format="M/d/yyyy"></ajaxToolkit:CalendarExtender>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 100%;" align="right" valign="bottom">
                                                                <asp:Button ID="btnSaveReleasedItemDate" runat="server" Text="Release Sample" Width="136px"
                                                                    OnClientClick="return ReleasedDateConfirmation();" onclick="btnSaveReleasedItemDate_Click" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ContentTemplate>
                                                <Triggers>
                                                    <%--<asp:AsyncPostBackTrigger ControlID="btnSaveReleasedItemDate" EventName="Click" />--%>
                                                    <asp:PostBackTrigger ControlID="btnSaveReleasedItemDate" />
                                                </Triggers>
                                            </asp:UpdatePanel>
                                            
                                        </td>
                                        <td align="left" valign="bottom">
                                            <asp:Button ID="btn_Cancel_PrintDate" runat="server" Text="Cancel" Width="60px" />
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </asp:Panel>
                    </asp:Panel>
                </td>
            </tr>
        </table>
    </center>
    
    
    <script type="text/javascript" language="javascript">

        function ReleasedDateConfirmation() {

            var str = confirm('Are You Confirm You Want To Release For Printing');
            if (str == true)
                return true;
            else
                return false;
        }
        
        function onSubmitValidateResultEntry() {
            var paraval = paraValidation();

            if (paraval != false) {

                var grid = document.getElementById("<%= gdvItem.ClientID%>");
                
                //<Shreya>
                //c = 4 it takes a value MaxVal
                //it is hard coded as told by Shardul sir
                
                var c = 5; //now it will take value of Result1.
                //</Shreya>
                
                var cloumn = grid.rows[0].cells;
                var colcnt = parseInt(cloumn.length) - 5;
                for (var k = 0; k < colcnt; k++) {
                    if (grid.rows[0].cells[c] != null && grid.rows[0].cells[c] != "undefined") {

                        var colname = grid.rows[0].cells[c].innerText;
                        for (var i = 1; i < grid.rows.length; i++) {
                            var cell1 = grid.rows[i].cells;
                            cell = grid.rows[i].cells[c];
                            if (cell != null && cell.toString() != "undefined") {
                                for (j = 0; j < cell.childNodes.length; j++) {
                                    if (cell.childNodes[j].type == "text" || cell.childNodes[j].type == "textarea") {
                                        if (cell.childNodes[j].value == "") {
                                            alert('Enter All value For Result');
                                            return false;
                                        }
                                    }
                                }
                            }
                        }

                        c = c + 1;
                    }

                }

            } ////if para validation are true
            else return false;
        }
        
        function paraValidation() {
        
            var boolflag = 0;
            var InputType = "";
            if (document.getElementById("ctl00_ContentPlaceHolder2_hdnspecimeninputtype").value != "")
                InputType = document.getElementById("ctl00_ContentPlaceHolder2_hdnspecimeninputtype").value;
            var grid = document.getElementById("<%= gdvItem.ClientID%>");
            var c = 5;
            var thick = "", width = "", finalthick = "", finalwidth = "";
            var tpwidth = "", tpthick = ""; tpouterdiameter = "", finaltpwidth = "", finaltpthickness = "", finaltpouterdiameter = "";
            var thickness = "", breadth = "", length = "", finalthickness = "", finalbreadth = "", finallength = "";
            var innerdiameter = "", outerdiameter = "", finalinnerdiameter = "", finalouterdiameter = "";
            var initialdiameter = "", finaldiameter = "";
            var mass = "", density = "", oddlength = "", finalmass = "", finaldensity = "", finaloddlength = "";
            var pipethikness = "", pipeouterdiameter = "", finalpipethickness = "", finalpipeouterdiameter = "";
            var initialarea = "", finalarea = "", initialgaugelength = "", finalgaugelength = "";
            var initialCrosssectionalArea = "", finalcrosssectionalarea = "";
            var percentageelongation = "", reductionarea = "";
            var cloumn = grid.rows[0].cells;
            var colcnt = parseInt(cloumn.length) - 5;
            for (var k = 0; k < colcnt; k++) {
                if (grid.rows[0].cells[c] != null && grid.rows[0].cells[c] != "undefined") {

                    var colname = grid.rows[0].cells[c].innerText;
                    for (var i = 1; i < grid.rows.length; i++) {
                        var paraname_withoutunit = "";
                        var cell1 = grid.rows[i].cells;
                        cell = grid.rows[i].cells[c];
                        if (cell != null && cell.toString() != "undefined") {
                            for (j = 0; j < cell.childNodes.length; j++) {
                                if (cell.childNodes[j].type == "text") {
                                
                                //<Shreya>
                                    //paraname_withoutunit = cell1[1].childNodes[0].value;
                                    //paraname_withoutunit = paraname_withoutunit.substring(0, paraname_withoutunit.lastIndexOf('('));
                                    //paraname_withoutunit = RTrim(paraname_withoutunit);
                                    //As told by Shardul Sir.
                                    //This is hard coded this change is to take parameter name in paraname_withoutunit variable 
                                    paraname_withoutunit = cell1[1].childNodes[0].innerHTML; 
                                    
                               //</Shreya>
                                         
                                    switch (InputType) {
                                        case (InputType = "InputType1"):
                                            if (paraname_withoutunit == "Width" && cell.childNodes[j].value != "")
                                                width = parseFloat(cell.childNodes[j].value);
                                            else if (paraname_withoutunit == "Width" && cell.childNodes[j].value == "")
                                                width = "";
                                            else if (paraname_withoutunit == "Final Width" && cell.childNodes[j].value != "")
                                                finalwidth = parseFloat(cell.childNodes[j].value);
                                            else if (paraname_withoutunit == "Final Width" && cell.childNodes[j].value == "")
                                                finalwidth = "";
                                            if (paraname_withoutunit == "Thickness" && cell.childNodes[j].value != "")
                                                thick = parseFloat(cell.childNodes[j].value);
                                            if (paraname_withoutunit == "Thickness" && cell.childNodes[j].value == "")
                                                thick = "";
                                            if (paraname_withoutunit == "Final Thickness" && cell.childNodes[j].value != "")
                                                finalthick = parseFloat(cell.childNodes[j].value);
                                            if (paraname_withoutunit == "Final Thickness" && cell.childNodes[j].value == "")
                                                finalthick = "";
                                            break;

                                        case (InputType = "InputType2"):
                                            if (paraname_withoutunit == "Diameter" && cell.childNodes[j].value != "")
                                                initialdiameter = parseFloat(cell.childNodes[j].value);
                                            else if (paraname_withoutunit == "Diameter" && cell.childNodes[j].value == "")
                                                initialdiameter = "";
                                            else if (paraname_withoutunit == "Final Diameter" && cell.childNodes[j].value != "")
                                                finaldiameter = parseFloat(cell.childNodes[j].value);
                                            else if (paraname_withoutunit == "Final Diameter" && cell.childNodes[j].value == "")
                                                finaldiameter = "";
                                            break;
                                        case (InputType = "InputType3"):

                                            if (paraname_withoutunit == "Inner Diameter" && cell.childNodes[j].value != "")
                                                innerdiameter = parseFloat(cell.childNodes[j].value);
                                            else if (paraname_withoutunit == "Inner Diameter" && cell.childNodes[j].value == "")
                                                innerdiameter = "";
                                            else if (paraname_withoutunit == "Final Inner Diameter" && cell.childNodes[j].value != "")
                                                finalinnerdiameter = parseFloat(cell.childNodes[j].value);
                                            else if (paraname_withoutunit == "Final Inner Diameter" && cell.childNodes[j].value == "")
                                                finalinnerdiameter = "";
                                            else if (paraname_withoutunit == "Outer Diameter" && cell.childNodes[j].value != "")
                                                outerdiameter = parseFloat(cell.childNodes[j].value);
                                            else if (paraname_withoutunit == "Outer Diameter" && cell.childNodes[j].value == "")
                                                outerdiameter = "";
                                            else if (paraname_withoutunit == "Final Outer Diameter" && cell.childNodes[j].value != "")
                                                finalouterdiameter = parseFloat(cell.childNodes[j].value);
                                            else if (paraname_withoutunit == "Final Outer Diameter" && cell.childNodes[j].value == "")
                                                finalouterdiameter = "";
                                            break;
                                        case (InputType = "InputType4"):
                                            /////////////Cross Sectional Area
                                            if (paraname_withoutunit == "Cross Sectional Area" && cell.childNodes[j].value != "")
                                                initialCrosssectionalArea = parseFloat(cell.childNodes[j].value);
                                            else if (paraname_withoutunit == "Cross Sectional Area" && cell.childNodes[j].value == "")
                                                initialCrosssectionalArea = "";
                                            else if (paraname_withoutunit == "Final Cross Sectional Area" && cell.childNodes[j].value != "")
                                                finalcrosssectionalarea = parseFloat(cell.childNodes[j].value);
                                            else if (paraname_withoutunit == "Final Cross Sectional Area" && cell.childNodes[j].value == "")
                                                finalcrosssectionalarea = "";
                                            break;
                                        case (InputType = "InputType5"):
                                            if (cell.childNodes[j].value != "" && paraname_withoutunit == "Mass")
                                                mass = parseFloat(cell.childNodes[j].value);
                                            else if (cell.childNodes[j].value == "" && paraname_withoutunit == "Mass")
                                                mass = "";
                                            else if (cell.childNodes[j].value != "" && paraname_withoutunit == "Final Mass")
                                                finalmass = parseFloat(cell.childNodes[j].value);
                                            else if (cell.childNodes[j].value == "" && paraname_withoutunit == "Final Mass")
                                                finalmass = "";
                                            else if (cell.childNodes[j].value != "" && paraname_withoutunit == "Density")
                                                density = parseFloat(cell.childNodes[j].value);
                                            else if (cell.childNodes[j].value == "" && paraname_withoutunit == "Density")
                                                density = "";
                                            else if (cell.childNodes[j].value != "" && paraname_withoutunit == "Final Density")
                                                finaldensity = parseFloat(cell.childNodes[j].value);
                                            else if (cell.childNodes[j].value == "" && paraname_withoutunit == "Final Density")
                                                finaldensity = "";
                                            if (paraname_withoutunit == "Length" && cell.childNodes[j].value != "")
                                                oddlength = parseFloat(cell.childNodes[j].value);
                                            else if (paraname_withoutunit == "Length" && cell.childNodes[j].value == "")
                                                oddlength = "";
                                            else if (paraname_withoutunit == "Final Length" && cell.childNodes[j].value != "")
                                                finaloddlength = parseFloat(cell.childNodes[j].value);
                                            else if (paraname_withoutunit == "Final Length" && cell.childNodes[j].value == "")
                                                finaloddlength = "";
                                            break;
                                        case (InputType = "InputType6"):
                                            break;
                                        case (InputType = "InputType7"):
                                            if (paraname_withoutunit == "Breadth" && cell.childNodes[j].value != "")
                                                breadth = parseFloat(cell.childNodes[j].value);
                                            else if (paraname_withoutunit == "Breadth" && cell.childNodes[j].value == "")
                                                breadth = "";
                                            else if (paraname_withoutunit == "Length" && cell.childNodes[j].value != "")
                                                length = parseFloat(cell.childNodes[j].value);
                                            else if (paraname_withoutunit == "Length" && cell.childNodes[j].value == "")
                                                length = "";
                                            else if (paraname_withoutunit == "Final Breadth" && cell.childNodes[j].value != "")
                                                finalbreadth = parseFloat(cell.childNodes[j].value);
                                            else if (paraname_withoutunit == "Final Breadth" && cell.childNodes[j].value == "")
                                                finalbreadth = "";
                                            else if (paraname_withoutunit == "Final Length" && cell.childNodes[j].value != "")
                                                finallength = parseFloat(cell.childNodes[j].value);
                                            else if (paraname_withoutunit == "Final Length" && cell.childNodes[j].value == "")
                                                finallength = "";
                                            if (paraname_withoutunit == "Thickness" && cell.childNodes[j].value != "")
                                                thickness = parseFloat(cell.childNodes[j].value);
                                            if (paraname_withoutunit == "Thickness" && cell.childNodes[j].value == "")
                                                thickness = "";
                                            if (paraname_withoutunit == "Final Thickness" && cell.childNodes[j].value != "")
                                                finalthickness = parseFloat(cell.childNodes[j].value);
                                            if (paraname_withoutunit == "Final Thickness" && cell.childNodes[j].value == "")
                                                finalthickness = "";
                                            break;
                                        case (InputType = "InputType8"):
                                            if (paraname_withoutunit == "Thickness" && cell.childNodes[j].value != "")
                                                pipethikness = parseFloat(cell.childNodes[j].value);
                                            if (paraname_withoutunit == "Thickness" && cell.childNodes[j].value == "")
                                                pipethikness = "";
                                            if (paraname_withoutunit == "Final Thickness" && cell.childNodes[j].value != "")
                                                finalpipethickness = parseFloat(cell.childNodes[j].value);
                                            if (paraname_withoutunit == "Final Thickness" && cell.childNodes[j].value == "")
                                                finalpipethickness = "";
                                            if (paraname_withoutunit == "Outer Diameter" && cell.childNodes[j].value != "")
                                                pipeouterdiameter = parseFloat(cell.childNodes[j].value);
                                            else if (paraname_withoutunit == "Outer Diameter" && cell.childNodes[j].value == "")
                                                pipeouterdiameter = ""
                                            else if (paraname_withoutunit == "Final Outer Diameter" && cell.childNodes[j].value != "")
                                                finalpipeouterdiameter = parseFloat(cell.childNodes[j].value);
                                            else if (paraname_withoutunit == "Final Outer Diameter" && cell.childNodes[j].value == "")
                                                finalpipeouterdiameter = "";

                                            break;
                                        case (InputType = "InputType9"):

                                            break;
                                        case (InputType = "InputType10"):

                                            if (paraname_withoutunit == "Width" && cell.childNodes[j].value != "")
                                                tpwidth = parseFloat(cell.childNodes[j].value);
                                            else if (paraname_withoutunit == "Width" && cell.childNodes[j].value == "")
                                                tpwidth = "";
                                            else if (paraname_withoutunit == "Final Width" && cell.childNodes[j].value != "")
                                                finaltpwidth = parseFloat(cell.childNodes[j].value);
                                            else if (paraname_withoutunit == "Final Width" && cell.childNodes[j].value == "")
                                                finaltpwidth = "";
                                            if (paraname_withoutunit == "Thickness" && cell.childNodes[j].value != "")
                                                tpthick = parseFloat(cell.childNodes[j].value);
                                            if (paraname_withoutunit == "Thickness" && cell.childNodes[j].value == "")
                                                tpthick = "";
                                            if (paraname_withoutunit == "Final Thickness" && cell.childNodes[j].value != "")
                                                finaltpthickness = parseFloat(cell.childNodes[j].value);
                                            if (paraname_withoutunit == "Final Thickness" && cell.childNodes[j].value == "")
                                                finaltpthickness = "";
                                            if (paraname_withoutunit == "Outer Diameter" && cell.childNodes[j].value != "")
                                                tpouterdiameter = parseFloat(cell.childNodes[j].value);
                                            else if (paraname_withoutunit == "Outer Diameter" && cell.childNodes[j].value == "")
                                                tpouterdiameter = "";
                                            else if (paraname_withoutunit == "Final Outer Diameter" && cell.childNodes[j].value != "")
                                                finalpipeouterdiameter = parseFloat(cell.childNodes[j].value);
                                            else if (paraname_withoutunit == "Final Outer Diameter" && cell.childNodes[j].value == "")
                                                finaltpouterdiameter = "";
                                            break;
                                    }

                                    if (paraname_withoutunit == "Area" && cell.childNodes[j].value != "")
                                        initialarea = parseFloat(cell.childNodes[j].value);
                                    else if (paraname_withoutunit == "Area" && cell.childNodes[j].value == "")
                                        initialarea = "";
                                    else if (paraname_withoutunit == "Final Area" && cell.childNodes[j].value != "")
                                        finalarea = parseFloat(cell.childNodes[j].value);
                                    else if (paraname_withoutunit == "Final Area" && cell.childNodes[j].value == "")
                                        finalarea = "";
                                    else if (paraname_withoutunit == "Gauge Length" && cell.childNodes[j].value != "")
                                        initialgaugelength = parseFloat(cell.childNodes[j].value);
                                    else if (paraname_withoutunit == "Gauge Length" && cell.childNodes[j].value == "")
                                        initialgaugelength = "";
                                    else if (paraname_withoutunit == "Final Gauge Length" && cell.childNodes[j].value != "")
                                        finalgaugelength = parseFloat(cell.childNodes[j].value);
                                    else if (paraname_withoutunit == "Final Gauge Length" && cell.childNodes[j].value == "")
                                        finalgaugelength = "";
                                    if (paraname_withoutunit == "Elongation" && cell.childNodes[j].value != "")
                                        percentageelongation = parseFloat(cell.childNodes[j].value);
                                    else if (paraname_withoutunit == "Elongation" && cell.childNodes[j].value == "")
                                        percentageelongation = "";

                                    if (paraname_withoutunit == "Reduction In Area" && cell.childNodes[j].value != "")
                                        reductionarea = parseFloat(cell.childNodes[j].value);
                                    else if (paraname_withoutunit == "Reduction In Area" && cell.childNodes[j].value == "")
                                        reductionarea = "";


                                }
                            }
                        }
                    }
                    /////Hollow Ectangle InputType7 thickness Breadth,Length
                    switch (InputType) {
                        case (InputType = "InputType1"):
                            ////////////////////validation for Flat
                            if ((width.toString() != "" && width.toString() != "NaN") && thick == "" && InputType == "InputType1") {
                                if (parseFloat(width) == 0) {
                                    alert("Enter Proper Value For Width Of Column " + colname);
                                    return false;
                                }
                                else {
                                    alert("Enter Thickness  For " + colname);
                                    return false;
                                }
                            }
                            else if ((thick.toString() != "" && thick.toString() != "NaN") && width == "" && InputType == "InputType1") {
                                if (parseFloat(thick) == 0) {
                                    alert("Enter Proper Value For Thickness Of Column " + colname);
                                    return false;
                                }
                                else {
                                    alert("Enter Width For " + colname);
                                    return false;
                                }
                            }
                            else if ((width.toString() != "" && width.toString() != "NaN") && (thick.toString() != "" && thick.toString() != "NaN") && InputType == "InputType1") {
                                if (parseFloat(width) == 0) {
                                    alert("Enter Proper Value For Width Of Column " + colname);
                                    return false;
                                }
                                else if (parseFloat(thick) == 0) {
                                    alert("Enter Proper Value For Thickness Of Column " + colname);
                                    return false;
                                }
                            }

                            // else return true;
                            if ((finalwidth.toString() != "" && finalwidth.toString() != "NaN") && finalthick == "" && InputType == "InputType1") {
                                if (parseFloat(finalwidth) == 0) {
                                    alert("Enter Proper Value For Final Width Of Column " + colname);
                                    return false;
                                }
                                else {
                                    alert("Enter Final Thickness For " + colname);
                                    return false;
                                }
                            }

                            else if ((finalthick.toString() != "" && finalthick.toString() != "NaN") && finalwidth == "" && InputType == "InputType1") {
                                if (parseFloat(finalthick) == 0) {
                                    alert("Enter Proper Value For Final Thickness Of Column " + colname);
                                    return false;
                                }
                                else {
                                    alert("Enter Final Width For " + colname);
                                    return false;
                                }
                            }
                            else if ((finalwidth.toString() != "" && finalwidth.toString() != "NaN") && (finalthick.toString() != "" && finalthick.toString() != "NaN") && InputType == "InputType1") {
                                if (parseFloat(finalwidth) == 0) {
                                    alert("Enter Proper Value For Final Width Of Column " + colname);
                                    return false;
                                }
                                else if (parseFloat(finalthick) == 0) {
                                    alert("Enter Proper Value For Final Thickness Of Column " + colname);
                                    return false;
                                }
                            }

                            //////////////validation for final and initial value 
                            if ((width.toString() != "" && width.toString() != "NaN") && (finalwidth.toString() != "" && finalwidth.toString() != "NaN")) {
                                if (parseFloat(width) < parseFloat(finalwidth)) {
                                    alert(" Final Width Should Be Less Than Width Of Column " + colname);
                                    return false;
                                }
                            }
                            if ((thick.toString() != "" && thick.toString() != "NaN") && (finalthick.toString() != "" && finalthick.toString() != "NaN")) {
                                if (parseFloat(thick) < parseFloat(finalthick)) {
                                    alert(" Final Thickness Should Be Less Than Thickness Of Column " + colname);
                                    return false;
                                }
                            }
                            break;

                        case (InputType = "InputType2"):

                            ////////////// solid round InputType2 diameter validation
                            if ((initialdiameter.toString() != "" && initialdiameter.toString() != "NaN") && InputType == "InputType2") {
                                if (parseFloat(initialdiameter) == 0) {
                                    alert("Enter Proper Value For  Diameter Of Column " + colname);
                                    return false;
                                }

                            }
                            else {
                                //                                                 alert("Enter Value For Initial  Diameter Of Column "+ colname );
                                //                                                    return false;
                            }
                            if ((finaldiameter.toString() != "" && finaldiameter.toString() != "NaN") && InputType == "InputType2") {
                                if (parseFloat(finaldiameter) == 0) {
                                    alert("Enter Proper Value For Final  Diameter Of Column " + colname);
                                    return false;
                                }
                            }
                            else {
                                //                                                    alert("Enter  Value For Final  Diameter Of Column "+ colname );
                                //                                                    return false;
                                //                                                
                            }

                            ///////validation for initial and final 
                            if ((initialdiameter.toString() != "" && initialdiameter.toString() != "NaN") && (finaldiameter.toString() != "" && finaldiameter.toString() != "NaN") && InputType.toString() == "InputType2") {
                                if (parseFloat(initialdiameter) < parseFloat(finaldiameter)) {
                                    alert(" Diameter Should Be Greater Than Final Diameter Of Column " + colname);
                                    return false;
                                }
                            }

                            break;

                        case (InputType = "InputType3"):

                            //////////////////validation for hollow Round inputtype3 innerdiameter,outerdiameter
                            if ((innerdiameter.toString() != "" && innerdiameter.toString() != "NaN") && (outerdiameter == "") && InputType == "InputType3") {
                                if (parseFloat(innerdiameter) == 0) {
                                    alert("Enter Proper Value For Inner Diameter Of Column " + colname);
                                    return false;
                                }
                                else {
                                    alert("Enter Initial Outer Diameter for " + colname);
                                    return false;
                                }
                            }
                            else if ((outerdiameter.toString() != "" && outerdiameter.toString() != "NaN") && (innerdiameter == "") && InputType == "InputType3") {
                                if (parseFloat(outerdiameter) == 0) {
                                    alert("Enter Proper Value For Outer Diameter Of Column " + colname);
                                    return false;
                                }
                                else {
                                    alert("Enter Inner Diameter for " + colname);
                                    return false;
                                }
                            }
                            else if ((innerdiameter.toString() != "" && innerdiameter.toString() != "NaN") && (outerdiameter.toString() != "" && outerdiameter.toString() != "NaN") && InputType == "InputType3") {
                                if (parseFloat(innerdiameter) == 0) {
                                    alert("Enter Proper Value For Inner Diameter Of Column " + colname);
                                    return false;
                                }
                                else if (parseFloat(outerdiameter) == 0) {
                                    alert("Enter Proper Value For Outer Diameter Of Column " + colname);
                                    return false;

                                }
                            }
                            else if ((finalinnerdiameter.toString() != "" && finalinnerdiameter.toString() != "NaN") && (finalouterdiameter == "") && InputType == "InputType3") {
                                if (parseFloat(finalinnerdiameter) == 0) {
                                    alert("Enter Proper Value For Final Diameter Of Column " + colname);

                                    return false;
                                }
                                else {
                                    alert("Enter Final Outer Diameter for " + colname);
                                    return false;

                                }
                            }
                            else if ((finalouterdiameter.toString() != "" && finalouterdiameter.toString() != "NaN") && (finalinnerdiameter == "") && InputType == "InputType3") {
                                if (parseFloat(finalouterdiameter) == 0) {
                                    alert("Enter Proper Value For Final Outer Diameter Of Column " + colname);
                                    return false;
                                }
                                else {
                                    alert("Enter Final Inner Diameter for " + colname);
                                    return false;
                                }
                            }
                            else if ((finalinnerdiameter.toString() != "" && finalinnerdiameter.toString() != "NaN") && (finalouterdiameter.toString() != "" && finalouterdiameter.toString() != "NaN") && InputType == "InputType3") {
                                if (parseFloat(finalinnerdiameter) == 0) {
                                    alert("Enter Proper Value For Final Inner Diameter Of Column " + colname);
                                    return false;
                                }
                                else if (parseFloat(finalouterdiameter) == 0) {
                                    alert("Enter Proper Value For Final Outer Diameter Of Column " + colname);
                                    return false;

                                }
                            }

                            //////////////validation for final and initial value 
                            if ((innerdiameter.toString() != "" && innerdiameter.toString() != "NaN") && (finalinnerdiameter.toString() != "" && finalinnerdiameter.toString() != "NaN") && InputType.toString() == "InputType3") {
                                if (parseFloat(innerdiameter) < parseFloat(finalinnerdiameter)) {
                                    alert(" Final Inner Diameter Should Be Less Than Inner Diameter Of Column " + colname);
                                    return false;
                                }
                            }
                            if ((outerdiameter.toString() != "" && outerdiameter.toString() != "NaN") && (finalouterdiameter.toString() != "" && finalouterdiameter.toString() != "NaN") && InputType.toString() == "InputType3") {
                                if (parseFloat(outerdiameter) < parseFloat(finalouterdiameter)) {
                                    alert(" Final Outer Diameter Should Be Less Than Outer Diameter Of Column " + colname);
                                    return false;
                                }
                            }
                            break;

                        case (InputType = "InputType4"):
                            /////////// Other Types  InputType4 diameter validation
                            if ((initialCrosssectionalArea.toString() != "" && initialCrosssectionalArea.toString() != "NaN") && InputType == "InputType4") {
                                if (parseFloat(initialCrosssectionalArea) == 0) {
                                    alert("Enter Proper Value For Cross Sectional Area Of Column " + colname);
                                    return false;
                                }

                            }
                            else if ((finalcrosssectionalarea.toString() != "" && finalcrosssectionalarea.toString() != "NaN") && InputType == "InputType4") {
                                if (parseFloat(finalcrosssectionalarea) == 0) {
                                    alert("Enter Proper Value For Final Cross Sectional Area Of Column " + colname);
                                    return false;
                                }
                            }
                            if ((initialCrosssectionalArea.toString() == "" || initialCrosssectionalArea.toString() == "NaN") && (initialgaugelength.toString() != "" && initialgaugelength.toString() != "NaN") && InputType == "InputType4") {
                                alert("Enter Cross Sectional Area For Column " + colname);
                                return false;
                            }
                            //                                          else if((finalcrosssectionalarea.toString() =="" || finalcrosssectionalarea.toString() =="NaN" ) && (finalgaugelength.toString()!="" && finalgaugelength.toString()!="NaN"   ) && InputType=="InputType4")
                            //                                          {
                            //                                            alert("Enter Final Cross Sectional Area For Column " +colname);
                            //                                                    return false;
                            //                                          }
                            if ((initialCrosssectionalArea.toString() != "" && initialCrosssectionalArea.toString() != "NaN") && initialgaugelength == "" && InputType == "InputType4") {

                                alert("Enter Gauge Length For Column " + colname);
                                return false;
                            }
                            else if ((finalcrosssectionalarea.toString() != "" && finalcrosssectionalarea.toString() != "NaN") && finalgaugelength == "" && InputType == "InputType4") {

                                alert("Enter Final Gauge Length For Column " + colname);
                                return false;
                            }
                            if ((initialCrosssectionalArea.toString() != "" && initialCrosssectionalArea.toString() != "NaN") && (finalcrosssectionalarea.toString() != "" && finalcrosssectionalarea.toString() != "NaN")) {
                                if (parseFloat(initialCrosssectionalArea) < parseFloat(finalcrosssectionalarea)) {
                                    alert("Corss Sectional Area Should Be Greater Than Final Cross Sectional Area For Column " + colname);
                                    return false;
                                }
                            }

                            break;

                        case (InputType = "InputType5"):
                            /////////////////////validation for odd shape mass density length
                            if ((mass.toString() != "" && mass.toString() != "NaN") && (density == "" && oddlength == "") && InputType == "InputType5") {
                                if (parseFloat(mass) == 0) {
                                    alert("Enter Proper Value For Mass Of Column " + colname);
                                    return false;
                                }
                                else {
                                    alert("Enter Initial Density and Length for " + colname);
                                    return false;
                                }
                            }
                            else if ((density.toString() != "" && density.toString() != "NaN") && (mass == "" && oddlength == "") && InputType == "InputType5") {
                                if (parseFloat(density) == 0) {
                                    alert("Enter Proper Value For Density Of Column " + colname);
                                    return false;
                                }
                                else {
                                    alert("Enter Initial Mass and Length for " + colname);
                                    return false;

                                }
                            }
                            else if ((oddlength.toString() != "" && oddlength.toString() != "NaN") && (mass == "" && density == "") && InputType == "InputType5") {
                                if (parseFloat(oddlength) == 0) {
                                    alert("Enter Proper Value For Length Of Column " + colname);
                                    return false;
                                }
                                else {
                                    alert("Enter Initial Mass and Density for " + colname);
                                    return false;
                                }
                            }
                            else if (((mass.toString() != "" && mass.toString() != "NaN") && (density.toString() != "" && density.toString() != "NaN")) && oddlength == "" && InputType == "InputType5") {
                                if (parseFloat(mass) == 0) {
                                    alert("Enter Proper Value For Mass Of Column " + colname);
                                    return false;
                                }
                                else if (parseFloat(density) == 0) {
                                    alert("Enter Proper Value For Density Of Column " + colname);
                                    return false;
                                }
                                else {
                                    alert("Enter Length for " + colname);
                                    return false;
                                }
                            }
                            else if (((mass.toString() != "" && mass.toString() != "NaN") && (oddlength.toString() != "" && oddlength.toString() != "NaN")) && density == "" && InputType == "InputType5") {
                                if (parseFloat(mass) == 0) {
                                    alert("Enter Proper Value For Mass Of Column " + colname);
                                    return false;
                                }
                                else if (parseFloat(oddlength) == 0) {
                                    alert("Enter Proper Value For Length Of Column " + colname);
                                    return false;
                                }
                                else {
                                    alert("Enter Density for " + colname);
                                    return false;
                                }
                            }
                            else if (((density.toString() != "" && density.toString() != "NaN") && (oddlength.toString() != "" && oddlength.toString() != "NaN")) && mass == "" && InputType == "InputType5") {
                                if (parseFloat(density) == 0) {
                                    alert("Enter Proper Value For Density Of Column " + colname);
                                    return false;
                                }
                                else if (parseFloat(oddlength) == 0) {
                                    alert("Enter Proper Value For Length Of Column " + colname);
                                    return false;
                                }
                                else {
                                    alert("Enter Mass for " + colname);
                                    return false;
                                }
                            }
                            else if ((mass.toString() != "" && mass.toString() != "NaN") && (density.toString() != "" && density.toString() != "NaN") && (oddlength.toString() != "" && oddlength.toString() != "NaN") && InputType == "InputType5") {
                                if (parseFloat(mass) == 0) {
                                    alert("Enter Proper Value For Mass Of Column " + colname);
                                    return false;
                                }
                                else if (parseFloat(density) == 0) {
                                    alert("Enter Proper Value For Density Of Column " + colname);
                                    return false;
                                }
                                else if (parseFloat(oddlength) == 0) {
                                    alert("Enter Proper Value For Length Of Column " + colname);
                                    return false;
                                }
                            }
                            if ((finalmass.toString() != "" && finalmass.toString() != "NaN") && (finaldensity == "" && finaloddlength == "") && InputType == "InputType5") {
                                if (parseFloat(finalmass) == 0) {
                                    alert("Enter Proper Value For Final Mass Of Column " + colname);
                                    return false;
                                }
                                else {
                                    alert("Enter Final Density and Final Length for " + colname);
                                    return false;
                                }
                            }
                            else if ((finaldensity.toString() != "" && finaldensity.toString() != "NaN") && (finalmass == "" && finaloddlength == "") && InputType == "InputType5") {
                                if (parseFloat(finaldensity) == 0) {
                                    alert("Enter Proper Value For Density Of Column " + colname);
                                    return false;
                                }
                                else {
                                    alert("Enter Final Mass and Final Length for " + colname);
                                    return false;
                                }
                            }
                            else if ((finaloddlength.toString() != "" && finaloddlength.toString() != "NaN") && (finalmass == "" && finaldensity == "") && InputType == "InputType5") {
                                if (parseFloat(finaloddlength) == 0) {
                                    alert("Enter Proper Value For Final Length Of Column " + colname);
                                    return false;
                                }
                                else {
                                    alert("Enter Final Mass and Final Density for " + colname);
                                    return false;
                                }
                            }
                            else if (((finalmass.toString() != "" && finalmass.toString() != "NaN") && (finaldensity.toString() != "" && finaldensity.toString() != "NaN")) && finaloddlength == "" && InputType == "InputType5") {
                                if (parseFloat(finalmass) == 0) {
                                    alert("Enter Proper Value For Final Mass Of Column " + colname);
                                    return false;
                                }
                                else if (parseFloat(finaldensity) == 0) {
                                    alert("Enter Proper Value For Final Density Of Column " + colname);
                                    return false;
                                }
                                else {
                                    alert("Enter Final Length for " + colname);
                                    return false;
                                }
                            }
                            else if (((finalmass != "" && finalmass != "") && (finaloddlength != "" && finaloddlength != "NaN")) && finaldensity == "" && InputType == "InputType5") {
                                if (parseFloat(finalmass) == 0) {
                                    alert("Enter Proper Value For Final Mass Of Column " + colname);
                                    return false;
                                }
                                else if (parseFloat(finaloddlength) == 0) {
                                    alert("Enter Proper Value For Final Length Of Column " + colname);
                                    return false;
                                }
                                else {
                                    alert("Enter Final Density for " + colname);
                                    return false;
                                }
                            }
                            else if (((finaldensity != "" && finaldensity != "NaN") && (finaloddlength != "" && finaloddlength != "NaN")) && finalmass == 0 && InputType == "InputType5") {
                                if (parseFloat(finaldensity) == 0) {
                                    alert("Enter Proper Value For Final Density Of Column " + colname);
                                    return false;
                                }
                                else if (parseFloat(finaloddlength) == 0) {
                                    alert("Enter Proper Value For Final Length Of Column " + colname);
                                    return false;
                                }
                                else {
                                    alert("Enter Final Mass for " + colname);
                                    return false;
                                }
                            }
                            else if ((finalmass.toString() != "" && finalmass.toString() != "NaN") && (finaldensity.toString() != "" && finaldensity.toString() != "NaN") && (finaloddlength.toString() != "" && finaloddlength.toString() != "NaN") && InputType == "InputType5") {
                                if (parseFloat(finalmass) == 0) {
                                    alert("Enter Proper Value For Final Mass Of Column " + colname);
                                    return false;
                                }
                                else if (parseFloat(finaldensity) == 0) {
                                    alert("Enter Proper Value For Final Density Of Column " + colname);
                                    return false;
                                }
                                else if (parseFloat(finaloddlength) == 0) {
                                    alert("Enter Proper Value For Final Length Of Column " + colname);
                                    return false;
                                }
                            }
                            ///////validation for initial and final 
                            if ((oddlength.toString() != "" && oddlength.toString() != "NaN") && (finaloddlength.toString() != "" && finaloddlength.toString() != "NaN") && InputType.toString() == "InputType5") {
                                if (parseFloat(oddlength) > parseFloat(finaloddlength)) {
                                    alert(" Length Should Be Less Than Final Length Of Column " + colname);
                                    return false;
                                }
                            }
                            break;

                        case (InputType = "InputType6"):
                            break;

                        case (InputType = "InputType7"):
                            if ((thickness.toString() != "" && thickness.toString() != "NaN") && (breadth == "" && length == "") && InputType == "InputType7") {
                                if (parseFloat(thickness) == 0) {
                                    alert("Enter Proper Value For Thickness Of Column " + colname);
                                    return false;
                                }
                                else {
                                    alert("Enter Initial Breadth and Length for " + colname);
                                    return false;
                                }
                            }
                            else if ((breadth.toString() != "" && breadth.toString() != "NaN") && (thickness == "" && length == "") && InputType == "InputType7") {
                                if (parseFloat(breadth) == 0) {
                                    alert("Enter Proper Value For Breadth Of Column " + colname);
                                    return false;
                                }
                                else {
                                    alert("Enter Initial Thickness and Length for " + colname);
                                    return false;
                                }
                            }
                            else if ((length.toString() != "" && length.toString() != "NaN") && (thickness == "" && breadth == "") && InputType == "InputType7") {
                                if (parseFloat(length) == 0) {
                                    alert("Enter Proper Value For Length Of Column " + colname);
                                    return false;
                                }
                                else {
                                    alert("Enter Initial Thickness and Breadth for " + colname);
                                    return false;
                                }
                            }
                            else if (((thickness.toString() != "" && thickness.toString() != "NaN") && (breadth.toString() != "" && breadth.toString() != "NaN")) && length == "" && InputType == "InputType7") {
                                if (parseFloat(thickness) == 0) {
                                    alert("Enter Proper Value For Thickness Of Column " + colname);
                                    return false;
                                }
                                else if (parseFloat(breadth) == 0) {
                                    alert("Enter Proper Value For Breadth Of Column " + colname);
                                    return false;
                                }
                                else {
                                    alert("Enter Length for " + colname);
                                    return false;
                                }
                            }
                            else if (((thickness.toString() != "" && thickness.toString() != "NaN") && (length.toString() != "" && length.toString() != "NaN")) && breadth == "" && InputType == "InputType7") {
                                if (parseFloat(thickness) == 0) {
                                    alert("Enter Proper Value For Thickness Of Column " + colname);
                                    return false;
                                }
                                else if (parseFloat(length) == 0) {
                                    alert("Enter Proper Value For Length Of Column " + colname);
                                    return false;
                                }
                                else {
                                    alert("Enter Breadth for " + colname);
                                    return false;
                                }
                            }
                            else if (((breadth.toString() != "" && breadth.toString() != "NaN") && (length.toString() != "" && length.toString() != "NaN")) && thickness == "" && InputType == "InputType7") {

                                if (parseFloat(breadth) == 0) {
                                    alert("Enter Proper Value For Breadth Of Column " + colname);
                                    return false;
                                }
                                else if (parseFloat(length) == 0) {
                                    alert("Enter Proper Value For Length Of Column " + colname);
                                    return false;
                                }
                                else {
                                    alert("Enter Thickness for " + colname);

                                    return false;
                                }
                            }
                            else if ((thickness.toString() != "" && thickness.toString() != "NaN") && (breadth.toString() != "" && breadth.toString() != "NaN") && (length.toString() != "" && length.toString() != "NaN") && InputType == "InputType7") {
                                if (parseFloat(thickness) == 0) {
                                    alert("Enter Proper Value For Thickness Of Column " + colname);
                                    return false;
                                }
                                else if (parseFloat(breadth) == 0) {
                                    alert("Enter Proper Value For Breadth Column " + colname);
                                    return false;
                                }
                                else if (parseFloat(length) == 0) {
                                    alert("Enter Proper Value For Length Column " + colname);
                                    return false;
                                }
                            }

                            if ((finalthickness.toString() != "" && finalthickness.toString() != "NaN") && (finalbreadth == "" && finallength == "") && InputType == "InputType7") {
                                if (parseFloat(finalthickness) == 0) {
                                    alert("Enter Proper Value For Final Thickness Of Column " + colname);
                                    return false;
                                }
                                else {
                                    alert("Enter Final Breadth and Final Length for " + colname);
                                    return false;
                                }
                            }
                            else if ((finalbreadth.toString() != "" && finalbreadth.toString() != "NaN") && (finalthickness == "" && finallength == "") && InputType == "InputType7") {
                                if (parseFloat(finalbreadth) == 0) {
                                    alert("Enter Proper Value For Final Breadth Of Column " + colname);
                                    return false;
                                }
                                else {
                                    alert("Enter Final Thickness and Final Length for " + colname);

                                    return false;
                                }
                            }
                            else if ((finallength.toString() != "" && finallength.toString() != "NaN") && (finalthickness == "" && finalbreadth == "") && InputType == "InputType7") {
                                if (parseFloat(finallength) == 0) {
                                    alert("Enter Proper Value For Final Length  Of Column " + colname);
                                    return false;
                                }
                                else {
                                    alert("Enter Final Thickness and Final Breadth for " + colname);
                                    return false;
                                }
                            }
                            else if (((finalthickness.toString() != "" && finalthickness.toString() != "NaN") && (finalbreadth.toString() != "" && finalbreadth.toString() != "NaN")) && finallength == "" && InputType == "InputType7") {
                                if (parseFloat(finalthickness) == 0) {
                                    alert("Enter Proper Value For Final Thickness Of Column " + colname);
                                    return false;
                                }
                                else if (parseFloat(finalbreadth) == 0) {
                                    alert("Enter Proper Value For Final Breadth Of Column " + colname);
                                    return false;
                                }
                                else {
                                    alert("Enter  Final Length for " + colname);
                                    return false;
                                }
                            }
                            else if (((finalthickness.toString() != "" && finalthickness.toString() != "NaN") && (finallength.toString() != "" && finallength.toString() != "NaN")) && finalbreadth == "" && InputType == "InputType7") {
                                if (parseFloat(finalthickness) == 0) {
                                    alert("Enter Proper Value For Final Thickness Of Column " + colname);
                                    return false;
                                }
                                else if (parseFloat(finallength) == 0) {
                                    alert("Enter Proper Value For Final Length Of Column " + colname);
                                    return false;
                                }
                                else {
                                    alert("Enter  Final Breadth for " + colname);
                                    return false;
                                }
                            }
                            else if (((finalbreadth.toString() != "" && finalbreadth.toString() != "NaN") && (finallength.toString() != "" && finallength.toString() != "NaN")) && finalthickness == "" && InputType == "InputType7") {
                                if (parseFloat(finalbreadth) == 0) {
                                    alert("Enter Proper Value For Final Breadth Of Column " + colname);
                                    return false;
                                }
                                else if (parseFloat(finallength) == 0) {
                                    alert("Enter Proper Value For Final Length Of Column " + colname);
                                    return false;
                                }
                                else {
                                    alert("Enter  Final Thickness for " + colname);

                                    return false;
                                }
                            }
                            else if ((finalthickness.toString() != "" && finalthickness.toString() != "NaN") && (finalbreadth.toString() != "" && finalbreadth.toString() != "NaN") && (finallength.toString() != "" && finallength.toString() != "NaN") && InputType == "InputType7") {
                                if (parseFloat(finalthickness) == 0) {
                                    alert("Enter Proper Value For Final Thickness Of Column " + colname);
                                    return false;
                                }
                                else if (parseFloat(finalbreadth) == 0) {
                                    alert("Enter Proper Value For Final Breadth Column " + colname);
                                    return false;
                                }
                                if (parseFloat(finallength) == 0) {
                                    alert("Enter Proper Value For Final Length Column " + colname);
                                    return false;
                                }
                            }
                            /////validation for final and initial value 
                            if ((thickness.toString() != "" && thickness.toString() != "NaN") && (finalthickness.toString() != "" && finalthickness.toString() != "NaN")) {
                                if (parseFloat(thickness) < parseFloat(finalthickness)) {
                                    alert(" Final Thickness Should Be Less Than Thickness Of Column " + colname);
                                    return false;
                                }
                            }
                            if ((breadth.toString() != "" && breadth.toString() != "NaN") && (finalbreadth.toString() != "" && finalbreadth.toString() != "NaN")) {
                                if (parseFloat(breadth) < parseFloat(finalbreadth)) {
                                    alert(" Final Breadth Should Be Less Than Breadth Of Column " + colname);
                                    return false;
                                }
                            }
                            if ((length.toString() != "" && length.toString() != "NaN") && (finallength.toString() != "" && finallength.toString() != "NaN") && InputType.toString() == "InputType7") {
                                if (parseFloat(length) < parseFloat(finallength)) {
                                    alert(" Final Length Should Be Less Than Length Of Column " + colname);
                                    return false;
                                }
                            }
                            break;

                        case (InputType = "InputType8"):
                            ////////////////////// /validation for pipe
                            if ((pipethikness.toString() != "" && pipethikness.toString() != "NaN") && pipeouterdiameter == "" && InputType == "InputType8") {
                                if (parseFloat(pipethikness) == 0) {
                                    alert("Enter Proper Value For Thickness Of Column " + colname);
                                    return false;

                                }
                                else {
                                    alert("Enter Outer Diameter For " + colname);
                                    return false;
                                }
                            }
                            else if ((pipeouterdiameter.toString() != "" && pipeouterdiameter.toString() != "NaN") && pipethikness == "" && InputType == "InputType8") {
                                if (parseFloat(pipeouterdiameter) == 0) {
                                    alert("Enter Proper Value For Outer Diameter Of Column " + colname);
                                    return false;
                                }
                                else {
                                    alert("Enter Thickness For " + colname);
                                    return false;
                                }
                            }
                            else if ((pipethikness.toString() != "" && pipethikness.toString() != "NaN") && (pipeouterdiameter.toString() != "" && pipeouterdiameter.toString() != "NaN") && InputType == "InputType8") {
                                if (parseFloat(pipethikness) == 0) {
                                    alert("Enter Proper Value For Thickness Of Column " + colname);
                                    return false;
                                }
                                if (parseFloat(pipeouterdiameter) == 0) {
                                    alert("Enter Proper Value For Outer Diameter Of Column " + colname);
                                    return false;
                                }
                            }
                            if ((finalpipethickness.toString() != "") && finalpipeouterdiameter == "" && InputType == "InputType8") {
                                if (parseFloat(finalpipethickness) == 0) {
                                    alert("Enter Proper Value For Final Thickness Of Column " + colname);
                                    return false;
                                }
                                else {
                                    alert("Enter Final Outer Diameter For " + colname);
                                    return false;
                                }
                            }
                            else if ((finalpipeouterdiameter.toString() != "") && finalpipethickness == "" && InputType == "InputType8") {
                                if (parseFloat(finalpipeouterdiameter) == 0) {
                                    alert("Enter Proper Value For Final Outer Diameter Of Column " + colname);
                                    return false;
                                }
                                else {
                                    alert("Enter Final Thickness For " + colname);
                                    return false;
                                }
                            }
                            else if ((finalpipethickness.toString() != "" && finalpipethickness.toString() != "NaN") && (finalpipeouterdiameter.toString() != "" && finalpipeouterdiameter.toString() != "NaN") && InputType == "InputType8") {
                                if (parseFloat(finalpipethickness) == 0) {
                                    alert("Enter Proper Value For Final Thickness Of Column " + colname);
                                    return false;
                                }
                                if (parseFloat(finalpipeouterdiameter) == 0) {
                                    alert("Enter Proper Value For Final Outer Diameter Of Column " + colname);
                                    return false;
                                }
                            }

                            //////////////validation for final and initial value 
                            if ((pipethikness.toString() != "" && pipethikness.toString() != "NaN") && (finalpipethickness.toString() != "" && finalpipethickness.toString() != "NaN")) {
                                if (parseFloat(pipethikness) < parseFloat(finalpipethickness)) {
                                    alert(" Final Thickness Should Be Less Than Thickness Of Column " + colname);
                                    return false;
                                }
                            }
                            if ((pipeouterdiameter.toString() != "" && pipeouterdiameter.toString() != "NaN") && (finalpipeouterdiameter.toString() != "" && finalpipeouterdiameter.toString() != "NaN")) {
                                if (parseFloat(pipeouterdiameter) < parseFloat(finalpipeouterdiameter)) {
                                    alert(" Final Outer Diameter Should Be Less Than Outer Diameter Of Column " + colname);
                                    return false;
                                }
                            }
                            break;

                        case (InputType = "InputType9"):
                            break;

                        case (InputType = "InputType10"):
                            /////////////Validation for ///// ///Tubular Product InputType10 TPWidth,TpThick,TpOuterDiameter
                            if ((tpwidth.toString() != "" && tpwidth.toString() != "NaN") && (tpthick == "" && tpouterdiameter == "") && InputType == "InputType10") {
                                if (parseFloat(tpwidth) == 0) {
                                    alert("Enter Proper Value For Width Of Column " + colname);
                                    return false;
                                }
                                else {
                                    alert("Enter Initial Thickness and Outer Diameter for " + colname);
                                    return false;
                                }
                            }
                            else if ((tpthick.toString() != "" && tpthick.toString() != "NaN") && (tpwidth == "" && tpouterdiameter == "") && InputType == "InputType10") {
                                if (parseFloat(tpthick) == 0) {
                                    alert("Enter Proper Value For Thickness Of Column " + colname);
                                    return false;
                                }
                                else {
                                    alert("Enter Initial Width and Outer Diameter for " + colname);
                                    return false;
                                }
                            }
                            else if ((tpouterdiameter.toString() != "" && tpouterdiameter.toString() != "NaN") && (tpwidth == "" && tpthick == "") && InputType == "InputType10") {
                                if (parseFloat(tpouterdiameter) == 0) {
                                    alert("Enter Proper Value For Outer Diameter Of Column " + colname);
                                    return false;
                                }
                                else {
                                    alert("Enter Initial Width and Thickness for " + colname);
                                    return false;
                                }
                            }
                            else if (((tpwidth.toString() != "" && tpwidth.toString() != "NaN") && (tpthick.toString() != "" && tpthick.toString() != "NaN")) && tpouterdiameter == "" && InputType == "InputType10") {
                                if (parseFloat(tpwidth) == 0) {
                                    alert("Enter Proper Value For Width Of Column " + colname);
                                    return false;
                                }
                                else if (parseFloat(tpthick) == 0) {
                                    alert("Enter Proper Value For Thickness Of Column " + colname);
                                    return false;
                                }
                                else {
                                    alert("Enter Outer Diameter for " + colname);
                                    return false;
                                }
                            }
                            else if (((tpwidth.toString() != "" && tpwidth.toString() != "NaN") && (tpouterdiameter.toString() != "" && tpouterdiameter.toString() != "NaN")) && tpthick == "" && InputType == "InputType10") {
                                if (parseFloat(tpwidth) == 0) {
                                    alert("Enter Proper Value For Width Of Column " + colname);
                                    return false;
                                }
                                else if (parseFloat(tpouterdiameter) == 0) {
                                    alert("Enter Proper Value For Outer Diameter Of Column " + colname);
                                    return false;
                                }
                                else {
                                    alert("Enter Thickness for " + colname);
                                    return false;
                                }
                            }
                            else if (((tpthick.toString() != "" && tpthick.toString() != "NaN") && (tpouterdiameter.toString() != "" && tpouterdiameter.toString() != "NaN")) && tpwidth == "" && InputType == "InputType10") {
                                if (parseFloat(tpthick) == 0) {
                                    alert("Enter Proper Value For Thickness Of Column " + colname);
                                    return false;
                                }
                                else if (parseFloat(tpouterdiameter) == 0) {
                                    alert("Enter Proper Value For Outer Diameter Of Column " + colname);
                                    return false;
                                }
                                else {
                                    alert("Enter Width for " + colname);
                                    return false;
                                }
                            }
                            else if ((tpwidth.toString() != "" && tpwidth.toString() != "NaN") && (tpthick.toString() != "" && tpthick.toString() != "NaN") && (tpouterdiameter.toString() != "" && tpouterdiameter.toString() != "NaN") && InputType == "InputType10") {
                                if (parseFloat(tpwidth) == 0) {
                                    alert("Enter Proper Value For Width Of Column " + colname);
                                    return false;
                                }
                                else if (parseFloat(tpthick) == 0) {
                                    alert("Enter Proper Value For Thickness Of Column " + colname);
                                    return false;
                                }
                                else if (parseFloat(tpouterdiameter) == 0) {
                                    alert("Enter Proper Value For Outer Diameter Of Column " + colname);
                                    return false;
                                }

                            }
                            else if ((finaltpwidth.toString() != "" && finaltpwidth.toString() != "NaN") && (finaltpthickness == "" && finaltpouterdiameter == "") && InputType == "InputType10") {
                                if (parseFloat(finaltpwidth) == 0) {
                                    alert("Enter Proper Value For Final Width Of Column " + colname);
                                    return false;
                                }
                                else {
                                    alert("Enter Final Thickness and Final Outer Diameter for " + colname);
                                    return false;
                                }
                            }
                            else if ((finaltpthickness.toString() != "" && finaltpthickness.toString() != "NaN") && (finaltpwidth == "" && finaltpouterdiameter == "") && InputType == "InputType10") {
                                if (parseFloat(finaltpthickness) == 0) {
                                    alert("Enter Proper Value For Final Thickness Of Column " + colname);
                                    return false;
                                }
                                else {
                                    alert("Enter Final Width and Final Outer Diameter for " + colname);
                                    return false;

                                }
                            }
                            else if ((finaltpouterdiameter.toString() != "" && finaltpouterdiameter.toString() != "NaN") && (finaltpwidth == "" && finaltpthickness == "") && InputType == "InputType10") {
                                if (parseFloat(finaltpouterdiameter) == 0) {
                                    alert("Enter Proper Value For Final Outer Diameter Of Column " + colname);
                                    return false;
                                }
                                else {
                                    alert("Enter Final Width and Final Thickness for " + colname);
                                    return false;
                                }
                            }
                            else if (((finaltpwidth.toString() != "" && finaltpwidth.toString() != "NaN") && (finaltpthickness.toString() != "" && finaltpthickness.toString() != "NaN")) && finaltpouterdiameter == "" && InputType == "InputType10") {
                                if (parseFloat(finaltpwidth) == 0) {
                                    alert("Enter Proper Value For Final Width Of Column " + colname);
                                    return false;
                                }
                                else if (parseFloat(finaltpthickness) == 0) {
                                    alert("Enter Proper Value For Final Thickness Of Column " + colname);
                                    return false;
                                }
                                else {
                                    alert("Enter  Final Outer Diameter for " + colname);
                                    return false;
                                }
                            }
                            else if (((finaltpwidth.toString() != "" && finaltpwidth.toString() != "NaN") && (finaltpouterdiameter.toString() != "" && finaltpouterdiameter.toString() != "NaN")) && finaltpthickness == "" && InputType == "InputType10") {
                                if (parseFloat(finaltpwidth) == 0) {
                                    alert("Enter Proper Value For Final Width Of Column " + colname);
                                    return false;
                                }
                                else if (parseFloat(finaltpouterdiameter) == 0) {
                                    alert("Enter Proper Value For Final Outer Diameter Of Column " + colname);

                                }
                                else {
                                    alert("Enter  Final Thickness for " + colname);
                                    return false;
                                }
                            }
                            else if (((finaltpthickness.toString() != "" && finaltpthickness.toString() != "NaN") && (finaltpouterdiameter.toString() != "" && finaltpouterdiameter.toString() != "NaN")) && finaltpwidth == "" && InputType == "InputType10") {
                                if (parseFloat(finaltpthickness) == 0) {
                                    alert("Enter Proper Value For Final Thickness Of Column " + colname);
                                    return false;
                                }
                                else if (parseFloat(finaltpouterdiameter) == 0) {
                                    alert("Enter Proper Value For Final Outer Diameter Of Column " + colname);
                                    return false;
                                }
                                else {
                                    alert("Enter  Final Width for " + colname);
                                    return false;
                                }
                            }
                            else if ((finaltpwidth.toString() != "" && finaltpwidth.toString() != "NaN") && (finaltpthickness.toString() != "" && finaltpthickness.toString() != "NaN") && (finaltpouterdiameter.toString() != "" && finaltpouterdiameter.toString() != "NaN") && InputType == "InputType10") {
                                if (parseFloat(finaltpwidth) == 0) {
                                    alert("Enter Proper Value For Final Width Of Column " + colname);
                                    return false;
                                }
                                else if (parseFloat(finaltpthickness) == 0) {
                                    alert("Enter Proper Value For Final Thickness Of Column " + colname);
                                    return false;
                                }
                                else if (parseFloat(finaltpouterdiameter) == 0) {
                                    alert("Enter Proper Value For Final Outer Diameter Of Column " + colname);
                                    return false;
                                }

                            }

                            break;
                    }









                    //////////////// if Area is Zero 
                    if (initialarea.toString() != "" && initialarea.toString() != "NaN") {
                        if (parseFloat(initialarea) == 0) {
                            alert("Enter Proper Area For Column " + colname)
                            return false;
                        }
                    }
                    if (finalarea.toString() != "" && finalarea.toString() != "NaN") {
                        if (parseFloat(finalarea) == 0) {
                            alert("Enter Proper Final Area For Column " + colname)
                            return false;
                        }
                    }
                    if (initialgaugelength.toString() != "" && initialgaugelength.toString() != "NaN") {
                        if (parseFloat(initialgaugelength) == 0) {
                            alert("Enter Proper Gauge Length For Column " + colname)
                            return false;
                        }
                    }
                    if (finalgaugelength.toString() != "" && finalgaugelength.toString() != "NaN") {
                        if (parseFloat(finalgaugelength) == 0) {
                            alert("Enter Proper Final Gauge Length For Column " + colname)
                            return false;
                        }
                    }
                    /////////////////////validation for initial gauge length////////
                    if (initialarea.toString() != "" && initialarea.toString() != "NaN" && initialgaugelength == "" && initialarea != 0) {
                        alert("Enter Gauge Length For Column " + colname);
                        return false;
                    }
                    //////////                  if(finalarea  !=0 && finalarea.toString()  !="" &&   finalarea.toString() !="NaN" && finalgaugelength  ==""  )
                    //////////                   {
                    //////////                    alert("Enter Final Gauge Length For Column " +colname);
                    //////////                     return false;
                    //////////                   }
                    //                    if(percentageelongation ==""  )
                    //                     {
                    //                        alert("Enter Percentage Elongation For Column" +colname);
                    //                        return false;
                    //                     }
                    //                      if(reductionarea  ==""  )
                    //                     {
                    //                        alert("Enter Reduction Area For Column" +colname);
                    //                        return false;
                    //                     }
                    /////////Compare initial and final area
                    if ((initialarea.toString() != "" && initialarea.toString() != "NaN") && (finalarea.toString() != "" && finalarea.toString() != "NaN")) {
                        if (initialarea < finalarea) {
                            alert(" Area Should Be Greater Than Final Area");
                            return false;
                        }
                    }

                    /////////Compare Initial gauge Length And final gauge length
                    if ((initialgaugelength.toString() != "" && initialgaugelength.toString() != "NaN") && (finalgaugelength.toString() != "" && finalgaugelength.toString() != "NaN")) {
                        if (parseFloat(finalgaugelength) < parseFloat(initialgaugelength)) {
                            alert(" Final Gauge Length Should Be Greater Than Gauge Length");
                            return false;
                        }
                    }




                    thickness = "", breadth = "", length = "", finalthickness = "", finalbreadth = "", finallength = "";
                    thick = "", width = "", finalwidth = "", finalthick = "";
                    mass = "", density = "", oddlength = "", finalmass = "", finaldensity = "", finaloddlength = "";
                    pipethikness = "", pipeouterdiameter = "", finalpipethickness = "", finalpipeouterdiameter = "";
                    innerdiameter = "", outerdiameter = "", finalinnerdiameter = "", finalouterdiameter = "";
                    tpwidth = "", tpthick = "", tpouterdiameter = "", finaltpwidth = "", finaltpthickness = "", finaltpouterdiameter = "";
                    initialdiameter = "", finaldiameter = "";
                    initialCrosssectionalArea = "", finalcrosssectionalarea = "";
                    initialarea = "", finalarea = "", initialgaugelength = "", finalgaugelength = "";
                    percentageelongation = "", reductionarea = "";

                }
                c = c + 1;

            }


        }
        
        function RemarkValidation(txtresult, txtremark) {

            var grid = document.getElementById("<%= gdvItem.ClientID%>");
            var InputType = "", datatype = "";
            var txtval = txtresult.value;
            var txtdata = txtremark.value;
            if (parseInt(txtdata) == 1) {
                if (IsNumOnly(txtval) == false) {
                    alert('Enter Numeric Value Only');
                    txtresult.value = "";
                    return false;
                }
            }
            else if (parseInt(txtdata) == 2) {
                if (IsCharOnly(txtval) == false) {

                    alert('Enter Character Only');
                    txtresult.value = "";
                    return false;
                }
            }

            if (document.getElementById("ctl00_ContentPlaceHolder2_hdnspecimeninputtype").value != "")
                InputType = document.getElementById("ctl00_ContentPlaceHolder2_hdnspecimeninputtype").value;
                
          //<Shreya>    
            //c = 4 
            //for taking the values of paraname.(As told by Shardul Sir)     
            var c = 5; 
         //</Shreya>
            
            var Remark = "";
            var flag = 0;
            var thickness = 0, breadth = 0, length = 0, finalthickness = 0, finalbreadth = 0, finallength = 0;
            var cloumn = grid.rows[0].cells;
            
            //<Shreya>
            //colcnt = parseInt(cloumn.length) - 5  //for loop run more than one time 
            //This is to check Validation of remark when we enter result. it is done to run for loop oly one time.
            var colcnt = parseInt(cloumn.length) - 6;
            //Date: 12 Aug 2011
            //</Shreya>
            
            var min, max;
            for (var k = 0; k < colcnt; k++) {
                if (grid.rows[0].cells[c] != null && grid.rows[0].cells[c] != "undefined") {
                    var paraname_withoutunit = "";
                    var colname = grid.rows[0].cells[c].innerText;
                    for (var i = 1; i < grid.rows.length; i++) {
                        var cell1 = grid.rows[i].cells;
                        cell = grid.rows[i].cells[c];
                        if (cell != null && cell.toString() != "undefined") {
                            for (j = 0; j < cell.childNodes.length; j++) {
                            
                            //<Shreya>
                               //This is hard coded this change is to take parameter name in paraname_withoutunit variable.(As told by Shardul Sir)
                                //paraname_withoutunit = cell1[1].childNodes[0].value;
                                //paraname_withoutunit = paraname_withoutunit.substring(0, paraname_withoutunit.lastIndexOf('('));
                                //paraname_withoutunit = RTrim(paraname_withoutunit);
                                
                                paraname_withoutunit = cell1[1].childNodes[0].innerHTML;
                            //</Shreya>    
                                if (cell.childNodes[j].type == "text") {
                                    min = null; max = null;
                                    if (paraname_withoutunit != "Cross Sectional Area" && paraname_withoutunit != "Final Cross Sectional Area" && paraname_withoutunit != "Final Cross Sectional Area" && paraname_withoutunit != "Area" && paraname_withoutunit != "Final Area" && paraname_withoutunit != "Width" && paraname_withoutunit != "Final Width" && paraname_withoutunit != "Thickness" && paraname_withoutunit != "Final Thickness" && paraname_withoutunit != "Length" && paraname_withoutunit != "Final Length" && paraname_withoutunit != "Breadth" && paraname_withoutunit != "Final Breadth" && paraname_withoutunit != "Inner Diameter" && paraname_withoutunit != "Final Inner Diameter" && paraname_withoutunit != "Outer Diameter" && paraname_withoutunit != "Final Outer Diameter" && paraname_withoutunit != "Diameter" && paraname_withoutunit != "Final Diameter" && paraname_withoutunit != "Mass" && paraname_withoutunit != "Final Mass" && paraname_withoutunit != "Density" && paraname_withoutunit != "Final Density" && paraname_withoutunit != "Gauge Length" && paraname_withoutunit != "Final Gauge Length")//&& paraname_withoutunit !="Ultimate Load" && paraname_withoutunit !="Yield Load" && paraname_withoutunit !="1% Proof Load" && paraname_withoutunit !="0.2% Proof Load"  //////////&& paraname_withoutunit !="U.T.S." && paraname_withoutunit !="Yield Strength" && paraname_withoutunit !="1% Proof Stress" && paraname_withoutunit !="0.2% Proof Stress"
                                    {
                                        if (cell1[3].childNodes[0].value != "" && cell1[3].childNodes[0].value != "--")
                                            min = parseFloat(cell1[3].childNodes[0].value);

                                        if (cell1[4].childNodes[0].value != "" && cell1[4].childNodes[0].value != "--")
                                            max = parseFloat(cell1[4].childNodes[0].value);
                                        if (min != null && max !== null && min.toString() != "undefined" && max.toString() != "undefined" && min.toString() != "NaN" && max.toString() !== "NaN") {
                                            if (cell.childNodes[j].value != "") {
                                                var result = cell.childNodes[j].value;

                                                if (result.toString() != "undefined" && result.toString() != "NaN") {

                                                    if (parseFloat(result) >= parseFloat(min) && parseFloat(result) <= parseFloat(max) && flag == 0) {
                                                        Remark = 'Satisfactory';
                                                        flag = 0;
                                                    }
                                                    else {
                                                        flag = 1;
                                                        Remark = 'Unsatisfactory';

                                                    }

                                                }

                                            }
                                        } // if min max not null
                                        ///////////////// 29 may javascript code  added
                                        if (min == null && max !== null) {
                                            if (cell.childNodes[j].value != "") {
                                                var result = cell.childNodes[j].value;
                                                if (result.toString() != "undefined" && result.toString() != "NaN") {
                                                    if (parseFloat(result) <= parseFloat(max) && flag == 0) {
                                                        Remark = 'Satisfactory';
                                                        flag = 0;
                                                    }
                                                    else {
                                                        flag = 1;
                                                        Remark = 'Unsatisfactory';

                                                    }

                                                }

                                            }
                                        }
                                        else if (min != null && max == null) {
                                            if (cell.childNodes[j].value != "") {
                                                var result = cell.childNodes[j].value;
                                                if (result.toString() != "undefined" && result.toString() != "NaN") {
                                                    if (parseFloat(result) >= parseFloat(min) && flag == 0) {
                                                        Remark = 'Satisfactory';
                                                        flag = 0;
                                                    }
                                                    else {
                                                        flag = 1;
                                                        Remark = 'Unsatisfactory';

                                                    }

                                                }

                                            }
                                        }
                                        //////////////////////// 29 may 2011
                                    }




                                }
                            }
                        }
                    }
                    //  alert("flag" +flag );                                

                    c = c + 1;
                }


            }

            document.getElementById("<%=txtsampleremark.ClientID%>").value = Remark;

        }
        ////////---------------------------------------------------------------------------------------
        function GetInitArea(txt, paraname, grv, index, txtremark) {
        
            var InputType = "";
            if (document.getElementById("ctl00_ContentPlaceHolder2_hdnspecimeninputtype").value != "")
                InputType = document.getElementById("ctl00_ContentPlaceHolder2_hdnspecimeninputtype").value;
            var txtname = "" + grv + "_" + txt.id + "";
            var txtdata = txtremark.value;
            var txtval = txt.value;
            if (parseInt(txtdata) == 1) {
                if (IsNumOnly(txtval) == false) {
                    alert('Enter Numeric Value Only');
                    txt.value = "";
                    return false;
                }
            }
            else if (parseInt(txtdata) == 2) {
                if (IsCharOnly(txtval) == false) {

                    alert('Enter Character Only');
                    txt.value = "";
                    return false;
                }
            }

            var grid = document.getElementById("<%= gdvItem.ClientID%>");

            if (document.getElementById("ctl00_ContentPlaceHolder2_hdninitgaugelength").value != "")
                document.getElementById("ctl00_ContentPlaceHolder2_hdninitgaugelength").value = "";
            if (parseInt(document.getElementById("ctl00_ContentPlaceHolder2_hdnindex").value) != parseInt(index)) {
                document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = "";
                document.getElementById("ctl00_ContentPlaceHolder2_hdnwidth").value = "";
                document.getElementById("ctl00_ContentPlaceHolder2_hdnthickness").value = "";
                document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalwidth").value = "";
                document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalthickness").value = "";
                document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = "";
                document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value = "";
                document.getElementById("ctl00_ContentPlaceHolder2_hdninitgaugelength").value = "";
                document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalgaugelength").value = "";

                document.getElementById("ctl00_ContentPlaceHolder2_hdninnerdiameter").value = "";
                document.getElementById("ctl00_ContentPlaceHolder2_hdnouterdiameter").value = "";
                document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalinnerdiameter").value = "";
                document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalouterdiameter").value = "";

                document.getElementById("ctl00_ContentPlaceHolder2_hdntpwidth").value = "";
                document.getElementById("ctl00_ContentPlaceHolder2_hdntpthickness").value = "";
                document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaltpwidth").value = "";
                document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaltpthickness").value = "";
                document.getElementById("ctl00_ContentPlaceHolder2_hdntpouterdiameter").value = "";
                document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaltpouterdiameter").value = "";
                ////odd shape
                document.getElementById("ctl00_ContentPlaceHolder2_hdnmass").value = "";
                document.getElementById("ctl00_ContentPlaceHolder2_hdndensity").value = "";
                document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalmass").value = "";
                document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaldensity").value = "";
                document.getElementById("ctl00_ContentPlaceHolder2_hdnoddlength").value = "";
                document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaloddlength").value = "";


                ///for pipe
                document.getElementById("ctl00_ContentPlaceHolder2_hdnpipethickness").value = "";
                document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalpipethickness").value = "";
                document.getElementById("ctl00_ContentPlaceHolder2_hdnpipeouterdiameter").value = "";
                document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalpipeouterdiameter").value = "";

                //// hollow rectangle
                document.getElementById("ctl00_ContentPlaceHolder2_hdnlength").value = "";
                document.getElementById("ctl00_ContentPlaceHolder2_hdnfinallength").value = "";
                document.getElementById("ctl00_ContentPlaceHolder2_hdnbreadth").value = "";
                document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalbreadth").value = "";
                document.getElementById("ctl00_ContentPlaceHolder2_hdnthick").value = "";
                document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalthick").value = "";


                /////// for solid round
                document.getElementById("ctl00_ContentPlaceHolder2_hdninitdiameter").value = "";
                document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaldiameter").value = "";

                document.getElementById("ctl00_ContentPlaceHolder2_hdncornerradius").value = "";
                document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalcornerradius").value = "";
                document.getElementById("ctl00_ContentPlaceHolder2_hdncrosssectionalarea").value = "";
                document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalcrosssectionalarea").value = "";

            }
            var CaseType = "";
            var paraname_withoutunit = "", temppara = "";
            var Uload = 0, YLoad = 0, PLoad = 0, SLoad = 0;
            for (var i = 1; i < grid.rows.length; i++) {
                var str = 0;
                var cell1 = grid.rows[i].cells;

                cell = grid.rows[i].cells[index];
                if (cell != "undefined" && cell != null) {
                    for (j = 0; j < cell.childNodes.length; j++) {
                        if (cell.childNodes[j].type == "text") {
                        
                        //<Shreya>
                           //This is hard coded this change is to take parameter name in paraname_withoutunit variable.(As told by Shardul Sir)
                           //temppara = cell1[1].childNodes[0].value;
                           //paraname_withoutunit = temppara.substring(0, temppara.lastIndexOf('('));
                           //paraname_withoutunit = RTrim(paraname_withoutunit);
                           paraname_withoutunit = cell1[1].childNodes[0].innerHTML;
                        //</Shreya>
                        
                            if (cell.childNodes[j].value.toString() != "" && cell.childNodes[j].value.toString() != "NaN") {
                                if (parseFloat(cell.childNodes[j].value) == 0) {
                                    alert("Enter Proper Value " + paraname_withoutunit);
                                    cell.childNodes[j].value = "";
                                    if (document.getElementById("" + cell.childNodes[j].id + "").disabled == false)
                                        document.getElementById("" + cell.childNodes[j].id + "").focus();
                                }
                            }

                            document.getElementById("ctl00_ContentPlaceHolder2_hdninitgaugelength").value = "";
                            switch (InputType) {
                                case (InputType = "InputType1"):
                                    if (cell.childNodes[j].value != "" && paraname_withoutunit == "Width")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnwidth").value = parseFloat(cell.childNodes[j].value);
                                    else if (cell.childNodes[j].value == "" && paraname_withoutunit == "Width") {
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnwidth").value = "";
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = "";
                                    }
                                    else if (cell.childNodes[j].value != "" && paraname_withoutunit == "Thickness")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnthickness").value = parseFloat(cell.childNodes[j].value);
                                    else if (cell.childNodes[j].value == "" && paraname_withoutunit == "Thickness")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnthickness").value = "";
                                    else if (cell.childNodes[j].value != "" && paraname_withoutunit == "Final Width")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalwidth").value = parseFloat(cell.childNodes[j].value);
                                    else if (cell.childNodes[j].value == "" && paraname_withoutunit == "Final Width")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalwidth").value = "";
                                    else if (cell.childNodes[j].value != "" && paraname_withoutunit == "Final Thickness")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalthickness").value = parseFloat(cell.childNodes[j].value);
                                    else if (cell.childNodes[j].value == "" && paraname_withoutunit == "Final Thickness")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalthickness").value = "";
                                    break;
                                case (InputType = "InputType2"):
                                    if (cell.childNodes[j].value != "" && paraname_withoutunit == "Diameter")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdninitdiameter").value = parseFloat(cell.childNodes[j].value);
                                    else if (cell.childNodes[j].value == "" && paraname_withoutunit == "Diameter")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdninitdiameter").value = "";
                                    else if (cell.childNodes[j].value != "" && paraname_withoutunit == "Final Diameter")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaldiameter").value = parseFloat(cell.childNodes[j].value);
                                    else if (cell.childNodes[j].value == "" && paraname_withoutunit == "Final Diameter")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaldiameter").value = "";

                                    break;
                                case (InputType = "InputType3"):
                                    if (cell.childNodes[j].value != "" && paraname_withoutunit == "Inner Diameter")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdninnerdiameter").value = parseFloat(cell.childNodes[j].value);
                                    else if (cell.childNodes[j].value == "" && paraname_withoutunit == "Inner Diameter")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdninnerdiameter").value = "";
                                    else if (cell.childNodes[j].value != "" && paraname_withoutunit == "Outer Diameter")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnouterdiameter").value = parseFloat(cell.childNodes[j].value);
                                    else if (cell.childNodes[j].value == "" && paraname_withoutunit == "Outer Diameter")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnouterdiameter").value = "";
                                    else if (cell.childNodes[j].value != "" && paraname_withoutunit == "Final Inner Diameter")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalinnerdiameter").value = parseFloat(cell.childNodes[j].value);
                                    else if (cell.childNodes[j].value == "" && paraname_withoutunit == "Final Inner Diameter")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalinnerdiameter").value = "";
                                    else if (cell.childNodes[j].value != "" && paraname_withoutunit == "Final Outer Diameter")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalouterdiameter").value = parseFloat(cell.childNodes[j].value);
                                    else if (cell.childNodes[j].value == "" && paraname_withoutunit == "Final Outer Diameter")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalouterdiameter").value = "";
                                    break;
                                case (InputType = "InputType4"):
                                    if (cell.childNodes[j].value != "" && paraname_withoutunit == "Cross Sectional Area")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdncrosssectionalarea").value = parseFloat(cell.childNodes[j].value);
                                    else if (cell.childNodes[j].value == "" && paraname_withoutunit == "Cross Sectional Area")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdncrosssectionalarea").value = "";
                                    else if (cell.childNodes[j].value != "" && paraname_withoutunit == "Final Cross Sectional Area")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalcrosssectionalarea").value = parseFloat(cell.childNodes[j].value);
                                    else if (cell.childNodes[j].value == "" && paraname_withoutunit == "Final Cross Sectional Area")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalcrosssectionalarea").value = "";
                                    break;
                                case (InputType = "InputType5"):
                                    if (cell.childNodes[j].value != "" && paraname_withoutunit == "Mass")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnmass").value = parseFloat(cell.childNodes[j].value);
                                    else if (cell.childNodes[j].value == "" && paraname_withoutunit == "Mass")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnmass").value = "";
                                    else if (cell.childNodes[j].value != "" && paraname_withoutunit == "Density")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdndensity").value = parseFloat(cell.childNodes[j].value);
                                    else if (cell.childNodes[j].value == "" && paraname_withoutunit == "Density")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdndensity").value = "";
                                    else if (cell.childNodes[j].value != "" && paraname_withoutunit == "Final Mass")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalmass").value = parseFloat(cell.childNodes[j].value);
                                    else if (cell.childNodes[j].value == "" && paraname_withoutunit == "Final Mass")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalmass").value == "";
                                    else if (cell.childNodes[j].value != "" && paraname_withoutunit == "Final Density")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaldensity").value = parseFloat(cell.childNodes[j].value);
                                    else if (cell.childNodes[j].value == "" && paraname_withoutunit == "Final Density")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaldensity").value == "";
                                    else if (cell.childNodes[j].value != "" && paraname_withoutunit == "Length")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnoddlength").value = parseFloat(cell.childNodes[j].value);
                                    else if (cell.childNodes[j].value == "" && paraname_withoutunit == "Length")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnoddlength").value = "";
                                    else if (cell.childNodes[j].value != "" && paraname_withoutunit == "Final Length")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaloddlength").value = parseFloat(cell.childNodes[j].value);
                                    else if (cell.childNodes[j].value == "" && paraname_withoutunit == "Final Length")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaloddlength").value = "";
                                    break;
                                case (InputType = "InputType6"):
                                    break;
                                case (InputType = "InputType7"):
                                    if (cell.childNodes[j].value != "" && paraname_withoutunit == "Breadth")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnbreadth").value = parseFloat(cell.childNodes[j].value);
                                    else if (cell.childNodes[j].value == "" && paraname_withoutunit == "Breadth")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnbreadth").value = "";
                                    else if (cell.childNodes[j].value != "" && paraname_withoutunit == "Length")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnlength").value = parseFloat(cell.childNodes[j].value);
                                    else if (cell.childNodes[j].value == "" && paraname_withoutunit == "Length")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnlength").value = "";
                                    else if (cell.childNodes[j].value != "" && paraname_withoutunit == "Final Breadth")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalbreadth").value = parseFloat(cell.childNodes[j].value);
                                    else if (cell.childNodes[j].value == "" && paraname_withoutunit == "Final Breadth")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalbreadth").value = "";
                                    else if (cell.childNodes[j].value != "" && paraname_withoutunit == "Final Length")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnfinallength").value = parseFloat(cell.childNodes[j].value);
                                    else if (cell.childNodes[j].value == "" && paraname_withoutunit == "Final Length")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnfinallength").value = "";
                                    else if (cell.childNodes[j].value != "" && paraname_withoutunit == "Thickness")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnthick").value = parseFloat(cell.childNodes[j].value);
                                    else if (cell.childNodes[j].value == "" && paraname_withoutunit == "Thickness")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnthick").value = "";
                                    else if (cell.childNodes[j].value != "" && paraname_withoutunit == "Final Thickness")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalthick").value = parseFloat(cell.childNodes[j].value);
                                    else if (cell.childNodes[j].value == "" && paraname_withoutunit == "Final Thickness")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalthick").value = "";
                                    break;
                                case (InputType = "InputType8"):
                                    if (cell.childNodes[j].value != "" && paraname_withoutunit == "Thickness")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnpipethickness").value = parseFloat(cell.childNodes[j].value);
                                    else if (cell.childNodes[j].value == "" && paraname_withoutunit == "Thickness") {
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnpipethickness").value = "";
                                    }

                                    else if (cell.childNodes[j].value != "" && paraname_withoutunit == "Final Thickness")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalpipethickness").value = parseFloat(cell.childNodes[j].value);
                                    else if (cell.childNodes[j].value == "" && paraname_withoutunit == "Final Thickness") {
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalpipethickness").value = "";

                                    }
                                    else if (cell.childNodes[j].value != "" && paraname_withoutunit == "Outer Diameter")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnpipeouterdiameter").value = parseFloat(cell.childNodes[j].value);
                                    else if (cell.childNodes[j].value == "" && paraname_withoutunit == "Outer Diameter") {
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnpipeouterdiameter").value = "";
                                    }
                                    else if (cell.childNodes[j].value != "" && paraname_withoutunit == "Final Outer Diameter")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalpipeouterdiameter").value = parseFloat(cell.childNodes[j].value);
                                    else if (cell.childNodes[j].value == "" && paraname_withoutunit == "Final Outer Diameter") {
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalpipeouterdiameter").value = "";
                                    }
                                    break;
                                case (InputType = "InputType9"):
                                    if (cell.childNodes[j].value != "" && paraname_withoutunit == "Width")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnwidth").value = parseFloat(cell.childNodes[j].value);
                                    else if (cell.childNodes[j].value == "" && paraname_withoutunit == "Width") {
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnwidth").value = "";
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = "";
                                    }
                                    if (cell.childNodes[j].value != "" && paraname_withoutunit == "Thickness")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnthickness").value = parseFloat(cell.childNodes[j].value);
                                    else if (cell.childNodes[j].value == "" && paraname_withoutunit == "Thickness")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnthickness").value = "";
                                    else if (cell.childNodes[j].value != "" && paraname_withoutunit == "Final Width")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalwidth").value = parseFloat(cell.childNodes[j].value);
                                    else if (cell.childNodes[j].value == "" && paraname_withoutunit == "Final Width")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalwidth").value = "";
                                    else if (cell.childNodes[j].value != "" && paraname_withoutunit == "Final Thickness")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalthickness").value = parseFloat(cell.childNodes[j].value);
                                    else if (cell.childNodes[j].value == "" && paraname_withoutunit == "Final Thickness")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalthickness").value = "";
                                    if (cell.childNodes[j].value != "" && paraname_withoutunit == "Corner Radius")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdncornerradius").value = parseFloat(cell.childNodes[j].value);
                                    else if (cell.childNodes[j].value == "" && paraname_withoutunit == "Corner Radius")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdncornerradius").value = "";

                                    else if (cell.childNodes[j].value != "" && paraname_withoutunit == "Final Corner Radius")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalcornerradius").value = parseFloat(cell.childNodes[j].value);
                                    else if (cell.childNodes[j].value == "" && paraname_withoutunit == "Final Corner Radius")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalcornerradius").value = "";

                                    break;
                                case (InputType = "InputType10"):
                                    if (cell.childNodes[j].value != "" && paraname_withoutunit == "Width")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdntpwidth").value = parseFloat(cell.childNodes[j].value);
                                    else if (cell.childNodes[j].value == "" && paraname_withoutunit == "Width") {
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdntpwidth").value = "";
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = "";
                                    }

                                    else if (cell.childNodes[j].value != "" && paraname_withoutunit == "Thickness")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdntpthickness").value = parseFloat(cell.childNodes[j].value);
                                    else if (cell.childNodes[j].value == "" && paraname_withoutunit == "Thickness") {
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdntpthickness").value = "";
                                    }
                                    else if (cell.childNodes[j].value != "" && paraname_withoutunit == "Final Width")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaltpwidth").value = parseFloat(cell.childNodes[j].value);
                                    else if (cell.childNodes[j].value == "" && paraname_withoutunit == "Final Width")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaltpwidth").value = "";
                                    else if (cell.childNodes[j].value != "" && paraname_withoutunit == "Final Thickness")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaltpthickness").value = parseFloat(cell.childNodes[j].value);
                                    else if (cell.childNodes[j].value == "" && paraname_withoutunit == "Final Thickness") {
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaltpthickness").value = "";
                                    }
                                    else if (cell.childNodes[j].value != "" && paraname_withoutunit == "Outer Diameter")
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdntpouterdiameter").value = parseFloat(cell.childNodes[j].value);
                                    else if (cell.childNodes[j].value == "" && paraname_withoutunit == "Outer Diameter") {
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdntpouterdiameter").value = "";
                                    }
                                    else if (cell.childNodes[j].value != "" && paraname_withoutunit == "Final Outer Diameter") {
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaltpouterdiameter").value = parseFloat(cell.childNodes[j].value);
                                    }
                                    else if (cell.childNodes[j].value == "" && paraname_withoutunit == "Final Outer Diameter") {
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaltpouterdiameter").value = "";
                                    }
                                    break;
                            }
                            if (cell.childNodes[j].value != "" && paraname_withoutunit == "Area")
                                document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = cell.childNodes[j].value;
                            if (cell.childNodes[j].value != "" && paraname_withoutunit == "Ultimate Load") {
                                Uload = parseFloat(cell.childNodes[j].value);
                            }
                            if (cell.childNodes[j].value != "" && paraname_withoutunit == "Yield Load") {
                                YLoad = parseFloat(cell.childNodes[j].value);
                            }
                            if (cell.childNodes[j].value != "" && paraname_withoutunit == "1% Proof Load") {
                                PLoad = parseFloat(cell.childNodes[j].value);
                            }

                            if (cell.childNodes[j].value != "" && paraname_withoutunit == "0.2% Proof Load") {
                                SLoad = parseFloat(cell.childNodes[j].value);
                            }

                            else if (paraname_withoutunit == "Area" && paraname != "Final Gauge Length" && paraname != "Final Width" && paraname != "Final Thickness" && paraname != "Final Inner Diameter" && paraname != "Final Outer Diameter" && paraname != "Final Mass" && paraname != "Final Density" && paraname != "Final Diameter" && paraname != "Final Corner Radius" && paraname != "Final Cross Sectional Area" && paraname != "Final Breadth" && paraname != "Final Length" && paraname != "Final Width In Meter" && paraname != "Final Diameter") {
                                switch (InputType) {
                                    case (InputType = "InputType1"):
                                        //////// for Flat Shape Width & Thikness
                                        if (document.getElementById("ctl00_ContentPlaceHolder2_hdnwidth").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnthickness").value == "" && InputType == "InputType1") {
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = ""; // parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnwidth").value);
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdnwidth").value == "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnthickness").value != "" && InputType == "InputType1") {
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = ""; // parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnthickness").value);
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdnwidth").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnthickness").value != "" && InputType == "InputType1") {
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnwidth").value) * parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnthickness").value);
                                        }
                                        break;
                                    case (InputType = "InputType2"):
                                        /////// for solid round diameter
                                        if (document.getElementById("ctl00_ContentPlaceHolder2_hdninitdiameter").value != "" && InputType == "InputType2") {
                                            var diameter = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdninitdiameter").value);
                                            var area = parseFloat(parseFloat(22 / 7 * diameter * diameter) / 4);
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = area;
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdninitdiameter").value == "" && InputType == "InputType2") {
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = "";
                                        }
                                        break;
                                    case (InputType = "InputType3"):
                                        //////////For  hollow round 
                                        if (document.getElementById("ctl00_ContentPlaceHolder2_hdninnerdiameter").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnouterdiameter").value == "" && InputType == "InputType3") {
                                            var innerdiameter = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdninnerdiameter").value);
                                            var outerdiameter = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnouterdiameter").value);
                                            var area = parseFloat(((22 / 7) * (parseFloat(innerdiameter) * parseFloat(innerdiameter)))) / 4;
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = "";
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdninnerdiameter").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnouterdiameter").value != "" && InputType == "InputType3") {
                                            var area = 0;
                                            var innerdiameter = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdninnerdiameter").value);
                                            var outerdiameter = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnouterdiameter").value);
                                            if (outerdiameter < innerdiameter) {
                                                document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = "";
                                                alert('Outer Diameter Should Be Greater Than Inner Diameter');
                                            }
                                            else {
                                                area = parseFloat(((22 / 7) * ((outerdiameter * outerdiameter) - (innerdiameter * innerdiameter))) / 4);
                                                document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = area;
                                            }
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdninnerdiameter").value == "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnouterdiameter").value != "" && InputType == "InputType3") {
                                            var innerdiameter = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdninnerdiameter").value);
                                            var outerdiameter = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnouterdiameter").value);
                                            if (outerdiameter != "" && innerdiameter.toString() == "NaN") {
                                                document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = "";
                                            }
                                            else if (outerdiameter.toString() == "NaN" && innerdiameter.toString() != "") {
                                                document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = "";
                                            }
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = "";
                                        }
                                        break;
                                    case (InputType = "InputType4"):
                                        if (document.getElementById("ctl00_ContentPlaceHolder2_hdncrosssectionalarea").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalcrosssectionalarea").value == "" && InputType == "InputType4") {
                                            var CSArea = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdncrosssectionalarea").value);
                                            if (paraname_withoutunit == "Reduction In Area" && InputType == "InputType4") {
                                                cell.childNodes[j].value = "";
                                            }
                                            if (paraname_withoutunit == "U.T.S.") {
                                                var area = 0;
                                                if (parseFloat(CSArea) != 0)
                                                    area = (Uload / parseFloat(CSArea).toFixed(3)) * 1000;
                                                if (parseFloat(area) != 0)
                                                    cell.childNodes[j].value = parseFloat(area).toFixed(3);
                                                else
                                                    cell.childNodes[j].value = "";
                                            }
                                            else if (paraname_withoutunit == "Yield Strength") {
                                                var area = 0;
                                                if (parseFloat(CSArea) != 0)
                                                    area = (YLoad / parseFloat(CSArea).toFixed(3)) * 1000;
                                                if (parseFloat(area) != 0)
                                                    cell.childNodes[j].value = parseFloat(area).toFixed(3);
                                                else
                                                    cell.childNodes[j].value = "";
                                            }
                                            else if (paraname_withoutunit == "1% Proof Stress") {
                                                var area = 0;
                                                if (parseFloat(CSArea) != 0)
                                                    area = (PLoad / parseFloat(CSArea).toFixed(3)) * 1000;

                                                if (parseFloat(area) != 0)
                                                    cell.childNodes[j].value = parseFloat(area).toFixed(3);
                                                else
                                                    cell.childNodes[j].value = "";
                                            }
                                            else if (paraname_withoutunit == "0.2% Proof Stress") {
                                                var area = 0;
                                                if (parseFloat(CSArea) != 0)
                                                    area = (SLoad / parseFloat(CSArea).toFixed(3)) * 1000;
                                                if (parseFloat(area) != 0)
                                                    cell.childNodes[j].value = parseFloat(area).toFixed(3);
                                                else
                                                    cell.childNodes[j].value = "";
                                            }
                                        }
                                        break;
                                    case (InputType = "InputType5"):
                                        /////////// for 3 para Mass  +Density+ Length - Odd Shape
                                        if (document.getElementById("ctl00_ContentPlaceHolder2_hdnmass").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdndensity").value == "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnoddlength").value == "" && InputType == "InputType5") {
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = "";
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdnmass").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdndensity").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnoddlength").value == "" && InputType == "InputType5") {
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = "";
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdnmass").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdndensity").value == "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnoddlength").value != "" && InputType == "InputType5") {
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = "";
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdnmass").value == "" && document.getElementById("ctl00_ContentPlaceHolder2_hdndensity").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnoddlength").value == "" && InputType == "InputType5") {
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = "";
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdnmass").value == "" && document.getElementById("ctl00_ContentPlaceHolder2_hdndensity").value == "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnoddlength").value != "" && InputType == "InputType5") {
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = "";
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdnmass").value == "" && document.getElementById("ctl00_ContentPlaceHolder2_hdndensity").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnoddlength").value != "" && InputType == "InputType5") {
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = "";
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdnmass").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdndensity").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnoddlength").value != "" && InputType == "InputType5") {
                                            var mass = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnmass").value);
                                            var density = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdndensity").value);
                                            var length = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnoddlength").value);
                                            var area = parseFloat(mass / (density * length));
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = area;
                                        }
                                        break;
                                    case (InputType = "InputType6"):
                                        break;
                                    case (InputType = "InputType7"):
                                        /////// for Thickness Breadth,length for Hollow Rectangle 
                                        if (document.getElementById("ctl00_ContentPlaceHolder2_hdnthick").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnbreadth").value == "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnlength").value == "" && InputType == "InputType7") {
                                            var thickness = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnthick").value);
                                            var breadth = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnbreadth").value);
                                            var length = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnlength").value);
                                            var area = 0; //parseFloat(parseFloat(length) + parseFloat( breadth) - (2 * parseFloat( thickness))) * 2 * parseFloat( thickness);
                                            if (thickness != "" && breadth.toString() == "NaN" && length.toString() == "NaN") {
                                                document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = "";
                                            }
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdnthick").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnbreadth").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnlength").value == "" && InputType == "InputType7") {
                                            var thickness = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnthick").value);
                                            var breadth = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnbreadth").value);
                                            var length = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnlength").value);
                                            var area = parseFloat(parseFloat(length) + parseFloat(breadth) - (2 * parseFloat(thickness))) * 2 * parseFloat(thickness);
                                            if (thickness != "" && breadth != "" && length.toString() == "NaN") {
                                                document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = "";
                                            }
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdnthick").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnbreadth").value == "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnlength").value != "" && InputType == "InputType7") {
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = "";
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdnthick").value == "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnbreadth").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnlength").value != "" && InputType == "InputType7") {
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = "";
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdnthick").value == "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnbreadth").value == "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnlength").value != "" && InputType == "InputType7") {
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = "";
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdnthick").value == "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnbreadth").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnlength").value == "" && InputType == "InputType7") {
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = "";
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdnthick").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnbreadth").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnlength").value != "" && InputType == "InputType7") {
                                            var thickness = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnthick").value);
                                            var breadth = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnbreadth").value);
                                            var length = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnlength").value);
                                            var area = 0;
                                            if (thickness != "" && breadth != "" && length != "") {
                                                if (parseFloat(breadth) > parseFloat(thickness)) {
                                                    alert("Breadth Should Be Less Than Thickness");
                                                    document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = "";
                                                }
                                                else if (parseFloat(breadth) > parseFloat(length)) {
                                                    alert("Breadth Should Be Less Than Length");
                                                    document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = "";
                                                }
                                                else {
                                                    area = parseFloat(parseFloat(length) + parseFloat(breadth) - (2 * parseFloat(thickness))) * 2 * parseFloat(thickness);
                                                    document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = area;
                                                }
                                            }
                                            else {
                                                document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = "";
                                                alert("Enter Proper Value For Area");
                                            }
                                        }
                                        break;
                                    case (InputType = "InputType8"):
                                        ///////////// for  para thickness + outer diameter  for pipe
                                        if (document.getElementById("ctl00_ContentPlaceHolder2_hdnpipethickness").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnpipeouterdiameter").value == "" && InputType == "InputType8") {
                                            var thickness = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnpipethickness").value);
                                            var outerdiameter = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnpipeouterdiameter").value);
                                            var area = ((22 / 7) * (0 - parseFloat(thickness * thickness))) / 4;
                                            if (thickness != "" && outerdiameter.toString() == "NaN") {
                                                document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = "";
                                            }
                                            ///////////document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value=parseFloat(area);
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdnpipeouterdiameter").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnpipethickness").value == "" && InputType == "InputType8") {
                                            var thickness = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnpipethickness").value);
                                            var outerdiameter = document.getElementById("ctl00_ContentPlaceHolder2_hdnpipeouterdiameter").value;
                                            //                                   var area=((22/7) * ((parseFloat(outerdiameter) * parseFloat(outerdiameter)))) / 4;
                                            //                                  document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value=parseFloat(area);
                                            if (outerdiameter != "" && thickness.toString() == "NaN") {
                                                document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = "";
                                            }
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdnpipethickness").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnpipeouterdiameter").value != "" && InputType == "InputType8") {
                                            var area = 0;
                                            var thickness = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnpipethickness").value);
                                            var outerdiameter = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnpipeouterdiameter").value);
                                            thickness = 2 * thickness;
                                            if (parseFloat(thickness) > parseFloat(outerdiameter)) {
                                                /////////alert('Thickness Should Be Less Than Outer Diameter');
                                                alert('Outer Diameter Should Be Twice of  Thickness');
                                                document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = "";
                                            }
                                            else {
                                                thickness = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnpipethickness").value)
                                                var innerdia = parseFloat(outerdiameter) - (2 * parseFloat(thickness));
                                                area = ((22 / 7) * parseFloat(outerdiameter * outerdiameter) - (parseFloat(innerdia * innerdia))) / 4;
                                                document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = area;
                                            }
                                        }
                                        break;
                                    case (InputType = "InputType9"):
                                        ///////////// InputType -width, thickness ,corner radius not updated
                                        if (document.getElementById("ctl00_ContentPlaceHolder2_hdnwidth").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnthickness").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdncornerradius").value != "" && InputType == "InputType9") {
                                            var width = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnwidth").value);
                                            var thickness = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnthickness").value);
                                            var radius = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdncornerradius").value);
                                            var area = (parseFloat(thickness) * parseFloat(width) - (0.86 * parseFloat(radius) * parseFloat(radius)));
                                            if (parseFloat(radius) > parseFloat(thickness)) {
                                                alert('Radius Should Be Less Than Thickness');
                                                document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = "";
                                            }
                                            else if (parseFloat(radius) > parseFloat(width)) {
                                                alert('Radius Should Be Less Than Width');
                                                document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = "";
                                            }
                                            else {
                                                document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = parseFloat(area);
                                            }
                                            //document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value= parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnwidth").value)*parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnthickness").value)*parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdncornerradius").value) ;
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdnwidth").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnthickness").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdncornerradius").value == "" && InputType == "InputType9") {
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = "";
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdnwidth").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnthickness").value == "" && document.getElementById("ctl00_ContentPlaceHolder2_hdncornerradius").value == "" && InputType == "InputType9") {
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = "";
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdnwidth").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnthickness").value == "" && document.getElementById("ctl00_ContentPlaceHolder2_hdncornerradius").value != "" && InputType == "InputType9") {
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = "";
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdnwidth").value == "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnthickness").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdncornerradius").value == "" && InputType == "InputType9") {
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = "";
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdnwidth").value == "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnthickness").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdncornerradius").value != "" && InputType == "InputType9") {
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdnwidth").value == "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnthickness").value == "" && document.getElementById("ctl00_ContentPlaceHolder2_hdncornerradius").value != "" && InputType == "InputType9") {
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = "";
                                        }
                                        break;
                                    case (InputType = "InputType10"):
                                        /////////// for 3 para width +thickness+ outer diameter - Tubular Product
                                        if (document.getElementById("ctl00_ContentPlaceHolder2_hdntpwidth").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdntpthickness").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdntpouterdiameter").value != "" && InputType == "InputType10") {
                                            var width = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdntpwidth").value);
                                            var thickness = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdntpthickness").value);
                                            var outerdiameter = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdntpouterdiameter").value);
                                            var area = 0;
                                            if (parseFloat(outerdiameter) / parseFloat(width) <= 6) {
                                                var a = parseFloat(outerdiameter * outerdiameter - width * width);
                                                var val = parseFloat(Math.sqrt(a));
                                                var firstHalf = (width / 4) * val + ((outerdiameter * outerdiameter / 4) * Math.asin(width / outerdiameter))
                                                var ODThickVal = (outerdiameter - 2 * thickness);
                                                var tempVal = ODThickVal * ODThickVal;
                                                val = Math.sqrt(tempVal - width * width);
                                                var secondHalf = (width / 4) * val;
                                                tempVal = (ODThickVal / 2) * (ODThickVal / 2);
                                                var thirdPart = tempVal * Math.asin(width / (outerdiameter - 2 * thickness));
                                                area = firstHalf - secondHalf - thirdPart;
                                            }
                                            if (parseFloat(outerdiameter) < parseFloat(width) || parseFloat(outerdiameter) < parseFloat(thickness)) {
                                                alert(' Outer Diameter Should Be Greater Than Width And Thickness');
                                                document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = "";
                                            }
                                            else {
                                                document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = parseFloat(area);
                                            }
                                            // document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value= parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdntpwidth").value)*parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdntpthickness").value)*parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdntpouterdiameter").value) ;
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdntpwidth").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdntpthickness").value == "" && document.getElementById("ctl00_ContentPlaceHolder2_hdntpouterdiameter").value == "" && InputType == "InputType10") {
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = "";
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdntpwidth").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdntpthickness").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdntpouterdiameter").value == "" && InputType == "InputType10") {
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = "";
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdntpwidth").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdntpthickness").value == "" && document.getElementById("ctl00_ContentPlaceHolder2_hdntpouterdiameter").value != "" && InputType == "InputType10") {
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = "";
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdntpwidth").value == "" && document.getElementById("ctl00_ContentPlaceHolder2_hdntpthickness").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdntpouterdiameter").value == "" && InputType == "InputType10") {
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = "";
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdntpwidth").value == "" && document.getElementById("ctl00_ContentPlaceHolder2_hdntpthickness").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdntpouterdiameter").value != "" && InputType == "InputType10") {
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = "";
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdntpwidth").value == "" && document.getElementById("ctl00_ContentPlaceHolder2_hdntpthickness").value == "" && document.getElementById("ctl00_ContentPlaceHolder2_hdntpouterdiameter").value != "" && InputType == "InputType10") {
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = "";
                                        }
                                        break;
                                } //end of switch case                           
                                if (document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value != "") {
                                    var area = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value);
                                    var finalarea = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value);
                                    if (area < finalarea) {
                                        alert("Area Should Be Greater Than Final Area");
                                        cell.childNodes[j].value = "";
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = "";
                                        //return false;
                                    }
                                }
                                if (document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value != "") {
                                    cell.childNodes[j].value = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value).toFixed(3);
                                }
                                else
                                    cell.childNodes[j].value = "";
                            }
                            else if (paraname_withoutunit == "U.T.S." && document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value != "") {
                                var area = 0;
                                if (document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value != "")
                                    area = (Uload / parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value).toFixed(3)) * 1000;
                                if (parseFloat(area) != 0)
                                    cell.childNodes[j].value = parseFloat(area).toFixed(3);
                            }
                            else if (paraname_withoutunit == "U.T.S." && document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value == "" && document.getElementById("ctl00_ContentPlaceHolder2_hdncrosssectionalarea").value == "") {
                                cell.childNodes[j].value = "";
                            }
                            else if (paraname_withoutunit == "Yield Strength" && document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value != "") {
                                var area = 0;
                                if (document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value != "")
                                    area = (YLoad / parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value).toFixed(3)) * 1000;
                                if (parseFloat(area) != 0)
                                    cell.childNodes[j].value = parseFloat(area).toFixed(3);
                            }
                            else if (paraname_withoutunit == "Yield Strength" && document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value == "" && document.getElementById("ctl00_ContentPlaceHolder2_hdncrosssectionalarea").value == "") {
                                cell.childNodes[j].value = "";
                            }
                            else if (paraname_withoutunit == "1% Proof Stress" && document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value != "") {
                                var area = 0;
                                if (document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value != "")
                                    area = (PLoad / parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value).toFixed(3)) * 1000;
                                if (parseFloat(area) != 0)
                                    cell.childNodes[j].value = parseFloat(area).toFixed(3);
                            }
                            else if (paraname_withoutunit == "1% Proof Stress" && document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value == "" && document.getElementById("ctl00_ContentPlaceHolder2_hdncrosssectionalarea").value == "") {
                                cell.childNodes[j].value = "";
                            }
                            else if (paraname_withoutunit == "0.2% Proof Stress" && document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value != "") {
                                var area = 0;
                                if (document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value != "")
                                    area = (SLoad / parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value).toFixed(3)) * 1000;
                                if (parseFloat(area) != 0)
                                    cell.childNodes[j].value = parseFloat(area).toFixed(3);
                            }
                            else if (paraname_withoutunit == "0.2% Proof Stress" && document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value == "" && document.getElementById("ctl00_ContentPlaceHolder2_hdncrosssectionalarea").value == "") {
                                cell.childNodes[j].value = "";
                            }
                            else if (paraname_withoutunit == "Final Area") {
                                switch (InputType) {
                                    case (InputType = "InputType1"):
                                        //////// for Flat Shape Width & Thikness
                                        if (document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalwidth").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalthickness").value == "" && InputType == "InputType1") {
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value = ""; // parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalwidth").value);
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalwidth").value == "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalthickness").value != "" && InputType == "InputType1") {
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value = ""; // parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalwidth").value);
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalwidth").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalthickness").value != "" && InputType == "InputType1") {
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalwidth").value) * parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalthickness").value);
                                        }
                                        break;
                                    case (InputType = "InputType2"):
                                        /////// for solid round diameter
                                        if (document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaldiameter").value != "" && InputType == "InputType2") {
                                            var diameter = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaldiameter").value);
                                            var area = parseFloat(parseFloat(22 / 7 * diameter * diameter) / 4);
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value = area;
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaldiameter").value == "" && InputType == "InputType2") {
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value = "";
                                        }
                                        break;
                                    case (InputType = "InputType3"):
                                        if (document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalinnerdiameter").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalouterdiameter").value == "") {
                                            var area = 0;
                                            var innerdiameter = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalinnerdiameter").value);
                                            var outerdiameter = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalouterdiameter").value);
                                            //var area= parseFloat(((22/7) * (parseFloat(innerdiameter) * parseFloat(innerdiameter) ))) / 4;
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value = "";
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalinnerdiameter").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalouterdiameter").value != "") {
                                            var innerdiameter = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalinnerdiameter").value);
                                            var outerdiameter = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalouterdiameter").value);
                                            if (outerdiameter < innerdiameter) {
                                                document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value = "";
                                                alert('Final Outer Diameter Should Be Greater Than Final Inner Diameter');

                                            }
                                            else {
                                                area = parseFloat(((22 / 7) * ((outerdiameter * outerdiameter) - (innerdiameter * innerdiameter))) / 4);
                                                document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value = area;
                                            }
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalinnerdiameter").value == "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalouterdiameter").value != "" && InputType == "InputType3") {
                                            var innerdiameter = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalinnerdiameter").value);
                                            var outerdiameter = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalouterdiameter").value);
                                            if (outerdiameter != "" && innerdiameter.toString() == "NaN") {
                                                document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value = "";
                                            }
                                            else if (outerdiameter.toString() == "NaN" && innerdiameter.toString() != "") {
                                                document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value = "";
                                            }
                                        }
                                        break;
                                    case (InputType = "InputType4"):
                                        //                                         if(document.getElementById("ctl00_ContentPlaceHolder2_hdncrosssectionalarea").value !=""  &&  document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalcrosssectionalarea").value =="" && InputType=="InputType4" )
                                        //                                          {
                                        //                                                var CSArea=parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdncrosssectionalarea").value );
                                        //                                                 if( paraname_withoutunit=="Reduction Area"  && InputType=="InputType4" )
                                        //                                                     {
                                        //                                                   
                                        //                                                     cell.childNodes[j].value="" ; 
                                        //                                                     }
                                        //                                                if(paraname_withoutunit=="U.T.S.")
                                        //                                                {
                                        //                                                    var area=0;
                                        //                                                    if(parseFloat(CSArea)!=0)
                                        //                                                    area= (Uload /parseFloat(CSArea).toFixed(3))*1000; 
                                        //                                                    if(parseFloat(area)!=0)
                                        //                                                    cell.childNodes[j].value= parseFloat(area).toFixed(3);
                                        //                                                    else
                                        //                                                    cell.childNodes[j].value="";
                                        //                                                } 
                                        //                                                else if(paraname_withoutunit=="Yield Strength")
                                        //                                                { 
                                        //                                                    var area=0;
                                        //                                                    if(parseFloat(CSArea)!=0)
                                        //                                                    area= (YLoad /parseFloat(CSArea).toFixed(3))*1000; 
                                        //                                                    if(parseFloat(area)!=0)
                                        //                                                    cell.childNodes[j].value= parseFloat(area).toFixed(3);
                                        //                                                     else
                                        //                                                    cell.childNodes[j].value="";
                                        //                                                }
                                        //			                                    else if(paraname_withoutunit=="1% Proof Stress")
                                        //                                                { 
                                        //                                                    var area=0;
                                        //                                                  if(parseFloat(CSArea)!=0)
                                        //                                                    area= (PLoad /parseFloat(CSArea).toFixed(3))*1000; 
                                        //                                                    
                                        //                                                    if(parseFloat(area)!=0)
                                        //                                                    cell.childNodes[j].value= parseFloat(area).toFixed(3);
                                        //                                                     else
                                        //                                                    cell.childNodes[j].value="";
                                        //        //                                        
                                        //                                                }

                                        //                                                else if(paraname_withoutunit=="0.2% Proof Stress")
                                        //                                                { 
                                        //                                                    var area=0;
                                        //                                                     if(parseFloat(CSArea)!=0)
                                        //                                                    area= (SLoad /parseFloat(CSArea).toFixed(3))*1000; 
                                        //                                                  
                                        //                                                    if(parseFloat(area)!=0)
                                        //                                                    cell.childNodes[j].value= parseFloat(area).toFixed(3);
                                        //                                                     else
                                        //                                                 cell.childNodes[j].value="";
                                        //                                                }
                                        //                                         }
                                        break;
                                    case (InputType = "InputType5"):
                                        if (document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalmass").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaldensity").value == "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaloddlength").value == "" && InputType == "InputType5") {
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value = "";
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalmass").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaldensity").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaloddlength").value == "" && InputType == "InputType5") {
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value = "";
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalmass").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaldensity").value == "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaloddlength").value != "" && InputType == "InputType5") {
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value = "";
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalmass").value == "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaldensity").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaloddlength").value == "" && InputType == "InputType5") {
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value = "";
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalmass").value == "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaldensity").value == "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaloddlength").value != "" && InputType == "InputType5") {
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value = "";
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalmass").value == "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaldensity").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnoddlength").value != "" && InputType == "InputType5") {
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value = "";
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalmass").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaldensity").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaloddlength").value != "" && InputType == "InputType5") {
                                            var mass = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalmass").value);
                                            var density = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaldensity").value);
                                            var length = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaloddlength").value);
                                            var area = parseFloat(mass / (density * length));
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value = area;
                                        }
                                        break;
                                    case (InputType = "InputType6"):
                                        break;
                                    case (InputType = "InputType7"):
                                        /////// for Thickness Breadth,length for hollow recangle 
                                        if (document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalthick").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalbreadth").value == "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinallength").value == "" && InputType == "InputType7") {
                                            var thickness = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalthick").value);
                                            var breadth = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalbreadth").value);
                                            var length = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnfinallength").value);
                                            var area = 0; //parseFloat(parseFloat(length) + parseFloat( breadth) - (2 * parseFloat( thickness))) * 2 * parseFloat( thickness);
                                            if (thickness != "" && breadth.toString() == "NaN" && length.toString() == "NaN") {
                                                document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value = "";
                                            }
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalthick").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalbreadth").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinallength").value == "" && InputType == "InputType7") {
                                            var thickness = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalthick").value);
                                            var breadth = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalbreadth").value);
                                            var length = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnfinallength").value);
                                            var area = parseFloat(parseFloat(length) + parseFloat(breadth) - (2 * parseFloat(thickness))) * 2 * parseFloat(thickness);
                                            if (thickness != "" && breadth != "" && length.toString() == "NaN") {
                                                document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value = "";
                                            }
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalthick").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalbreadth").value == "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinallength").value != "" && InputType == "InputType7") {
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value = "";
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalthick").value == "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalbreadth").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinallength").value != "" && InputType == "InputType7") {
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value = "";
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalthick").value == "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalbreadth").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinallength").value == "" && InputType == "InputType7") {
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value = "";
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalthick").value == "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalbreadth").value == "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinallength").value != "" && InputType == "InputType7") {
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value = "";
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalthick").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalbreadth").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinallength").value != "" && InputType == "InputType7") {
                                            var thickness = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalthick").value);
                                            var breadth = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalbreadth").value);
                                            var length = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnfinallength").value);
                                            var area = 0;
                                            if (thickness != "" && breadth != "" && length != "") {
                                                if (parseFloat(breadth) > parseFloat(thickness)) {
                                                    alert("Breadth Should Be Less Than Thickness");
                                                    document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value = "";
                                                }
                                                else if (parseFloat(breadth) > parseFloat(length)) {
                                                    alert("Breadth Should Be Less Than Length");
                                                    document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value = "";
                                                }
                                                else {
                                                    area = parseFloat(parseFloat(length) + parseFloat(breadth) - (2 * parseFloat(thickness))) * 2 * parseFloat(thickness);
                                                    document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value = area;
                                                }
                                            }
                                            else {
                                                document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value = "";
                                                alert("Enter Proper Value For Area");
                                            }
                                        }
                                        break;
                                    case (InputType = "InputType8"):
                                        ///////////// for  para thickness + outer diameter  for pipe -- InputType8
                                        if (document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalpipethickness").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalpipeouterdiameter").value == "" && InputType == "InputType8") {
                                            var thickness = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalpipethickness").value);
                                            var outerdiameter = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalpipeouterdiameter").value);
                                            var outerdiameter = 0;
                                            var area = 0; //((22/7) * parseFloat(thickness * thickness)) / 4;
                                            if (thickness != "" && outerdiameter.toString() == "NaN") {
                                                document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = "";
                                            }
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalpipeouterdiameter").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalpipethickness").value == "" && InputType == "InputType8") {
                                            var thickness = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalpipethickness").value);
                                            var outerdiameter = document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalpipeouterdiameter").value;
                                            var area = 0; //((22/7) * ((parseFloat(outerdiameter) * parseFloat(outerdiameter)))) / 4;
                                            //document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value=parseFloat(area);
                                            if (outerdiameter != "" && thickness.toString() == "NaN") {
                                                document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value = "";
                                            }
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalpipethickness").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalpipeouterdiameter").value != "" && InputType == "InputType8") {
                                            var thickness = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalpipethickness").value);
                                            var outerdiameter = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalpipeouterdiameter").value);
                                            var area = 0; //((22/7) * parseFloat(outerdiameter * outerdiameter)-(parseFloat(thickness * thickness))) / 4;
                                            thickness = 2 * thickness;
                                            if (parseFloat(thickness) > parseFloat(outerdiameter)) {
                                                alert('Final Outer Diameter Should Be Twice of Final Thickness');
                                                document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value = "";
                                            }
                                            else {
                                                thickness = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalpipethickness").value)
                                                var innerdia = parseFloat(outerdiameter) - (2 * parseFloat(thickness));
                                                area = ((22 / 7) * parseFloat(outerdiameter * outerdiameter) - (parseFloat(innerdia * innerdia))) / 4;
                                                document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value = area;
                                            }
                                        }
                                        break;
                                    case (InputType = "InputType9"):
                                        ///////////// InputType -width, thickness ,corner radius not updated 
                                        if (document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalwidth").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalthickness").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalcornerradius").value != "" && InputType == "InputType9") {
                                            var width = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalwidth").value);
                                            var thickness = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalthickness").value);
                                            var radius = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalcornerradius").value);
                                            var area = (parseFloat(thickness) * parseFloat(width) - (0.86 * parseFloat(radius) * parseFloat(radius)));
                                            if (parseFloat(radius) > parseFloat(thickness)) {
                                                alert('Radius Should Be Less Than Thickness');
                                                document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value = "";
                                            }
                                            else if (parseFloat(radius) > parseFloat(width)) {
                                                alert('Radius Should Be Less Than Width');
                                                document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value = "";
                                            }
                                            else {
                                                document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value = parseFloat(area);
                                            }
                                            //document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value= parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnwidth").value)*parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnthickness").value)*parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdncornerradius").value) ;
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalwidth").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalthickness").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalcornerradius").value == "" && InputType == "InputType9") {
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value = "";
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalwidth").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalthickness").value == "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalcornerradius").value == "" && InputType == "InputType9") {
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value = "";
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalwidth").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalthickness").value == "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalcornerradius").value != "" && InputType == "InputType9") {
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value = "";
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalwidth").value == "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalthickness").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalcornerradius").value == "" && InputType == "InputType9") {
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value = "";
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalwidth").value == "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalthickness").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalcornerradius").value != "" && InputType == "InputType9") {
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value = "";
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalwidth").value == "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalthickness").value == "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalcornerradius").value != "" && InputType == "InputType9") {
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value = "";
                                        }
                                        break;
                                    case (InputType = "InputType10"):
                                        /////////// for 3 para width +thickness+ outer diameter - Tubular Product
                                        if (document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaltpwidth").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaltpthickness").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaltpouterdiameter").value != "" && InputType == "InputType10") {
                                            var width = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaltpwidth").value);
                                            var thickness = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaltpthickness").value);
                                            var outerdiameter = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaltpouterdiameter").value);
                                            var area = 0;
                                            if (parseFloat(outerdiameter) / parseFloat(width) <= 6) {
                                                var a = parseFloat(outerdiameter * outerdiameter - width * width);
                                                var val = parseFloat(Math.sqrt(a));
                                                var firstHalf = (width / 4) * val + ((outerdiameter * outerdiameter / 4) * Math.asin(width / outerdiameter))
                                                var ODThickVal = (outerdiameter - 2 * thickness);
                                                var tempVal = ODThickVal * ODThickVal;
                                                val = Math.sqrt(tempVal - width * width);
                                                var secondHalf = (width / 4) * val;
                                                tempVal = (ODThickVal / 2) * (ODThickVal / 2);
                                                var thirdPart = tempVal * Math.asin(width / (outerdiameter - 2 * thickness));
                                                area = firstHalf - secondHalf - thirdPart;
                                            }
                                            if (parseFloat(outerdiameter) < parseFloat(width) || parseFloat(outerdiameter) < parseFloat(thickness)) {
                                                alert(' Final Outer Diameter Should Be Greater Than Final Width And Final Thickness');
                                                document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value = "";
                                            }
                                            else {
                                                document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value = parseFloat(area);
                                            }
                                            //document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value= parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaltpwidth").value)*parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaltpthickness").value)*parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaltpouterdiameter").value ) ;
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaltpwidth").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaltpthickness").value == "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaltpouterdiameter").value == "" && InputType == "InputType10") {
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value = "";
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaltpwidth").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaltpthickness").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaltpouterdiameter").value == "" && InputType == "InputType10") {
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value = "";
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaltpwidth").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaltpthickness").value == "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaltpouterdiameter").value != "" && InputType == "InputType10") {
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value = "";
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaltpwidth").value == "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaltpthickness").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaltpouterdiameter").value == "" && InputType == "InputType10") {
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value = "";
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaltpwidth").value == "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaltpthickness").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaltpouterdiameter").value != "" && InputType == "InputType10") {
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value = "";
                                        }
                                        else if (document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaltpwidth").value == "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaltpthickness").value == "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinaltpouterdiameter").value != "" && InputType == "InputType10") {
                                            document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value = "";
                                        }
                                        break;
                                } //End of Finale Switch
                                document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalgaugelength").value = "";
                                if (document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value != "") {
                                    var area = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value);
                                    var finalarea = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value);
                                    if (area < finalarea) {
                                        alert("Final Area Should Be Less Than Area");
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value = "";
                                    }
                                }
                                if (document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value != "")
                                    cell.childNodes[j].value = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value).toFixed(3);
                                else
                                    cell.childNodes[j].value = "";
                            }
                            if (document.getElementById("ctl00_ContentPlaceHolder2_hdncrosssectionalarea").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalcrosssectionalarea").value != "") {
                                var CSArea = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdncrosssectionalarea").value);
                                var FinalCSArea = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalcrosssectionalarea").value);

                                if (paraname_withoutunit == "Reduction In Area" && InputType == "InputType4") {
                                    var rarea = (parseFloat(CSArea) - parseFloat(FinalCSArea)) * 100;
                                    cell.childNodes[j].value = parseFloat(rarea / parseFloat(CSArea)).toFixed(3); ;
                                }
                                if (paraname_withoutunit == "U.T.S.") {
                                    var area = 0;
                                    if (parseFloat(CSArea) != 0)
                                        area = (Uload / parseFloat(CSArea).toFixed(3)) * 1000;
                                    if (parseFloat(area) != 0)
                                        cell.childNodes[j].value = parseFloat(area).toFixed(3);
                                    else
                                        cell.childNodes[j].value = "";
                                }
                                else if (paraname_withoutunit == "Yield Strength") {
                                    var area = 0;
                                    if (parseFloat(CSArea) != 0)
                                        area = (YLoad / parseFloat(CSArea).toFixed(3)) * 1000;
                                    if (parseFloat(area) != 0)
                                        cell.childNodes[j].value = parseFloat(area).toFixed(3);
                                    else
                                        cell.childNodes[j].value = "";
                                }
                                else if (paraname_withoutunit == "1% Proof Stress") {
                                    var area = 0;
                                    if (parseFloat(CSArea) != 0)
                                        area = (PLoad / parseFloat(CSArea).toFixed(3)) * 1000;

                                    if (parseFloat(area) != 0)
                                        cell.childNodes[j].value = parseFloat(area).toFixed(3);
                                    else
                                        cell.childNodes[j].value = "";
                                    //                                        
                                }
                                else if (paraname_withoutunit == "0.2% Proof Stress") {
                                    var area = 0;
                                    if (parseFloat(CSArea) != 0)
                                        area = (SLoad / parseFloat(CSArea).toFixed(3)) * 1000;
                                    if (parseFloat(area) != 0)
                                        cell.childNodes[j].value = parseFloat(area).toFixed(3);
                                    else
                                        cell.childNodes[j].value = "";
                                }
                            }
                            else if (cell.childNodes[j].value != "" && paraname_withoutunit == "Gauge Length" && paraname == "Gauge Length") {
                            }
                            else if (cell.childNodes[j].value != "" && paraname_withoutunit == "Final Gauge Length" && paraname == "Final Gauge Length") {
                                document.getElementById("" + txt.id + "").value = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value) * parseFloat(cell.childNodes[j].value);
                                document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalgaugelength").value = parseFloat(document.getElementById("" + txt.id + "").value).toFixed(3);
                                if (document.getElementById("ctl00_ContentPlaceHolder2_hdninitgaugelength").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalgaugelength").value != "") {
                                    var initgaugelength = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdninitgaugelength").value);
                                    var finalgaugelength = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalgaugelength").value);
                                    if (finalgaugelength < initgaugelength) {
                                        alert(" Final Gauge Length Should Be greater Than Gauge Length");
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdninitgaugelength").value = "";
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalgaugelength").value = "";
                                    }
                                }
                            }
                            else if (paraname_withoutunit == "Reduction In Area") {
                                if (document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value != "") {
                                    var rarea = (parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value) - parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value)) * 100;
                                    cell.childNodes[j].value = parseFloat(rarea / parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value)).toFixed(3);
                                }
                                else if (document.getElementById("ctl00_ContentPlaceHolder2_hdncrosssectionalarea").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalcrosssectionalarea").value != "") {
                                    var rarea = (parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdncrosssectionalarea").value) - parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalcrosssectionalarea").value)) * 100;
                                    cell.childNodes[j].value = parseFloat(rarea / parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdncrosssectionalarea").value)).toFixed(3); ;
                                }
                                else
                                    cell.childNodes[j].value = "";
                            }
                        } //end of if 
                    } // end of for
                    if (document.getElementById("ctl00_ContentPlaceHolder2_hdncrosssectionalarea").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalcrosssectionalarea").value != "") {
                        var CSArea = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdncrosssectionalarea").value);
                        var FinalCSArea = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalcrosssectionalarea").value);
                        if (CSArea < FinalCSArea) {
                            alert("Cross Sectional Area Should Be Greater Than Final Cross Sectional Area ");
                            document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalcrosssectionalarea").value = "";
                            //document.getElementById("ctl00_ContentPlaceHolder2_hdncrosssectionalarea").value="";
                        }
                    }
                } //end of outer for loop
            } //if cell/childnode not null
            document.getElementById("ctl00_ContentPlaceHolder2_hdnindex").value = index;
        }

        function GetGaugeLength(txt, paraname, grv, index, txtremark) {
        
            var txtname = "" + grv + "_" + txt.id + "";
            var grid = document.getElementById("<%= gdvItem.ClientID%>");
            var txtdata = txtremark.value;
            var txtval = txt.value;
            if (parseInt(txtdata) == 1) {
                if (IsNumOnly(txtval) == false) {
                    alert('Enter Numeric Value Only');
                    txt.value = "";
                    return false;
                }
            }
            else if (parseInt(txtdata) == 2) {
                if (IsCharOnly(txtval) == false) {

                    alert('Enter Character Only');
                    txt.value = "";
                    return false;
                }
            }
            for (var i = 1; i < grid.rows.length; i++) {
                var paraname_withoutunit = "";
                var str = 0;
                var cell1 = grid.rows[i].cells;
                cell = grid.rows[i].cells[index];
                if (cell != null && cell.toString() != 'undefined') {
                    for (j = 0; j < cell.childNodes.length; j++) {
                    
                    //<Shreya>
                        //This is hard coded this change is to take parameter name in paraname_withoutunit variable. (As told by Shardul Sir) 
                        //paraname_withoutunit = cell1[1].childNodes[0].value;
                        //paraname_withoutunit = paraname_withoutunit.substring(0, paraname_withoutunit.lastIndexOf('('));
                        //paraname_withoutunit = RTrim(paraname_withoutunit);

                        paraname_withoutunit = cell1[1].childNodes[0].innerHTML;
                   //</Shreya>
                   
                        if (cell.childNodes[j].type == "text") {
                            if (cell.childNodes[j].value != "" && paraname_withoutunit == "Area") {
                                document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = parseFloat(cell.childNodes[j].value);
                            }
                            if (cell.childNodes[j].value != "" && paraname_withoutunit == "Final Area") {
                                document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalarea").value = parseFloat(cell.childNodes[j].value);
                            }
                            if (cell.childNodes[j].value != "" && paraname_withoutunit == "Gauge Length") {
                                if (cell.childNodes[j].value != "")
                                    document.getElementById("ctl00_ContentPlaceHolder2_hdninitgaugelength").value = parseFloat(cell.childNodes[j].value);
                                else
                                    document.getElementById("ctl00_ContentPlaceHolder2_hdninitgaugelength").value = "";
                            }
                            else if (cell.childNodes[j].value == "" && paraname_withoutunit == "Gauge Length") {
                                document.getElementById("ctl00_ContentPlaceHolder2_hdninitgaugelength").value = "";
                            }
                            else if (cell.childNodes[j].value != "" && paraname_withoutunit == "Final Gauge Length") {
                                if (cell.childNodes[j].value != "")
                                    document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalgaugelength").value = parseFloat(cell.childNodes[j].value);
                                else
                                    document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalgaugelength").value = "";
                            }
                            else if (cell.childNodes[j].value == "" && paraname_withoutunit == "Final Gauge Length") {
                                document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalgaugelength").value = "";
                            }
                            else if (paraname_withoutunit == "Elongation") {
                                if (document.getElementById("ctl00_ContentPlaceHolder2_hdninitgaugelength").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalgaugelength").value != "") {
                                    var initgaugelength = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdninitgaugelength").value);
                                    var finalgaugelength = parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalgaugelength").value);
                                    if (finalgaugelength < initgaugelength) {
                                        alert(" Final Gauge Length Should Be greater Than Initial Gauge Length");
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdninitgaugelength").value = "";
                                        document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalgaugelength").value = "";
                                        cell.childNodes[j].value = "";
                                    }
                                    else {
                                        var finalgeglen = (parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalgaugelength").value) - parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdninitgaugelength").value)) * 100;
                                        finalgeglen = finalgeglen / parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdninitgaugelength").value);
                                        cell.childNodes[j].value = parseFloat(finalgeglen).toFixed(3);
                                    }

                                }
                                else if (document.getElementById("ctl00_ContentPlaceHolder2_hdninitgaugelength").value == "" || document.getElementById("ctl00_ContentPlaceHolder2_hdnfinalgaugelength").value == "")
                                    cell.childNodes[j].value = "";
                            }
                        } // end of if 
                    } //end of inner for
                } //cell not null
            } //end of outer for
        }

        function fnAreaCalculation(txt, paraname, index, txtremark) {
            var min, max;
            var Uload = 0, YLoad = 0, PLoad = 0, SLoad = 0;
            var grid = document.getElementById("<%= gdvItem.ClientID%>");
            var txtdata = txtremark.value;
            var txtval = txt.value;
            var Remark = "";
            if (parseInt(txtdata) == 1) {
                if (IsNumOnly(txtval) == false) {
                    alert('Enter Numeric Value Only');
                    txt.value = "";
                    return false;
                }
            }
            else if (parseInt(txtdata) == 2) {
                if (IsCharOnly(txtval) == false) {
                    alert('Enter Character Only');
                    txt.value = "";
                    return false;
                }
            } var flag = 0;
            for (var i = 1; i < grid.rows.length; i++) {
                var paraname_withoutunit = "";
                var str = 0;
                var cell1 = grid.rows[i].cells;
                cell = grid.rows[i].cells[index];
                if (cell != null && cell.toString() != 'undefined') {
                    for (j = 0; j < cell.childNodes.length; j++) {
                    
                    //<Shreya>
                        //This is hard coded this change is to take parameter name in paraname_withoutunit variable(As told by Shardul Sir)
                        //paraname_withoutunit = cell1[1].childNodes[0].value;
                        //paraname_withoutunit = paraname_withoutunit.substring(0, paraname_withoutunit.lastIndexOf('('));
                        //paraname_withoutunit = RTrim(paraname_withoutunit);
                          paraname_withoutunit = cell1[1].childNodes[0].innerHTML;
                    //</Shreya>
                          
                        if (cell.childNodes[j].type == "text") {
                            min = null; max = null;
                            if (cell.childNodes[j].value != "" && paraname_withoutunit == "Area") {
                                document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value = parseFloat(cell.childNodes[j].value);
                            }
                            else if (cell.childNodes[j].value != "" && paraname_withoutunit == "Cross Sectional Area") {
                                document.getElementById("ctl00_ContentPlaceHolder2_hdncrosssectionalarea").value = parseFloat(cell.childNodes[j].value);
                            }
                            if (cell.childNodes[j].value != "" && paraname_withoutunit == "Ultimate Load" && paraname == "Ultimate Load") {
                                Uload = parseFloat(cell.childNodes[j].value);
                            }
                            if (paraname_withoutunit == "U.T.S." && paraname == "Ultimate Load") {
                                var area = 0;
                                if (document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value != "") {
                                    area = (Uload / parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value).toFixed(3)) * 1000;
                                }
                                else if (document.getElementById("ctl00_ContentPlaceHolder2_hdncrosssectionalarea").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value == "") {
                                    area = (Uload / parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdncrosssectionalarea").value).toFixed(3)) * 1000;
                                }
                                if (parseFloat(area) != 0)
                                    cell.childNodes[j].value = parseFloat(area).toFixed(3);
                                else
                                    cell.childNodes[j].value = "";
                            }
                            else if (cell.childNodes[j].value != "" && paraname_withoutunit == "Yield Load" && paraname == "Yield Load") {
                                YLoad = parseFloat(cell.childNodes[j].value);
                            }
                            else if (paraname_withoutunit == "Yield Strength" && paraname == "Yield Load") {
                                var area = 0;
                                if (document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value != "") {
                                    area = (YLoad / parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value)) * 1000;
                                }
                                else if (document.getElementById("ctl00_ContentPlaceHolder2_hdncrosssectionalarea").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value == "") {
                                    area = (YLoad / parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdncrosssectionalarea").value).toFixed(3)) * 1000;
                                }
                                if (parseFloat(area) != 0)
                                    cell.childNodes[j].value = parseFloat(area).toFixed(3);
                                else
                                    cell.childNodes[j].value = "";
                            }
                            else if (cell.childNodes[j].value != "" && paraname_withoutunit == "1% Proof Load" && paraname == "1% Proof Load") {
                                PLoad = parseFloat(cell.childNodes[j].value);
                            }
                            else if (paraname_withoutunit == "1% Proof Stress" && paraname == "1% Proof Load") {
                                var area = 0;
                                if (document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value != "") {
                                    area = (PLoad / parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value)) * 1000;
                                }
                                else if (document.getElementById("ctl00_ContentPlaceHolder2_hdncrosssectionalarea").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value == "") {
                                    area = (PLoad / parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdncrosssectionalarea").value).toFixed(3)) * 1000;
                                }
                                if (parseFloat(area) != 0)
                                    cell.childNodes[j].value = parseFloat(area).toFixed(3);
                                else
                                    cell.childNodes[j].value = "";
                            }
                            else if (cell.childNodes[j].value != "" && paraname_withoutunit == "0.2% Proof Load" && paraname == "0.2% Proof Load") {
                                SLoad = parseFloat(cell.childNodes[j].value);
                            }
                            else if (paraname_withoutunit == "0.2% Proof Stress" && paraname == "0.2% Proof Load") {
                                var area = 0;
                                if (document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value != "") {
                                    area = (SLoad / parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value)) * 1000;
                                }
                                else if (document.getElementById("ctl00_ContentPlaceHolder2_hdncrosssectionalarea").value != "" && document.getElementById("ctl00_ContentPlaceHolder2_hdninitarea").value == "") {
                                    area = (SLoad / parseFloat(document.getElementById("ctl00_ContentPlaceHolder2_hdncrosssectionalarea").value).toFixed(3)) * 1000;
                                }
                                if (parseFloat(area) != 0)
                                    cell.childNodes[j].value = parseFloat(area).toFixed(3);
                                else
                                    cell.childNodes[j].value = "";
                            }
                            if (paraname_withoutunit != "Cross Sectional Area" && paraname_withoutunit != "Final Cross Sectional Area" && paraname_withoutunit != "Final Cross Sectional Area" && paraname_withoutunit != "Area" && paraname_withoutunit != "Final Area" && paraname_withoutunit != "Initial Width" && paraname_withoutunit != "Final Width" && paraname_withoutunit != "Thickness" && paraname_withoutunit != "Final Thickness" && paraname_withoutunit != "Length" && paraname_withoutunit != "Final Length" && paraname_withoutunit != "Breadth" && paraname_withoutunit != "Final Breadth" && paraname_withoutunit != "Inner Diameter" && paraname_withoutunit != "Final Inner Diameter" && paraname_withoutunit != "Outer Diameter" && paraname_withoutunit != "Final Outer Diameter" && paraname_withoutunit != "Diameter" && paraname_withoutunit != "Final Diameter" && paraname_withoutunit != "Mass" && paraname_withoutunit != "Final Mass" && paraname_withoutunit != "Density" && paraname_withoutunit != "Final Density" && paraname_withoutunit != "Gauge Length" && paraname_withoutunit != "Final Gauge Length" && paraname_withoutunit != "Elongation")//&& paraname_withoutunit !="Ultimate Load" && paraname_withoutunit !="Yield Load" && paraname_withoutunit !="1% Proof Load" && paraname_withoutunit !="0.2% Proof Load"  //////////&& paraname_withoutunit !="U.T.S." && paraname_withoutunit !="Yield Strength" && paraname_withoutunit !="1% Proof Stress" && paraname_withoutunit !="0.2% Proof Stress"
                            {
                                if (cell1[3].childNodes[0].value != "" && cell1[3].childNodes[0].value != "--")
                                    min = parseFloat(cell1[3].childNodes[0].value);

                                if (cell1[4].childNodes[0].value != "" && cell1[4].childNodes[0].value != "--")
                                    max = parseFloat(cell1[4].childNodes[0].value);
                                if (min != null && max !== null && min.toString() != "undefined" && max.toString() != "undefined" && min.toString() != "NaN" && max.toString() !== "NaN") {
                                    if (cell.childNodes[j].value != "") {
                                        var result = cell.childNodes[j].value;
                                        if (result.toString() != "undefined" && result.toString() != "NaN") {
                                            if (result >= min && result <= max && flag == 0) {
                                                Remark = 'Satisfactory';
                                                flag = 0;
                                            }
                                            else {
                                                flag = 1;
                                                Remark = 'Unsatisfactory';
                                            }
                                        }
                                    }
                                } // if min max not null
                                ///////////////// 29 may javascript code  added
                                if (min == null && max !== null) {
                                    if (cell.childNodes[j].value != "") {
                                        var result = cell.childNodes[j].value;
                                        if (result.toString() != "undefined" && result.toString() != "NaN") {
                                            if (parseFloat(result) <= parseFloat(max) && flag == 0) {
                                                Remark = 'Satisfactory';
                                                flag = 0;
                                            }
                                            else {
                                                flag = 1;
                                                Remark = 'Unsatisfactory';
                                            }
                                        }
                                    }
                                }
                                else if (min != null && max == null) {
                                    if (cell.childNodes[j].value != "") {
                                        var result = cell.childNodes[j].value;
                                        if (result.toString() != "undefined" && result.toString() != "NaN") {
                                            if (parseFloat(result) >= parseFloat(min) && flag == 0) {
                                                Remark = 'Satisfactory';
                                                flag = 0;
                                            }
                                            else {
                                                flag = 1;
                                                Remark = 'Unsatisfactory';
                                            }
                                        }
                                    }
                                }
                                //////////////////////// 29 may 2011
                            }
                        } /////// cell type is text
                    }
                }
            } // end of for grid loop           
            document.getElementById("<%=txtsampleremark.ClientID%>").value = Remark;
        }
    </script>

    <script type="text/javascript" language="javascript">
        //Show editable data    
        function ShowCustomerdata(customerid) {
            WebService.FetchOneCustomer(customerid, DisplayResult);
        }
        
        function DisplayResult(result) {
            var doc;
            if (window.ActiveXObject) {
                doc = new ActiveXObject("Microsoft.XMLDOM");
                doc.async = "false";
                doc.loadXML(result);
            }
            else {
                var parser = new DOMParser();
                var doc = parser.parseFromString(result, "text/xml");
            }
            var root = doc.documentElement.childNodes;
            var tags;
            for (var i = 0; i < root.length; i++) {
                if (root[i].nodeType == 1) {
                    tags = root[i].childNodes;
                }
            }
            for (var i = 0; i < tags.length; i++) {
                if (tags[i].nodeType == 1) {
                    var xmlvalue; //=tags[i].childNodes[0].nodeValue; 
                    if (tags[i].childNodes[0] != null)
                        xmlvalue = tags[i].childNodes[0].nodeValue;
                    else
                        xmlvalue = "--";
                    switch (tags[i].nodeName) {
                        case "CustID":
                            document.getElementById('<%=hdncustid.ClientID%>').value = xmlvalue;
                            break;
                        case "CustNm":
                            document.getElementById('<%=txtUpdateName.ClientID%>').value = xmlvalue;
                            break;
                        case "CustAddress":
                            document.getElementById('<%=txtUpdateAddress.ClientID%>').value = xmlvalue;
                            break;
                        case "CustPhone":
                            document.getElementById('<%=txtUpdatePhoneNo.ClientID%>').value = xmlvalue;
                            break;
                        case "CustEmail":
                            document.getElementById('<%=txtUpdateUserName.ClientID%>').value = xmlvalue;
                            break;
                        case "CustContactPerson":
                            document.getElementById('<%=txtUpdateCustContactPerson.ClientID%>').value = xmlvalue;
                            break;
                    }
                }
            }
        }
    </script>

    <script type="text/javascript" language="javascript">
        //     var theForm = document.forms['aspnetForm'];
        //if (!theForm) {
        //    theForm = document.aspnetForm;
        //}
        //function __doPostBack(eventTarget, eventArgument) {
        //    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
        //        theForm.__EVENTTARGET.value = eventTarget;
        //        theForm.__EVENTARGUMENT.value = eventArgument;
        //        theForm.submit();
        //    }
        //}

        function ShowChemicalReport(itemid) {
            window.open("ChemicalTestReport.aspx?ItemID=" + itemid + "", 'welcome', 'left=380,top=40,width=700,height=440,menubar=yes,status=yes,location=yes,toolbar=yes,scrollbars=yes');
        }

        function ShowChallanReport(challanID) {
            window.open("ChallanReport.aspx?ChallanID=" + challanID + "", 'welcome', 'left=380,top=40,width=700,height=440,menubar=yes,status=yes,location=yes,toolbar=yes,scrollbars=yes');
            return false;
        }
        
        function HideItempopup() {
            $find("mdlPopupWitness").hide();
            return false;
        }
        
        function ReleaseForPrinting(btnrelease, btnreport) {
            var str = confirm('Are You Confirm You Want To Release For Printing');
            if (str == true) {
                document.getElementById(btnrelease.id).disabled = false;
                document.getElementById(btnreport.id).disabled = false;
                return true;
            }
            else {
                document.getElementById(btnrelease.id).disabled = false;
                return false;
            }
        }

        function ShowPrintDate(sender, e) {
            sender._popupBehavior._element.style.zIndex = 200000;
        }

        function ShowCalRegdate(sender, e) {
            sender._popupBehavior._element.style.zIndex = 200000;
        }
        
        function ShowCalChallandate(sender, e) {
            sender._popupBehavior._element.style.zIndex = 200000;
        }
        
        function showReportDeliveryDate(sender, e) {
            sender._popupBehavior._element.style.zIndex = 200000;
        }

        function ShowCaleditChallandate(sender, e) {
            sender._popupBehavior._element.style.zIndex = 300000;
        }
        
        function showReporteditDeliveryDate(sender, e) {
            sender._popupBehavior._element.style.zIndex = 300000;
        }

        function ShowTodaysdate(sender, e) {
            sender._popupBehavior._element.style.zIndex = 200000;
        }
        
        function checkfunction(chk, lblinvoice, txtinvoice, lbldate, txtdate, img, lblinvoiceamount, txtinvoiceamount) {
            if (chk.checked) {
                document.getElementById(lblinvoice.id).style.display = "";
                document.getElementById(txtinvoice.id).style.display = "";
                document.getElementById(lblinvoiceamount.id).style.display = "";
                document.getElementById(txtinvoiceamount.id).style.display = "";
                document.getElementById(lbldate.id).style.display = "";
                document.getElementById(txtdate.id).style.display = "";
                document.getElementById(img.id).style.display = "";
            }
            else {
                document.getElementById(lblinvoice.id).style.display = "none";
                document.getElementById(txtinvoice.id).style.display = "none";
                document.getElementById(lbldate.id).style.display = "none";
                document.getElementById(txtdate.id).style.display = "none";
                document.getElementById(img.id).style.display = "none";
                document.getElementById(lblinvoiceamount.id).style.display = "none";
                document.getElementById(txtinvoiceamount.id).style.display = "none";
            }
        }
        
        function expandcollapse(obj, row) {
           
            var strobj = obj;
            var clickrow = row;
            var str;
            if (document.getElementById(obj) != null) {
                str = document.getElementById(obj).id;
                if (clickrow == "one")
                    document.getElementById('<%=hdncustid.ClientID %>').value = str.substring(3);
                if (clickrow == "two")
                    document.getElementById('<%=hdnchallanid.ClientID %>').value = str.substring(4);
               if (clickrow == "three")
                    document.getElementById('<%=hdnitemid.ClientID %>').value = str.substring(4);
//               
                //       if(clickrow=="four" )
                //       document.getElementById('<%=hdntesttype.ClientID %>').value=str.substring(3);

                // alert(document.getElementById('<%=hdntesttype.ClientID %>').value);
                //alert(document.getElementById('<%=hdncustid.ClientID %>').value+"-"+ document.getElementById('<%=hdnchallanid.ClientID %>').value+"-"+document.getElementById('<%=hdnitemid.ClientID %>').value)

                var div = document.getElementById(obj);
                var img = document.getElementById('img' + obj);
                if (div.style.display == "none") 
                {
                    div.style.display = "block";
                    if (row == 'alt') {
                        img.src = "minus.gif";
                    }
                    else {
                        img.src = "minus.gif";
                    }
                    img.alt = "Close to view other Customers";
                }
                else 
                {
                    div.style.display = "none";
                    if (row == 'alt') {
                        img.src = "plus.gif";
                    }
                    else {
                        img.src = "plus.gif";
                    }
                    img.alt = "Expand to show Orders";
                }
            }
        }
        
        function ShowSpec(sender, e) {
            sender._popupBehavior._element.style.zIndex = 200000;
        }

        function ShoweditSpec(sender, e) {
            sender._popupBehavior._element.style.zIndex = 200000;
        }

        function PrintReport() {
            var custid = 0;
            var fromdate = "", todate = "", sample = "", status = "", CustNm = ""; ;
            if (document.getElementById('<%=hiddenCustId.ClientID%>').value != "")
                custid = document.getElementById('<%=hiddenCustId.ClientID%>').value;
            else
                custid = 'null';
            if (document.getElementById('<%=txtSearchCustomer.ClientID%>').value != "" && document.getElementById('<%=txtSearchCustomer.ClientID%>').value != "Type Alphabet to Get Customer List")
                CustNm = document.getElementById('<%=txtSearchCustomer.ClientID%>').value;
            else
                CustNm = 'null';
            if (document.getElementById('<%=txtsample.ClientID%>').value != "")
                sample = document.getElementById('<%=txtsample.ClientID%>').value;
            else
                sample = 'null';
            if (document.getElementById('<%=txtfromdate.ClientID%>').value != "")
                fromdate = document.getElementById('<%=txtfromdate.ClientID%>').value;
            else
                fromdate = 'null';
            if (document.getElementById('<%=txttodate.ClientID%>').value != "")
                todate = document.getElementById('<%=txttodate.ClientID%>').value;
            else
                todate = 'null';
            if (document.getElementById('<%=ddlcustomer_Status.ClientID%>').value != "Select")
                status = document.getElementById('<%=ddlcustomer_Status.ClientID%>').value;
            else
                status = 'null';
            window.open('ChemicalReport.aspx?CustID=' + custid + '&Status=' + status + '&SampleNo=' + sample + '&FromDate=' + fromdate + '&ToDate=' + todate + '&CustNm=' + CustNm + '', 'Popup', 'top=80,left=100,width=1090,height=510,toolbar=no,scrollbars=yes, resizable=yes');
        }

        function ValidateItem() {
            if (document.getElementById('<%=txtItemNm.ClientID%>').value == "") {
                alert("Please Enter Sample No");
                document.getElementById('<%=txtItemNm.ClientID%>').focus();
                return false;
            }
            else if (document.getElementById('<%=txtSpecification.ClientID%>').value == "") {
                alert("Please Select Specification");
                document.getElementById('<%=txtSpecification.ClientID%>').focus();
                return false;
            }
            else if (document.getElementById('<%=ddlGrade.ClientID%>').value == "" || document.getElementById('<%=ddlGrade.ClientID%>').value == "Select") {
                alert("Please Select Grade");
                document.getElementById('<%=ddlGrade.ClientID%>').focus();
                return false;
            }
        }

        function fnVal(evt) {
            document.getElementById('<%=hiddenCustId.ClientID%>').value = evt.selMenuItem.value;
        }

        function fnSpecVal(evt) {
            document.getElementById('<%=hdnSpecid.ClientID%>').value = evt.selMenuItem.value;
        }

        function GetCode(source, eventArgs) {
            document.getElementById('<%=hdnSpecid.ClientID%>').value = eventArgs.get_value();
        }
        
        function clearfromdate(e) {
            document.getElementById('<%=txtfromdate.ClientID%>').value = '';
        }
        
        function cleartodate(e) {
            document.getElementById('<%=txttodate.ClientID%>').value = '';
        }

        function validateChallanDetails() {
            if (document.getElementById('<%=txtCustChallanNo.ClientID%>').value == "") {
                alert("Please Enter Customer Challan No.");
                document.getElementById('<%=txtCustChallanNo.ClientID%>').focus();
                return false;
            }
            else if (document.getElementById('<%=txtCustChallanDate.ClientID%>').value == "") {
                alert("Please Enter Customer Challan Date");
                document.getElementById('<%=txtCustChallanDate.ClientID%>').focus();
                return false;
            }
            else if (document.getElementById('<%=txtReportDeliveryDate.ClientID%>').value == "") {
                alert("Please Enter Report Delivery Date.");
                document.getElementById('<%=txtReportDeliveryDate.ClientID%>').focus();
                return false;
            }

            //            if(document.getElementById('<%=txtCustChallanDate.ClientID%>').value !="")
            //           {
            //                var challandate=document.getElementById('<%=txtCustChallanDate.ClientID%>').value;
            //                var currentTime = new Date();
            //                var month = currentTime.getMonth() + 1;
            //                var day = currentTime.getDate();
            //                var year = currentTime.getFullYear();
            //                var currentdate=month + "/" + day + "/" + year;
            //               if(comparedates(currentdate,challandate,"Customer Challan Date Must Be Greater Than Current Date",document.getElementById('<%=txtCustChallanDate.ClientID%>'))==false)
            //               return false;
            //              
            //          }

            if (document.getElementById('<%=txtCustChallanDate.ClientID%>').value != "" && document.getElementById('<%=txtReportDeliveryDate.ClientID%>').value != "") {
                var challandate = document.getElementById('<%=txtCustChallanDate.ClientID%>').value;
                var deliverydate = document.getElementById('<%=txtReportDeliveryDate.ClientID%>').value;
                if (comparedates(challandate, deliverydate, "Report Delivery Date Must Be Greater Than Customer Challan Date", document.getElementById('<%=txtReportDeliveryDate.ClientID%>')) == false)
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
        
        function funCustDate(e) {
            document.getElementById('<%=txtCustChallanDate.ClientID%>').value = "";
        }

        function funRegDate(e) {
            document.getElementById('<%=txtRegDate.ClientID%>').value = "";
        }
        
        function funReportDelDate(e) {
            document.getElementById('<%=txtReportDeliveryDate.ClientID%>').value = "";
        }
    </script>

    <script type="text/javascript" language="javascript">
        function validateIfParentisChecked() {
            if (document.getElementById('<%=txtItemNm.ClientID%>').value == "") {
                alert("Please Enter Sample No");
                document.getElementById('<%=txtItemNm.ClientID%>').focus();
                return false;
            }
            //        else   if(document.getElementById('<%=txtSpecification.ClientID%>').value=="" || document.getElementById('<%=txtSpecification.ClientID%>').value=="Type Alphabet to Get Specification List")
            //        {
            //            alert("Please Select Specification");
            //            document.getElementById('<%=txtSpecification.ClientID%>').focus();
            //            return false;
            //        }
            //        else  if(document.getElementById('<%=ddlGrade.ClientID%>').value=="" || document.getElementById('<%=ddlGrade.ClientID%>').value=="Select")
            //        {
            //            alert("Please Select Grade");
            //            document.getElementById('<%=ddlGrade.ClientID%>').focus();
            //            return false;
            //        }
            
            else {
                var div = document.getElementById('ctl00_ContentPlaceHolder2_divtree');
                var chk = document.getElementsByTagName('input', div);
                for (var i = 0; i < chk.length; i++) {
                    if (chk[i].type == 'checkbox') {
                        var chkTestCat = document.getElementById(chk[i].id);
                        if (chkTestCat.checked) {
                            var strtestcatnm = chkTestCat.nextSibling.innerHTML;
                            if (strtestcatnm.toString() == 'Mechanical Test') catid = 1;
                            else if (strtestcatnm.toString() == 'Chemical Test') catid = 2;
                            else if (strtestcatnm.toString() == 'Microstructure') catid = 3;
                            else if (strtestcatnm.toString() == 'Metallographic') catid = 4;
                            else if (strtestcatnm.toString() == 'Corrosion') catid = 5;
                            if (strtestcatnm.toString() == 'Mechanical Test' && catid == 1 && document.getElementById("ctl00_ContentPlaceHolder2_ddlSpcimenn").value == "Select") {
                                alert("Please Select Specimen For " + strtestcatnm.toString());
                                return false;
                            }
                            else if (strtestcatnm.toString() == 'Mechanical Test' && catid == 1 && (document.getElementById("ctl00_ContentPlaceHolder2_txtMechanicalTest_1").value == "" || document.getElementById("ctl00_ContentPlaceHolder2_txtMechanicalTest_1").value.toString() == "0")) {
                                alert("Enter Quantity For No. Of Result For " + strtestcatnm.toString());
                                return false;
                            }
                            else if (strtestcatnm.toString() == 'Chemical Test' && catid == 2 && document.getElementById("ctl00_ContentPlaceHolder2_txtChemicalTest_2").value == "") {
                                alert("Enter Quantity For No. Of Result For " + strtestcatnm.toString());
                                return false;
                            }
                            else if (strtestcatnm.toString() == 'Microstructure' && catid == 3 && document.getElementById("ctl00_ContentPlaceHolder2_txtMicrostructure_3").value == "") {
                                alert("Enter Quantity For No. Of Result For " + strtestcatnm.toString());
                                return false;
                            }
                            else if (strtestcatnm.toString() == 'Metallographic' && catid == 4 && document.getElementById("ctl00_ContentPlaceHolder2_txtMetallographic_4").value == "") {
                                alert("Enter Quantity For No. Of Result For " + strtestcatnm.toString());
                                return false;
                            }
                            else if (strtestcatnm.toString() == 'Corrosion' && catid == 5 && document.getElementById("ctl00_ContentPlaceHolder2_txtCorrosion_5").value == "") {
                                alert("Enter Quantity For No. Of Result For " + strtestcatnm.toString());
                                return false;
                            }
                            else {
                                var parentTable = GetParentByTagName('table', chkTestCat);
                                var nxtSibling = parentTable.nextSibling;
                                if (nxtSibling && nxtSibling.nodeType == 1)//check if nxt sibling is not null & is an element node
                                {
                                    if (nxtSibling.tagName.toLowerCase() == 'div') //if node has children
                                        var nochildrenchecked = checkNoChildrenAreChecked(parentTable.nextSibling, chkTestCat.checked);
                                    if (nochildrenchecked == false) {
                                        alert('Please Check Atleast One Para For' + chkTestCat.nextSibling.innerHTML);
                                        return false;
                                    }
                                    else {
                                        continue;
                                    }
                                }
                            }
                        } /////end of if checkboc is checked
                    } ////end of if chekbox
                } /////end of for
            }
        }

        function checkNoChildrenAreChecked(childContainer, check) {
            var flag = false;
            var RootTrv = GetParentByTagName('div', childContainer.previousSibling);
            var parentDiv = GetParentByTagName('div', childContainer);
            var strid = parentDiv.id;
            var testcatid = strid.substring(3);
            var parentNodeTable = parentDiv.previousSibling;
            var childChkBoxes = childContainer.getElementsByTagName('input');
            var childChkBoxCount = childChkBoxes.length;
            for (var i = 0; i < childChkBoxCount; i++) {
                if (childChkBoxes[i].checked == true) {
                    flag = true;
                    return flag;
                }
                else if (childChkBoxes[i].checked == false) {
                    flag = false;
                    continue;
                }
            }
            return flag;
        }
    </script>

    <script language="javascript" type="text/javascript">
        function OnCheckBoxCheckChanged(evt) {
            var src = window.event != window.undefined ? window.event.srcElement : evt.target;
            var isChkBoxClick = (src.tagName.toLowerCase() == 'input' && src.type == 'checkbox');
            if (isChkBoxClick) {
                var parentTable = GetParentByTagName('table', src);
                var nxtSibling = parentTable.nextSibling;
                if (nxtSibling && nxtSibling.nodeType == 1)//check if nxt sibling is not null & is an element node
                {
                    if (nxtSibling.tagName.toLowerCase() == 'div') //if node has children
                    {
                        //check or uncheck children at all levels
                        if (src.checked == false)
                            CheckUncheckChildren(parentTable.nextSibling, src.checked);
                        //check or uncheck parents at all levels
                        if (src.checked == true) {
                            if (document.getElementById('<%=hdnSpecid.ClientID%>').value != "" && document.getElementById('<%=ddlGrade.ClientID%>').value != "Select")
                                WebService.GetParaList(document.getElementById('<%=hdnSpecid.ClientID%>').value, document.getElementById('<%=ddlGrade.ClientID%>').value, DisplayParaResult); //typeNodeTable.childNodes[0].nodeValue
                            CheckUncheckParents(src, src.checked);
                        }
                    }
                }
            }
            if (AreAllSiblingsChecked(src) == true)
                CheckUncheckParents(src, true);
            else
                CheckUncheckParents(src, false);
        }
        
        function CheckUncheckChildren(childContainer, check) {
            var childChkBoxes = childContainer.getElementsByTagName('input');
            var childChkBoxCount = childChkBoxes.length;
            for (var i = 0; i < childChkBoxCount; i++) {
                childChkBoxes[i].checked = check;
            }
        }

        function CheckUncheckParents(srcChild, check) {
            var parentDiv = GetParentByTagName('div', srcChild);
            var parentNodeTable = parentDiv.previousSibling;
            var typeNodeTable = srcChild.nextSibling;

            if (parentNodeTable) {
                var checkUncheckSwitch;
                if (check) //checkbox checked
                {
                    var isAllSiblingsChecked = AreAllSiblingsChecked(srcChild);
                    if (isAllSiblingsChecked)
                        checkUncheckSwitch = true;
                    else
                        checkUncheckSwitch = true;
                    // return; //do not need to check parent if any(one or more) child not checked  
                }
                else //checkbox unchecked
                {
                    checkUncheckSwitch = false;

                }
                var inpElemsInParentTable = parentNodeTable.getElementsByTagName('input');
                if (inpElemsInParentTable.length > 0) {
                    var parentNodeChkBox = inpElemsInParentTable[0];
                    parentNodeChkBox.checked = checkUncheckSwitch;
                    //do the same recursively
                    CheckUncheckParents(parentNodeChkBox, checkUncheckSwitch);
                }
            }
        }
        
        function AreAllSiblingsChecked(chkBox) {
            var parentDiv = GetParentByTagName('div', chkBox);
            var childCount = parentDiv.childNodes.length;
            var totalChkBox = 0, totalChecked = 0;
            for (var i = 0; i < childCount; i++) {
                if (parentDiv.childNodes[i].nodeType == 1) //check if the child node is an element node
                {
                    if (parentDiv.childNodes[i].tagName.toLowerCase() == 'table') {
                        var prevChkBox = parentDiv.childNodes[i].getElementsByTagName('input')[0];
                        //if any of sibling nodes are not checked, return false
                        totalChkBox++;
                        if (prevChkBox.checked) {
                            totalChecked++;
                        }
                    }
                }
            }
            if (totalChecked == totalChkBox)
                return true;
            else if (totalChecked != 0 && totalChecked <= totalChkBox)
                return true;
            else if (totalChecked == 0)
                return false;
        }
        
        //utility function to get the container of an element by tagname
        function GetParentByTagName(parentTagName, childElementObj) {
            var parent = childElementObj.parentNode;
            while (parent.tagName.toLowerCase() != parentTagName.toLowerCase()) {
                parent = parent.parentNode;
            }
            return parent;
        }
        //////////////////////// ajax call
        function DisplayParaResult(result) {
            var doc;
            if (window.ActiveXObject) {
                doc = new ActiveXObject("Microsoft.XMLDOM");
                doc.async = "false";
                doc.loadXML(result);
            }
            else {
                var parser = new DOMParser();
                var doc = parser.parseFromString(result, "text/xml");
            }

            var root = doc.documentElement.childNodes;
            var tags;

            for (var i = 0; i < root.length; i++) {
                var paraid = 0;
                var ParaNm = "";
                if (root[i].nodeType == 1) {
                    tags = root[i].childNodes;
                    for (var j = 0; j < tags.length; j++) {
                        if (tags[j].nodeType == 1) {
                            var xmlvalue; //=tags[i].childNodes[0].nodeValue; 
                            if (tags[j].childNodes[0] != null)
                                xmlvalue = tags[j].childNodes[0].nodeValue;
                            else
                                xmlvalue = "--";

                            switch (tags[j].nodeName) {
                                case "ParaID":
                                    paraid = parseInt(xmlvalue);
                                    break;
                                case "ParaNm":
                                    ParaNm = xmlvalue;
                                    break;
                                case "TestTypeNm":
                                    checkdefaultTestType(xmlvalue, ParaNm);
                                    break;
                            }
                        }
                    }
                }
            }
        }
        
        function checkdefaultTestType(testtypenm, ParaNm) {
            var div = document.getElementById('ctl00_ContentPlaceHolder2_divtree');
            var chk = document.getElementsByTagName('input', div);
            for (var k = 0; k < chk.length; k++) {
                if (chk[k].type == 'checkbox') {
                    var chkTestCat = document.getElementById(chk[k].id);
                    if (chkTestCat.checked) {
                        var strtestcatnm = chkTestCat.nextSibling.innerHTML;
                        if (strtestcatnm == testtypenm) {
                            var parentTable = GetParentByTagName('table', chkTestCat);
                            var nxtSibling = parentTable.nextSibling;
                            var partab = parentTable.nextSibling;
                            checkDefaultPara(parentTable.nextSibling, ParaNm);
                        }
                    }
                }
            }
        }

        function checkDefaultPara(childContainer, ParaNm) {
            var parentDiv = GetParentByTagName('div', childContainer);
            var parentNodeTable = parentDiv.previousSibling;
            var childChkBoxes = childContainer.getElementsByTagName('input');
            var childChkBoxCount = childChkBoxes.length;
            for (var i = 0; i < childChkBoxCount; i++) {
                if (ParaNm.toString() == childChkBoxes[i].nextSibling.innerHTML)
                    childChkBoxes[i].checked = true;
            }
        }

        ////////////////////////////// following script not used 
        function client_OnTreeNodeChecked(val) {
            var obj = window.event.srcElement;
            var treeNodeFound = false;
            var checkedState;
            if (obj.tagName == "INPUT" && obj.type == "checkbox") {
                var treeNode = obj;
                checkedState = treeNode.checked;
                do {
                    obj = obj.parentElement;
                } while (obj.tagName != "TABLE")
                var parentTreeLevel = obj.rows[0].cells.length;
                var parentTreeNode = obj.rows[0].cells[0];
                var tables = obj.parentElement.getElementsByTagName("TABLE");
                var strid = obj.parentElement.id;
                var testid = strid.substring(29);
                var numTables = tables.length
                if (numTables >= 1) {
                    for (i = 0; i < numTables; i++) {
                        if (tables[i] == obj) {
                            treeNodeFound = true;
                            i++;
                            if (i == numTables) {
                                return;
                            }
                        }
                        if (treeNodeFound == true) {
                            var childTreeLevel = tables[i].rows[0].cells.length;
                            if (childTreeLevel > parentTreeLevel) {
                                var cell = tables[i].rows[0].cells[childTreeLevel - 1];
                                var inputs = cell.getElementsByTagName("INPUT");
                                inputs[0].checked = checkedState;
                            }
                            else {
                                return;
                            }
                        }
                    }
                }
            }
        }
    </script>

</asp:Content>
