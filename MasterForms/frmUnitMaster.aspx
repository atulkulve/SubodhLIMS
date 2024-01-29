<%@ page language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="MasterForms_UnitMaster, App_Web_frmunitmaster.aspx.6fc3a045" validaterequest="false" title="Unit Master" %>

<%@ OutputCache NoStore="true" Location="None" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <center>
        <%--<asp:UpdatePanel ID="upUnitMaster" runat="server">
            <ContentTemplate>--%>
        <table style="width: 370px; vertical-align: middle;">
            <tr>
                <td align="center" class="Tableheading">
                    <asp:Label ID="lblUnitList" Text="Unit List" runat="server" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr class="tableRow1 ">
                <td align="center" style="text-align: left">
                    <asp:GridView ID="gdvUnits" runat="server" HeaderStyle-CssClass="myBigFont" RowStyle-CssClass="myGridFont"
                        DataKeyNames="UnitId" PagerStyle-HorizontalAlign="Center" AutoGenerateColumns="False"
                        ForeColor="#333333" Width="363px" AllowPaging="True" AllowSorting="True" PageSize="10"
                        OnPageIndexChanging="gdvUnits_PageIndexChanging" OnRowCommand="gdvUnits_RowCommand"
                        OnRowCreated="gdvUnits_RowCreated" OnSorting="gdvUnits_Sorting">
                        <RowStyle />
                        <Columns>
                            <asp:TemplateField HeaderText="Sr.No" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="20px">
                                <ItemTemplate>
                                    <%#Container.DataItemIndex+1   %>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" Width="20px"></ItemStyle>
                            </asp:TemplateField>
                            <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                                <HeaderTemplate>
                                    <asp:CheckBox ID="ChkAll" runat="server" onclick="return check_uncheck (this );" />
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:CheckBox ID="Chk" runat="server" />
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Unit Name" ItemStyle-Width="150px" ItemStyle-HorizontalAlign="Left"
                                SortExpression="UnitNm">
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkbtnUnitName" Text='<%# Eval("UnitNm") %>' CommandArgument='<%# Eval("UnitId") %>'
                                        CommandName="View" runat="server" OnClientClick="ClrAllCtrl(1);"></asp:LinkButton>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Left" Width="150px"></ItemStyle>
                            </asp:TemplateField>
                            <asp:BoundField DataField="Description" HeaderText="Description" ItemStyle-Width="300px"
                                ItemStyle-HorizontalAlign="Left" SortExpression="Description">
                                <ItemStyle HorizontalAlign="Left" Width="300px"></ItemStyle>
                            </asp:BoundField>
                        </Columns>
                        <PagerStyle HorizontalAlign="Center"></PagerStyle>
                        <HeaderStyle Font-Bold="True" ForeColor="White" CssClass="Gridheading" />
                        <AlternatingRowStyle CssClass="GridAlternateRowStyle" />
                    </asp:GridView>
                </td>
            </tr>
            <tr class="tableRow2 ">
                <td align="center">
                    <asp:Button ID="btnAddUnit" runat="server" Text="Add New Unit" CssClass="normalbutton"
                        OnClientClick="ClrAllCtrl(0);" OnClick="btnAddUnit_Click" />
                    &nbsp;
                    <asp:Button ID="btnDeleteUnit" runat="server" Text="Remove Unit" CssClass="normalbutton"
                        OnClientClick="return confirmMsg(this.form)" OnClick="btnDeleteUnit_Click" />
                </td>
            </tr>
        </table>
        <asp:Button ID="btnShowPopup" runat="server" Style="display: none" />
        <asp:Button ID="btnNewPopup" runat="server" Style="display: none" />
        <ajaxToolkit:ModalPopupExtender ID="mdlPopupNewUnit" BehaviorID="mdlPopupNewUnit"
            runat="server" TargetControlID="btnNewPopup" PopupControlID="pnlNewUnit" CancelControlID="btnCancel"
            BackgroundCssClass="modalBackground">
        </ajaxToolkit:ModalPopupExtender>
        <ajaxToolkit:ModalPopupExtender ID="mdlPopupUpdateUnit" BehaviorID="mdlPopupUpdateUnit"
            runat="server" TargetControlID="btnShowPopup" PopupControlID="pnlUpdateUnit"
            CancelControlID="btnUpdateCancel" BackgroundCssClass="modalBackground">
        </ajaxToolkit:ModalPopupExtender>
        <%--</ContentTemplate>
        </asp:UpdatePanel>--%>
    </center>
    <asp:Panel ID="pnlNewUnit" runat="server" CssClass="modalPopup" Style="display: none">
        <asp:Panel ID="pnlUnit" runat="server" CssClass="modalPopupInner" Width="400px">
            <center>
                <asp:UpdatePanel ID="upUnitInfo" runat="server">
                    <ContentTemplate>
                        <table style="vertical-align: middle; border-width: 2px; border-style: solid;">
                            <tr>
                                <td align="center" colspan="2">
                                    <asp:Label ID="lblEnterUnit" Text="Unit Information" runat="server" Style="font-family: Verdana;
                                        font-size: 14px; color: White; font-weight: bold;"></asp:Label>
                                </td>
                            </tr>
                            <tr align="center">
                                <td colspan="2">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr align="center">
                                <td align="left">
                                    <asp:Label ID="lblEnterUnitName" Text="Unit Name :" runat="server" CssClass="myBigFont"></asp:Label>
                                    <asp:Label ID="lblcUnit" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                </td>
                                <td align="right">
                                    <%--<asp:TextBox ID="txtUnit" runat="server" Text="" MaxLength="100"></asp:TextBox>--%>
                                    <textarea id="txtUnit" runat="server" cols="5" rows="5" name="txtUnit" style="font-family: Verdana;"></textarea>
                                </td>
                            </tr>
                            <tr align="center">
                                <td align="left">
                                    <asp:Label ID="lblEnterDescription" Text="Description :" runat="server" CssClass="myBigFont"></asp:Label>
                                </td>
                                <td align="left">
                                    <asp:TextBox ID="txtDescription" runat="server" Text="" Width="250px" TextMode="MultiLine"
                                        Height="45px" Style="font-family: Verdana; font-size: 12px;" MaxLength="150"></asp:TextBox>
                                </td>
                            </tr>
                            <tr align="center">
                                <td colspan="2">
                                    &nbsp;
                                </td>
                            </tr>
                            <%--<tr align="center">
                                <td align="center" colspan="2">
                                    <div style="text-align: center; width: 100%; margin-top: 5px;">
                                        <asp:Button ID="btnSaveUnit" runat="server" Text="Save" Width="55px" OnClick="btnSaveUnit_Click" />
                                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" Width="55px" OnClientClick="ClrAllCtrl(0);" />
                                    </div>
                                </td>
                            </tr>--%>
                        </table>
                    </ContentTemplate>
                    <%--<Triggers>
                        <asp:AsyncPostBackTrigger ControlID="btnSaveUnit" EventName="Click" />
                    </Triggers>--%>
                </asp:UpdatePanel>
            </center>
            <div style="text-align: center; width: 100%; margin-top: 5px;">
                <asp:Button ID="btnSaveUnit" runat="server" Text="Save" Width="55px" OnClick="btnSaveUnit_Click" />
                <%--OnClientClick="return ValidateNew();"--%>
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" Width="55px" OnClientClick="ClrAllCtrl(0);" />
            </div>
        </asp:Panel>
    </asp:Panel>
    <asp:Panel ID="pnlUpdateUnit" runat="server" CssClass="modalPopup" Style="display: none;">
        <asp:Panel ID="pnlUUnit" runat="server" CssClass="modalPopupInner" Width="400px">
            <center>
                <asp:UpdatePanel ID="upUpdateUnit" runat="server">
                    <ContentTemplate>
                        <table style="vertical-align: middle; border-width: 2px; border-style: solid;">
                            <tr>
                                <td align="center" colspan="2">
                                    <asp:Label ID="lblUpdateUnit" Text="Unit Information" runat="server" Style="font-family: Verdana;
                                        font-size: 14px; color: White; font-weight: bold;"></asp:Label>
                                </td>
                            </tr>
                            <tr align="center">
                                <td colspan="2">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr align="center">
                                <td align="left">
                                    <asp:Label ID="lblUpdateUnitName" Text="Unit Name :" runat="server" CssClass="myBigFont"></asp:Label>
                                    <asp:Label ID="lblcuUnit" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                </td>
                                <td align="right">
                                    <%--<asp:TextBox ID="txtUpdateUnit" runat="server" Text="" MaxLength="100"></asp:TextBox>--%>
                                    <textarea id="txtUpdateUnit" runat="server" cols="5" rows="5" name="txtUpdateUnit"
                                        style="font-family: Verdana;" enableviewstate="false"></textarea>
                                </td>
                            </tr>
                            <tr align="center">
                                <td align="left">
                                    <asp:Label ID="lblUpdateDesc" Text="Description :" runat="server" CssClass="myBigFont"></asp:Label>
                                </td>
                                <td align="right">
                                    <asp:TextBox ID="txtUpdateDesc" runat="server" Text="" Width="250px" TextMode="MultiLine"
                                        Height="45px" Style="font-family: Verdana; font-size: 12px;" MaxLength="150"></asp:TextBox>
                                </td>
                            </tr>
                            <tr align="center">
                                <td colspan="2">
                                    &nbsp;
                                </td>
                            </tr>
                            <%--<tr align="center">
                                <td align="center" colspan="2">
                                    <div style="text-align: center; width: 100%; margin-top: 5px;">
                                        <asp:Button ID="btnUpdateUnit" runat="server" Text="Update" Width="70px" OnClientClick="return ValidateUpdate();"
                                            OnClick="btnUpdateUnit_Click" />
                                        <asp:Button ID="btnUpdateCancel" runat="server" Text="Cancel" Width="70px" OnClientClick="ClrAllCtrl(1);" />
                                    </div>
                                </td>
                            </tr>--%>
                        </table>
                    </ContentTemplate>
                    <%--<Triggers>
                        <asp:AsyncPostBackTrigger ControlID="btnUpdateUnit" EventName="Click" />
                    </Triggers>--%>
                </asp:UpdatePanel>
            </center>
            <div style="text-align: center; width: 100%; margin-top: 5px;">
                <asp:Button ID="btnUpdateUnit" runat="server" Text="Update" Width="70px" OnClientClick="return ValidateUpdate();"
                    OnClick="btnUpdateUnit_Click" />
                <asp:Button ID="btnUpdateCancel" runat="server" Text="Cancel" Width="70px" OnClientClick="ClrAllCtrl(1);" />
            </div>
        </asp:Panel>
    </asp:Panel>
    <ajaxToolkit:RoundedCornersExtender ID="RoundedCornersExtender1" runat="server" BehaviorID="RoundedCornersBehavior1"
        TargetControlID="pnlUnit" Radius="10" Corners="All" />
    <ajaxToolkit:RoundedCornersExtender ID="RoundedCornersExtender2" runat="server" BehaviorID="RoundedCornersBehavior2"
        TargetControlID="pnlUUnit" Radius="10" Corners="All" />

    <script src="../scripts/ckeditor/ckeditor.js" type="text/javascript"></script>

    <script src="../scripts/ckeditor/adapters/jquery.js" type="text/javascript"></script>

    <script type="text/javascript" src="../scripts/jquery-1.3.2.min.js"></script>

    <script src="../scripts/myAjax.js" type="text/javascript"></script>

    <script type="text/javascript" language="javascript">
        var TotalChkBx;
        var Counter;

        window.onload = function() {

            //Get total no. of CheckBoxes in side the GridView.
            TotalChkBx = parseInt('<%= this.gdvUnits.Rows.Count %>');
            //Get total no. of checked CheckBoxes in side the GridView.
            Counter = 0;

        }

        function HeaderClick(CheckBox) {
            //Get target base & child control.
            var TargetBaseControl = document.getElementById('<%= this.gdvUnits.ClientID %>');
            var TargetChildControl = "Chk";

            //Get all the control of the type INPUT in the base control.
            var Inputs = TargetBaseControl.getElementsByTagName("input");

            //Checked/Unchecked all the checkBoxes in side the GridView.
            for (var n = 0; n < Inputs.length; ++n)
                if (Inputs[n].type == 'checkbox' && Inputs[n].id.indexOf(TargetChildControl, 0) >= 0)
                Inputs[n].checked = CheckBox.checked;
            //Reset Counter
            Counter = CheckBox.checked ? TotalChkBx : 0;
        }

        function ValidateNew() {
            if (document.getElementById('<%=txtUnit.ClientID%>').value == "") {
                alert("Please Enter Unit Name.");
                return false;
            }
            else
                return true;
        }

        function ValidateUpdate() {
            if (document.getElementById('<%=txtUpdateUnit.ClientID%>').value == "") {
                alert("Please Enter Unit Name.");
                return false;
            }
            else
                return true;
        }

        function confirmMsg(frm) {
            var chkd = 0;
            // loop through all elements
            for (i = 0; i < frm.length; i++) {
                // Look for our checkboxes only
                if (frm.elements[i].name.indexOf("Chk") != -1) {
                    // If any are checked then confirm alert, otherwise nothing happens
                    if (frm.elements[i].checked) {
                        chkd = 1;
                        if (confirm('Do you want to Remove Selected Items ?')) {
                            return true;
                        }
                        else
                            return false;
                    }
                }
            }

            if (chkd == "0") {
                alert('Unit Not Selected');
                return false;
            }
        }

        function ClrAllCtrl(flag) {
            if (flag == "0") {
                document.getElementById('<%=txtUnit.ClientID%>').value = "";
                document.getElementById('<%=txtDescription.ClientID%>').value = "";
            }
            else {
                document.getElementById('<%=txtUpdateUnit.ClientID%>').value = "";
                document.getElementById('<%=txtUpdateDesc.ClientID%>').value = "";
            }
        }

        function ChildClick(CheckBox, HCheckBox) {
            //get target base & child control.
            var HeaderCheckBox = document.getElementById(HCheckBox);

            //Modifiy Counter;            
            if (CheckBox.checked && Counter < TotalChkBx)
                Counter++;
            else if (Counter > 0)
                Counter--;

            //Change state of the header CheckBox.
            if (Counter < TotalChkBx)
                HeaderCheckBox.checked = false;
            else if (Counter == TotalChkBx)
                HeaderCheckBox.checked = true;
        }

    </script>

    <script type="text/javascript" language="javascript">
        //<![CDATA[
        // Replace the <textarea id="editor1"> with an CKEditor instance.

        var NewUnit = document.getElementById('<%=txtUnit.ClientID%>')
        var NewUnit = CKEDITOR.replace(NewUnit,
            {
                toolbar: 'myToolBar', skin: 'office2003', width: '255px', height: '30px'
            });

        var UpdateUnit = document.getElementById('<%=txtUpdateUnit.ClientID%>')
        var UpdateUnit = CKEDITOR.replace(UpdateUnit,
            {
                toolbar: 'myToolBar', skin: 'office2003', width: '255px', height: '30px'
            });
        //]]>
    </script>

</asp:Content>
