<%@ page language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="MasterForms_frmAssign, App_Web_frmassign.aspx.6fc3a045" title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Import Namespace="System.Configuration" %>
<%@ Import Namespace="System.Data" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <table width="90%" style="width: 85%; height: 90%; top: 40px; left: 100px">
        <tr>
            <%--<asp:UpdatePanel ID="UpdatePanelmaster" runat="server" ChildrenAsTriggers ="true" UpdateMode="Conditional" >
                    <ContentTemplate>--%>
            <td align="left">
                 <asp:UpdatePanel ID="UpdatePanelggd" runat="server">
                    <ContentTemplate>
                <asp:GridView ID="gridCustomer" AllowPaging="True" BackColor="#f1f1f1" AutoGenerateColumns="false"
                    DataKeyNames="CustID" Style="z-index: 20; left: 100px; position: absolute; top: 152px;
                    width: 100%;" ShowFooter="true" Font-Size="Small" Font-Names="Verdana" runat="server"
                    GridLines="None" OnRowDataBound="gridCustomer_RowDataBound" AllowSorting="true"
                    OnRowCreated="gridCustomer_RowCreated" OnPageIndexChanging="gridCustomer_PageIndexChanging"
                    OnSorting="gridCustomer_Sorting">
                    <RowStyle BackColor="Gainsboro" />
                    <AlternatingRowStyle BackColor="White" />
                    <HeaderStyle BackColor="#0083C1" ForeColor="White" />
                    <FooterStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <a href="javascript:expandcollapse('div<%# Eval("CustID") %>', 'one');">
                                    <img id="imgdiv<%# Eval("CustID") %>" alt="Click to show/hide Orders for Customer <%# Eval("CustID") %>"
                                        width="9px" border="0" src="plus.gif" />
                                </a>
                            </ItemTemplate>
                            <ItemStyle Width="20px" HorizontalAlign="left" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Customer Name" SortExpression="CustomerID">
                            <ItemTemplate>
                                <asp:Label ID="lblCustomerID" Text='<%# Eval("CustNm") %>' runat="server"></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" />
                        </asp:TemplateField>
                        <%-- <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:LinkButton ID="linkDeleteCust" CommandName="Delete" runat="server">Delete</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>--%>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <tr>
                                    <td align="left" colspan="100%">
                                        <div id="div<%# Eval("CustID") %>" style="display: none; position: relative; left: 15px;
                                            overflow: auto; width: 97%">
                                            <%--<asp:UpdatePanel ID="UpdatePanelchallan" runat="server">
                <ContentTemplate>--%>
                                            <asp:GridView ID="GridChallan" AllowPaging="True" AllowSorting="true" BackColor="White"
                                                Style="left: 40px; top: 152px; font-size: 13px; width: 100%; margin-top: 0px;"
                                                AutoGenerateColumns="false" Font-Names="Verdana" runat="server" DataKeyNames="ChallanID"
                                                ShowFooter="true" BorderStyle="Double" OnRowDataBound="GridChallan_RowDataBound"
                                                BorderColor="#0083C1" OnPageIndexChanging="GridChallan_PageIndexChanging" OnSorting="GridChallan_Sorting">
                                                <RowStyle BackColor="Gainsboro" />
                                                <AlternatingRowStyle BackColor="White" />
                                                <HeaderStyle BackColor="#0083C1" ForeColor="White" />
                                                <FooterStyle BackColor="White" />
                                                <Columns>
                                                    <asp:TemplateField>
                                                        <ItemTemplate>
                                                            <a href="javascript:expandcollapse('div<%# Eval("ChallanID") %>', 'two');">
                                                                <img id="imgdiv<%# Eval("ChallanID") %>" alt="Click to show/hide Orders for Challan <%# Eval("ChallanID") %>"
                                                                    width="9px" border="0" src="plus.gif" />
                                                            </a>
                                                        </ItemTemplate>
                                                        <ItemStyle Width="20px" HorizontalAlign="left" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Challans" SortExpression="ChallanID">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblChallanNo" Text='<%# Eval("Cust_Challanno") %>' runat="server"></asp:Label>
                                                        </ItemTemplate>
                                                        <EditItemTemplate>
                                                            <asp:Label ID="lblOrderID" Text='<%# Eval("Cust_Challanno") %>' runat="server"></asp:Label>
                                                        </EditItemTemplate>
                                                        <ItemStyle HorizontalAlign="Left" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField>
                                                        <ItemTemplate>
                                                            <asp:Button ID="btnReport" Text="Print Report" runat="server" />
                                                            <asp:Button ID="btnSendForBilling" Text="Send For Billing" runat="server" />
                                                        </ItemTemplate>
                                                        <ItemStyle HorizontalAlign="Left" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField>
                                                        <ItemTemplate>
                                                            <tr>
                                                                <td colspan="100%">
                                                                    <div id="div<%# Eval("ChallanID") %>" style="display: none; position: relative; left: 40px;
                                                                        overflow: auto; width: 95%; background-color: Blue">
                                                                        <asp:UpdatePanel ID="upitem" runat="server" UpdateMode="Conditional"  >
                                                                                    <ContentTemplate>
                                                                        <asp:GridView ID="GridItem" AllowPaging="True" AllowSorting="true" BackColor="White"
                                                                            Width="100%" Font-Size="13px" AutoGenerateColumns="false" Font-Names="Verdana"
                                                                            runat="server" DataKeyNames="ItemID" ShowFooter="true" BorderStyle="Double" BorderColor="#0083C1"
                                                                            OnPageIndexChanging="GridItem_PageIndexChanging" OnRowDataBound="GridItem_RowDataBound"
                                                                            OnSorting="GridItem_Sorting">
                                                                            <RowStyle BackColor="Gainsboro" />
                                                                            <AlternatingRowStyle BackColor="White" />
                                                                            <HeaderStyle BackColor="#0083C1" ForeColor="White" />
                                                                            <FooterStyle BackColor="White" />
                                                                            <Columns>
                                                                                <asp:TemplateField>
                                                                                    <ItemTemplate>
                                                                                        <a href="javascript:expandcollapse('div<%# Eval("ItemID") %>', 'three');">
                                                                                            <img id="imgdiv<%# Eval("ItemID") %>" alt="Click to show/hide Orders for Customer <%# Eval("ItemID") %>"
                                                                                                style="width: 6px; text-align: right" border="0" src="plus.gif" />
                                                                                        </a>
                                                                                    </ItemTemplate>
                                                                                    <ItemStyle Width="25px" />
                                                                                </asp:TemplateField>
                                                                                <asp:TemplateField HeaderText="Item Name" SortExpression="ItemNm">
                                                                                    <ItemTemplate>
                                                                                        <asp:Label ID="lblitemname" Text='<%# Eval("ItemNm") %>' runat="server"></asp:Label>
                                                                                    </ItemTemplate>
                                                                                    <%-- <ItemStyle Width="150px" HorizontalAlign="Left" />--%>
                                                                                </asp:TemplateField>
                                                                                <asp:TemplateField HeaderText="">
                                                                                    <ItemTemplate>
                                                                                        <asp:Button ID="btnAssignTest" Text="Assign" runat="server" />
                                                                                    </ItemTemplate>
                                                                                    <ItemStyle HorizontalAlign="Left" />
                                                                                </asp:TemplateField>
                                                                                <asp:TemplateField>
                                                                                    <ItemTemplate>
                                                                                        <tr>
                                                                                            <td align="left" colspan="100%">
                                                                                                <div id="div<%# Eval("ItemID") %>" style="display: none; position: relative; left: 40px;
                                                                                                    overflow: auto; width: 98%">
                                                                                                     <%--<asp:UpdatePanel ID="uptesttype" runat="server">
                                                                                                                    <ContentTemplate>--%>
                                                                                                    <asp:GridView ID="GridTestType" EnableViewState="true" AllowPaging="True" AllowSorting="true"
                                                                                                        BackColor="White" Width="98%" Font-Size="13px" AutoGenerateColumns="false" Font-Names="Verdana"
                                                                                                        runat="server" DataKeyNames="TestTypeID" ShowFooter="true" BorderStyle="Double"
                                                                                                        BorderColor="#0083C1" OnRowCommand="GridTestType_RowCommand" OnRowDataBound="GridTestType_RowDataBound"
                                                                                                        OnRowCreated="GridTestType_RowCreated">
                                                                                                        <RowStyle BackColor="Gainsboro" />
                                                                                                        <AlternatingRowStyle BackColor="White" />
                                                                                                        <HeaderStyle BackColor="#0083C1" ForeColor="White" />
                                                                                                        <FooterStyle BackColor="White" />
                                                                                                        <Columns>
                                                                                                            <asp:TemplateField HeaderText="Test Type/Department">
                                                                                                                <ItemTemplate>
                                                                                                                    <%--<asp:Label ID="lblOrderID" Text='<%# Eval("TestTypeNm") %>' runat="server"></asp:Label>--%>
                                                                                                                    <asp:LinkButton ID="lnkShowPara" CommandName="ShowPara" runat="server" CommandArgument='<%# Eval("TestTypeID") %>'> <%# Eval("TestTypeNm") %></asp:LinkButton>
                                                                                                                     
                                                                                                                </ItemTemplate>
                                                                                                                <ItemStyle HorizontalAlign="Left" />
                                                                                                            </asp:TemplateField>
                                                                                                            <asp:TemplateField>
                                                                                                                <ItemTemplate>
                                                                                                                    <tr>
                                                                                                                        <td colspan="100%">
                                                                                                                           <%-- <asp:UpdatePanel ID="uppara" runat="server" UpdateMode="Always" >
                                                                                                                                <ContentTemplate>--%>
                                                                                                                                    <asp:GridView ID="GridPara" AllowPaging="True" AllowSorting="true" BackColor="White"
                                                                                                                                        Width="98%" Font-Size="13px" AutoGenerateColumns="false" Font-Names="Verdana"
                                                                                                                                        runat="server" DataKeyNames="ParaID" ShowFooter="true" BorderStyle="Double" BorderColor="#0083C1"
                                                                                                                                        OnPageIndexChanging="GridPara_PageIndexChanging" OnRowCancelingEdit="GridPara_RowCancelingEdit"
                                                                                                                                        OnRowCommand="GridPara_RowCommand" OnRowCreated="GridPara_RowCreated" OnRowDataBound="GridPara_RowDataBound"
                                                                                                                                        OnRowEditing="GridPara_RowEditing" OnRowUpdating="GridPara_RowUpdating" OnRowDeleted="GridPara_RowDeleted"
                                                                                                                                        OnRowDeleting="GridPara_RowDeleting" OnRowUpdated="GridPara_RowUpdated" OnSorting="GridPara_Sorting">
                                                                                                                                        <RowStyle BackColor="Gainsboro" />
                                                                                                                                        <AlternatingRowStyle BackColor="White" />
                                                                                                                                        <HeaderStyle BackColor="#0083C1" ForeColor="White" />
                                                                                                                                        <FooterStyle BackColor="White" />
                                                                                                                                        <Columns>
                                                                                                                                            <asp:TemplateField ItemStyle-CssClass="rownum">
                                                                                                                                                <ItemTemplate>
                                                                                                                                                    <%# Container.DataItemIndex + 1 %>
                                                                                                                                                </ItemTemplate>
                                                                                                                                                <ItemStyle Width="5%" />
                                                                                                                                            </asp:TemplateField>
                                                                                                                                            <asp:TemplateField HeaderText="Para Name">
                                                                                                                                                <ItemTemplate>
                                                                                                                                                    <asp:Label ID="lblparaid" Text='<%# Eval("ParaID") %>' Visible="false" runat="server"></asp:Label>
                                                                                                                                                    <asp:Label ID="lblparanm" Text='<%# Eval("ParaNm") %>' runat="server"></asp:Label>
                                                                                                                                                </ItemTemplate>
                                                                                                                                                <%--  <EditItemTemplate>
                                                    <asp:TextBox  ID="txtparaname" Text='<%# Eval("ParaNm") %>' runat="server"></asp:TextBox>
                                                </EditItemTemplate>--%>
                                                                                                                                                <ItemStyle Width="25%" />
                                                                                                                                            </asp:TemplateField>
                                                                                                                                          <%--  <asp:BoundField DataField="MinValue" HeaderText="Min Value" ItemStyle-Width="10%" /> --%>
                                                                                                                                            <asp:TemplateField HeaderText="Min Value">
                                                                                                                                                <ItemTemplate>
                                                                                                                                                    <asp:TextBox ID="txtminvalue" Text='<%# Eval("MinValue") %>' Width="80%" BackColor="Transparent"
                                                                                                                                                        BorderStyle="None" runat="server"></asp:TextBox>
                                                                                                                                                </ItemTemplate>
                                                                                                                                                <%--<EditItemTemplate>
                                                                                                                                                       <asp:TextBox id="txtminvalue" Text='<%# Eval("MinValue") %>' runat="server" 
                                                                                                                                                       ></asp:TextBox>
                                                                                                                                                    </EditItemTemplate>--%>
                                                                                                                                               
                                                                                                                                                <ItemStyle Width="10%" />
                                                                                                                                            </asp:TemplateField>
                                                                                                                                           <%-- <asp:BoundField DataField="MaxValue" HeaderText="Max Value" ItemStyle-Width="10%" /> --%>
                                                                                                                                            <asp:TemplateField HeaderText="Max Value">
                                                                                                                                                <ItemTemplate>
                                                                                                                                                    <asp:TextBox ID="txtmaxvalue" Text='<%# Eval("MaxValue") %>' Width="80%" BackColor="Transparent"
                                                                                                                                                        BorderStyle="None" runat="server"></asp:TextBox>
                                                                                                                                                </ItemTemplate>
                                                                                                                                                <ItemStyle Width="10%" />
                                                                  <%--                                                                               <EditItemTemplate>
                                                    
                                                                                                                                                    <asp:TextBox id="txtmaxvalue" Text='<%# Eval("MaxValue") %>' runat="server" 
                                                                                                                                                      ></asp:TextBox>
                                                                                                                                                </EditItemTemplate>--%>
                                                                                                                                            </asp:TemplateField>
                                                                                                                                            <asp:TemplateField HeaderText="Result">
                                                                                                                                                <ItemTemplate>
                                                                                                                                                    <asp:Label ID="lblresult" Text='<%#Eval("Result") %>' runat="server"></asp:Label>
                                                                                                                                                </ItemTemplate>
                                                                                                                                                <EditItemTemplate>
                                                                                                                                                    <asp:TextBox ID="txtresult" Text="" runat="server" Width="90%"></asp:TextBox>
                                                                                                                                                </EditItemTemplate>
                                                                                                                                                <ItemStyle Width="10%" />
                                                                                                                                            </asp:TemplateField>
                                                                                                                                            <asp:TemplateField HeaderText="Remark">
                                                                                                                                                <%-- <ItemTemplate>
                                                                                                                                                    <asp:Label ID="lblremark" Text='<%#Eval("Remark") %>' runat="server"></asp:Label>
                                                                                                                                                </ItemTemplate>--%>
                                                                                                                                                <ItemStyle Width="10%" />
                                                                                                                                                <EditItemTemplate>
                                                                                                                                                    <asp:TextBox ID="txtremark" runat="server" BackColor="Transparent" BorderStyle="None"
                                                                                                                                                        Width="90%" Text=""></asp:TextBox>
                                                                                                                                                </EditItemTemplate>
                                                                                                                                            </asp:TemplateField>
                                                                                                                                            
                                                                                                                                              <asp:TemplateField HeaderText="Remark">
                                                                                                                                                <%-- <ItemTemplate>
                                                                                                                                                    <asp:Label ID="lblremark" Text='<%#Eval("Remark") %>' runat="server"></asp:Label>
                                                                                                                                                </ItemTemplate>--%>
                                                                                                                                                <ItemStyle Width="10%" />
                                                                                                                                                <EditItemTemplate>
                                                                                                                                                    <asp:TextBox ID="txtremarks" runat="server" BackColor="Transparent" BorderStyle="None"
                                                                                                                                                        Width="90%" Text=""></asp:TextBox>
                                                                                                                                                </EditItemTemplate>
                                                                                                                                            </asp:TemplateField>
                                                                                                                                            <asp:CommandField HeaderText="Edit" ShowEditButton="True" ItemStyle-Width="8%" />
                                                                                                                                            <asp:CommandField HeaderText="Delete" ShowDeleteButton="true" ItemStyle-Width="8%" />
                                                                                                                                        </Columns>
                                                                                                                                    </asp:GridView>
                                                                                                                          <%--      </ContentTemplate>
                                                                                                                                <Triggers>
                                                                                                                                    <asp:AsyncPostBackTrigger ControlID="GridPara" EventName="RowDataBound"></asp:AsyncPostBackTrigger>
                                                                                                                                    <asp:AsyncPostBackTrigger ControlID="GridPara" EventName="RowDeleting"></asp:AsyncPostBackTrigger>
                                                                                                                                    <asp:AsyncPostBackTrigger ControlID="GridPara" EventName="RowCancelingEdit"></asp:AsyncPostBackTrigger>
                                                                                                                                    <asp:AsyncPostBackTrigger ControlID="GridPara" EventName="RowEditing"></asp:AsyncPostBackTrigger>
                                                                                                                                    <asp:AsyncPostBackTrigger ControlID="GridPara" EventName="RowUpdating"></asp:AsyncPostBackTrigger>
                                                                                                                                </Triggers>
                                                                                                                            </asp:UpdatePanel>--%>
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </ItemTemplate>
                                                                                                            </asp:TemplateField>
                                                                                                        </Columns>
                                                                                                    </asp:GridView>
<%--                                                                                                    </ContentTemplate>
                                            <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="GridTestType" EventName="RowCommand" />
                                            <asp:AsyncPostBackTrigger ControlID="GridTestType" EventName="RowDataBound" />
                                            </Triggers>

                                            </asp:UpdatePanel> --%>
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
                                            <%-- </ContentTemplate>
                      <Triggers><asp:AsyncPostBackTrigger ControlID="GridChallan" EventName="RowDeleting" /> </Triggers> 
            </asp:UpdatePanel>--%>
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
                </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="gridCustomer" EventName="RowCommand"/>
                        <asp:AsyncPostBackTrigger ControlID="gridCustomer" EventName="RowDeleting"></asp:AsyncPostBackTrigger>
                        <asp:AsyncPostBackTrigger ControlID="gridCustomer" EventName="RowCancelingEdit"></asp:AsyncPostBackTrigger>
                        <asp:AsyncPostBackTrigger ControlID="gridCustomer" EventName="RowEditing"></asp:AsyncPostBackTrigger>
                        <asp:AsyncPostBackTrigger ControlID="gridCustomer" EventName="RowUpdating"></asp:AsyncPostBackTrigger>
                    </Triggers>
                </asp:UpdatePanel>
                <%--  <asp:Button ID="btnAddCustomer" runat="server" Text="Add Customer" />--%>
            </td>
            <%-- </ContentTemplate>
                   
                </asp:UpdatePanel>--%>
        </tr>
        <tr class="tableRow1">
            <td align="center">
               <%--  <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>--%>
                <asp:Button ID="btnShowPopup" runat="server" Visible="false" />
              <%-- <ajaxToolkit:ModalPopupExtender ID="mdlPopupNewPara" BehaviorID="mdlPopupNewPara"    runat="server" TargetControlID="pnlNewPara" PopupControlID="pnlNewPara" CancelControlID="btnCancel"
                                              BackgroundCssClass="modalBackground">                    
                                              </ajaxToolkit:ModalPopupExtender>--%>
                <asp:Panel ID="pnlNewPara" runat="server" CssClass="modalPopup" Style="display: none;">
                    <asp:Panel ID="pnlPara" runat="server" CssClass="modalPopupInner" Width="650px">
                        <%--<asp:UpdatePanel ID="upParaInfo" runat="server">
                                        <ContentTemplate>--%>
                        <table width="100%">
                            <tr align="center">
                                <td>
                                    <asp:GridView ID="gdvItem" runat="server" AllowPaging="True" AllowSorting="True"
                                        AutoGenerateColumns="False" DataKeyNames="ParaID,TestTypeID" ForeColor="#333333"
                                        HeaderStyle-CssClass="myBigFont" PagerStyle-HorizontalAlign="Center" PageSize="10"
                                        RowStyle-CssClass="myGridFont" Width="95%">
                                        <Columns>
                                            <asp:TemplateField HeaderText="Sr.No" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="20px">
                                                <ItemTemplate>
                                                    <%#Container.DataItemIndex+1   %>
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Center" Width="20px" />
                                            </asp:TemplateField>
                                            <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                                                <ItemTemplate>
                                                    <asp:CheckBox ID="Chk" runat="server" />
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Center" />
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="ParaNm" HeaderText="Para Name" ItemStyle-HorizontalAlign="Left"
                                                ItemStyle-Width="300px" SortExpression="ParaNm">
                                                <ItemStyle HorizontalAlign="Left" Width="300px" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="MinValue" HeaderText="Min Value" ItemStyle-HorizontalAlign="Left"
                                                ItemStyle-Width="300px" SortExpression="MinValue">
                                                <ItemStyle HorizontalAlign="Left" Width="300px" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="MaxValue" HeaderText="Max Value" ItemStyle-HorizontalAlign="Left"
                                                ItemStyle-Width="300px" SortExpression="MaxValue">
                                                <ItemStyle HorizontalAlign="Left" Width="300px" />
                                            </asp:BoundField>
                                            <%-- <asp:BoundField DataField="TestTypeID" ItemStyle-HorizontalAlign="Left"
                                                                ItemStyle-Width="300px" SortExpression="TestTypeID">
                                                                <ItemStyle HorizontalAlign="Left" Width="300px" />
                                                            </asp:BoundField>--%>
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
                                    <asp:Button ID="btnSavePara" runat="server" Text="Save" Width="70px" OnClick="btnSavePara_Click"
                                        OnClientClick="alert('ass');" />
                                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" Width="70px" />
                                </td>
                            </tr>
                        </table>
                       <%--  </ContentTemplate>
                                         <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="btnSavePara" />
                                        </Triggers>
                                    </asp:UpdatePanel>--%>
                        <asp:Label ID="lbltestype" runat="server"></asp:Label>
                        
                    </asp:Panel>
                </asp:Panel>
               <%--  </ContentTemplate>
                             <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="btnSavePara" EventName="Click" />
                                        </Triggers>
                        </asp:UpdatePanel>--%>
            </td>
        </tr>
    </table>

    <script type="text/javascript" language="javascript">
   
    var theForm = document.forms['aspnetForm'];
if (!theForm) {
    theForm = document.aspnetForm;
}
function __doPostBack(eventTarget, eventArgument) {
    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
        theForm.__EVENTTARGET.value = eventTarget;
        theForm.__EVENTARGUMENT.value = eventArgument;
        theForm.submit();
    }
}
 function setRemark(minval,maxval,id,txtremark)
 {

var result=parseFloat(id.value);
var max=parseFloat(maxval);
var min=parseFloat(minval);

 if(result >= min && result <= max  )
 {
 txtremark.value='Conforms'; 
 }
 else
 {
 
 txtremark.value='NotConforms';
 }


   

 }
 function ShowParaModalpopup()
       {
     var modal = $find('mdlPopupNewPara'); 
 modal.show();  
 //WebService.FetchPara(testtypeid,DisplayPara);

       }
       


/////////////////////---------------------------

    
    function expandcollapse(obj,row)
    {
   var clickrow=row; 
    var str;
   
   if(document.getElementById(obj)!=null)
   {
      str=document.getElementById(obj).id;
        if(clickrow=="one" )
         document.getElementById('<%=hdncustid.ClientID %>').value=str.substring(3);
        if(clickrow=="two" )
       document.getElementById('<%=hdnchallanid.ClientID %>').value=str.substring(3);
       if(clickrow=="three" )
        document.getElementById('<%=hdnitemid.ClientID %>').value=str.substring(3);
      var div = document.getElementById(obj);
       
        var img = document.getElementById('img' + obj);
      
       
        if (div.style.display == "none")
        {
            div.style.display = "block";
            if (row == 'alt')
            {
                img.src = "minus.gif";
            }
            else
            {
                img.src = "minus.gif";
            }
            img.alt = "Close to view other Customers";
        }
        else
        {
            div.style.display = "none";
            if (row == 'alt')
            {
                img.src = "plus.gif";
            }
            else
            {
                img.src = "plus.gif";
            }
            img.alt = "Expand to show Orders";
        }
   }
   
       
    } 
    </script>

</asp:Content>
