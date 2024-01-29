<%@ page language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="MasterForms_frmDepartmentMaster, App_Web_frmdepartmentmaster.aspx.6fc3a045" title="Manage Department Master" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <asp:UpdatePanel ID="upDeptMaster" runat="server">
        <ContentTemplate>
            <div style="text-align: center;">
                <center>
                    <table style="width: 370px; vertical-align: middle;">
                        <tr class="Tableheading">
                            <td align="center">
                                <asp:Label ID="lblDeptList" Text="Department List" runat="server" Font-Bold="True"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="text-align: center">
                                <asp:Label ID="lblMsg" runat="server" CssClass="myBigFont" Text="No Record Found"
                                    ForeColor="Red"></asp:Label>
                                <asp:GridView ID="gdvDepts" runat="server" HeaderStyle-CssClass="myBigFont" RowStyle-CssClass="myGridFont"
                                    DataKeyNames="DeptId" PagerStyle-HorizontalAlign="Center" AutoGenerateColumns="False"
                                    ForeColor="#333333" Width="650px" AllowPaging="True" AllowSorting="True" PageSize="10"
                                    OnPageIndexChanging="gdvDepts_PageIndexChanging" OnRowCreated="gdvDepts_RowCreated"
                                    OnSorting="gdvDepts_Sorting" OnRowCommand="gdvDepts_RowCommand">
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
                                        <asp:TemplateField HeaderText="Department Name" ItemStyle-Width="200px" ItemStyle-HorizontalAlign="Left"
                                            SortExpression="DeptNm">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lnkbtnDeptName" Text='<%# Eval("DeptNm") %>' CommandArgument='<%# Eval("DeptId") %>'
                                                    CommandName="View" runat="server"></asp:LinkButton>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Left" Width="200px"></ItemStyle>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="DeptDescription" HeaderText="Description" ItemStyle-Width="400px"
                                            ItemStyle-HorizontalAlign="Left" SortExpression="DeptDescription">
                                            <ItemStyle HorizontalAlign="Left" Width="400px"></ItemStyle>
                                        </asp:BoundField>
                                    </Columns>
                                    <PagerStyle HorizontalAlign="Center"></PagerStyle>
                                    <RowStyle CssClass="GridRowStyle" />
                                    <HeaderStyle Font-Bold="True" ForeColor="White" CssClass="Gridheading" />
                                    <AlternatingRowStyle CssClass="GridAlternateRowStyle" />
                                </asp:GridView>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                <asp:Button ID="btnAddDept" runat="server" Text="Add Department" CssClass="normalbutton"
                                    OnClientClick="ClrAllCtrl(0);" OnClick="btnAddDept_Click" Height="26px" Width="131px" />
                                &nbsp;
                                <asp:Button ID="btnDeleteDept" runat="server" Text="Remove Department" CssClass="normalbutton"
                                    OnClientClick="return confirmMsg(this.form)" OnClick="btnDeleteDept_Click" Width="161px" />
                            </td>
                        </tr>
                    </table>
                </center>
            </div>
            <asp:Button ID="btnShowPopup" runat="server" Style="display: none" />
            <ajaxToolkit:ModalPopupExtender ID="mdlPopupNewDept" BehaviorID="mdlPopupNewDept"
                runat="server" TargetControlID="btnAddDept" PopupControlID="pnlNewDept" CancelControlID="btnCancel"
                BackgroundCssClass="modalBackground">
            </ajaxToolkit:ModalPopupExtender>
            <ajaxToolkit:ModalPopupExtender ID="mdlPopupUpdateDept" BehaviorID="mdlPopupUpdateDept"
                runat="server" TargetControlID="btnShowPopup" PopupControlID="pnlUpdateDept"
                CancelControlID="btnUpdateCancel" BackgroundCssClass="modalBackground">
            </ajaxToolkit:ModalPopupExtender>
        </ContentTemplate>
    </asp:UpdatePanel>
    <asp:Panel ID="pnlNewDept" runat="server" CssClass="modalPopup" Style="display: none;">
        <asp:Panel ID="pnlDept" runat="server" CssClass="modalPopupInner" Width="400px">
            <asp:UpdatePanel ID="upDeptInfo" runat="server">
                <ContentTemplate>
                    <div style="text-align: center; width: 100%; margin-top: 5px;">
                        <center>
                            <table style="vertical-align: middle; border-width: 2px; border-style: solid;">
                                <tr>
                                    <td colspan="2" align="center">
                                        <asp:Label ID="lblEnterDept" Text="Department Information" runat="server" Style="font-family: Verdana;
                                            font-size: 14px; color: White; font-weight: bold;"></asp:Label>
                                    </td>
                                </tr>
                                <tr align="center">
                                    <td align="left">
                                        <asp:Label ID="lblEnterDeptName" Text="Department :" runat="server" CssClass="myBigFont"></asp:Label>
                                        <asp:Label ID="lblcdept" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                    </td>
                                    <td align="right">
                                        <asp:TextBox ID="txtDept" runat="server" Text="" Width="250px" MaxLength="100"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr align="center">
                                    <td align="left">
                                        <asp:Label ID="lblEnterDescription" Text="Description :" runat="server" CssClass="myBigFont"></asp:Label>
                                    </td>
                                    <td align="left">
                                        <asp:TextBox ID="txtDescription" runat="server" Text="" Width="250px" MaxLength="150"></asp:TextBox>
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
                                            <asp:Button ID="btnSaveDept" runat="server" Text="Save" Width="70px" OnClientClick="return ValidateNew();"
                                                OnClick="btnSaveDept_Click" />
                                            <asp:Button ID="btnCancel" runat="server" Text="Cancel" Width="70px" OnClientClick="ClrAllCtrl(0);" />
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </center>
                    </div>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="btnSaveDept" EventName="Click" />
                </Triggers>
            </asp:UpdatePanel>
        </asp:Panel>
    </asp:Panel>
    <asp:Panel ID="pnlUpdateDept" runat="server" CssClass="modalPopup" Style="display: none;">
        <asp:Panel ID="pnlUDept" runat="server" CssClass="modalPopupInner" Width="400px">
            <asp:UpdatePanel ID="upUpdateDept" runat="server">
                <ContentTemplate>
                    <div style="text-align: center; width: 100%; margin-top: 5px;">
                        <center>
                            <table style="vertical-align: middle; border-width: 2px; border-style: solid;">
                                <tr>
                                    <td colspan="2" align="center">
                                        <asp:Label ID="lblUpdateDept" Text="Department Information" runat="server" Style="font-family: Verdana;
                                            font-size: 14px; color: White; font-weight: bold;"></asp:Label>
                                    </td>
                                </tr>
                                <tr align="center">
                                    <td align="left">
                                        <asp:Label ID="lblUpdateDeptName" Text="Department :" runat="server" CssClass="myBigFont"></asp:Label>
                                        <asp:Label ID="lblcurdept" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                    </td>
                                    <td align="right">
                                        <asp:TextBox ID="txtUpdateDept" runat="server" Text="" Width="250px" MaxLength="100"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr align="center">
                                    <td align="left">
                                        <asp:Label ID="lblUpdateDesc" Text="Description :" runat="server" CssClass="myBigFont"></asp:Label>
                                    </td>
                                    <td align="right">
                                        <asp:TextBox ID="txtUpdateDesc" runat="server" Text="" Width="250px" MaxLength="150"></asp:TextBox>
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
                                            <asp:Button ID="btnUpdateDept" runat="server" Text="Update" Width="70px" OnClientClick="return ValidateUpdate();"
                                                OnClick="btnUpdateDept_Click" />
                                            <asp:Button ID="btnUpdateCancel" runat="server" Text="Cancel" Width="70px" OnClientClick="ClrAllCtrl(0);" />
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </center>
                    </div>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="btnUpdateDept" EventName="Click" />
                </Triggers>
            </asp:UpdatePanel>
        </asp:Panel>
    </asp:Panel>
    <ajaxToolkit:RoundedCornersExtender ID="RoundedCornersExtender1" runat="server" BehaviorID="RoundedCornersBehavior1"
        TargetControlID="pnlDept" Radius="10" Corners="All" />
    <ajaxToolkit:RoundedCornersExtender ID="RoundedCornersExtender2" runat="server" BehaviorID="RoundedCornersBehavior2"
        TargetControlID="pnlUDept" Radius="10" Corners="All" />

    <script type="text/javascript" language="javascript">
        var TotalChkBx;
        var Counter;

        window.onload = function() {

            //Get total no. of CheckBoxes in side the GridView.
            TotalChkBx = parseInt('<%= this.gdvDepts.Rows.Count %>');
            //Get total no. of checked CheckBoxes in side the GridView.
            Counter = 0;

        }

        function HeaderClick(CheckBox) {
            //Get target base & child control.
            var TargetBaseControl = document.getElementById('<%= this.gdvDepts.ClientID %>');
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
            if (document.getElementById('<%=txtDept.ClientID%>').value == "") {
                alert("Please Enter Department Name.");
                return false;
            }
            else
                return true;
        }

        function ValidateUpdate() {
            if (document.getElementById('<%=txtUpdateDept.ClientID%>').value == "") {
                alert("Please Enter Department Name.");
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
                alert('Department  Not Selected');
                return false;
            }
        }

        function ClrAllCtrl(flag) {
            if (flag == "0") {
                document.getElementById('<%=txtDept.ClientID%>').value = "";
                document.getElementById('<%=txtDescription.ClientID%>').value = "";
            }
            else {
                document.getElementById('<%=txtUpdateDept.ClientID%>').value = "";
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

</asp:Content>
