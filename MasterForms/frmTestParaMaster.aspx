<%@ page language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="MasterForms_frmTestParaMaster, App_Web_frmtestparamaster.aspx.6fc3a045" title="Manage Test Para Master" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <style type="text/css">
        table.radioWithProperWrap input
        {
            float: left;
        }
        table.radioWithProperWrap label
        {
            margin-left: 25px;
            display: block;
        }
    </style>
    <asp:UpdatePanel ID="upParaMaster" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <div>
                <center>
                    <table width="70%" style="vertical-align: middle;">
                        <tr class="Tableheading">
                            <td align="center" colspan="4">
                                <asp:Label ID="lblParaList" Text="Para List" runat="server" Font-Bold="True"></asp:Label>
                            </td>
                        </tr>
                        <tr align="center">
                            <td align="right" style="width: 25%">
                                <asp:Label ID="Label7" Text="Select Test Category:" runat="server" CssClass="myBigFont"></asp:Label>
                            </td>
                            <td align="left" style="width: 25%">
                                <asp:DropDownList ID="ddltestcategory" AutoPostBack="true" runat="server" Height="21px"
                                    Width="192px" OnSelectedIndexChanged="ddltestcategory_SelectedIndexChanged">
                                </asp:DropDownList>
                            </td>
                            <td align="right" style="width: 25%">
                                <asp:Label ID="Label5" Text="Select Test Type:" runat="server" CssClass="myBigFont"></asp:Label>
                            </td>
                            <td align="left" style="width: 25%">
                                <asp:DropDownList ID="ddltesttype" AutoPostBack="true" runat="server" Height="21px"
                                    Width="192px" OnSelectedIndexChanged="ddltesttype_SelectedIndexChanged">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="text-align: center" colspan="4">
                                <asp:Label ID="lblMsg" runat="server" CssClass="myBigFont" Text="No Record Found"
                                    ForeColor="Red"></asp:Label>
                                <asp:GridView ID="gdvParas" runat="server" HeaderStyle-CssClass="myBigFont" RowStyle-CssClass="myGridFont"
                                    DataKeyNames="ParaId" PagerStyle-HorizontalAlign="Center" AutoGenerateColumns="False"
                                    ForeColor="#333333" Width="100%" AllowPaging="True" AllowSorting="True" PageSize="10"
                                    OnPageIndexChanging="gdvParas_PageIndexChanging" OnRowCreated="gdvParas_RowCreated"
                                    OnSorting="gdvParas_Sorting" OnRowCommand="gdvParas_RowCommand">
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
                                        <asp:TemplateField HeaderText="Para Name" ItemStyle-Width="200px" ItemStyle-HorizontalAlign="Left"
                                            SortExpression="ParaNm">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lnkbtnParaName" Text='<%# Eval("ParaNm") %>' CommandArgument='<%# Eval("ParaId") %>'
                                                    CommandName="View" runat="server"></asp:LinkButton>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Left" Width="400px"></ItemStyle>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="ParaNomenclature" HeaderText="Para Nomenclature" ItemStyle-Width="400px"
                                            ItemStyle-HorizontalAlign="Left" SortExpression="ParaNomenclature">
                                            <ItemStyle HorizontalAlign="Left" Width="300px"></ItemStyle>
                                        </asp:BoundField>
                                        <asp:BoundField DataField="ParaDescription" HeaderText="Description" ItemStyle-Width="400px"
                                            ItemStyle-HorizontalAlign="Left" SortExpression="ParaDescription">
                                            <ItemStyle HorizontalAlign="Left" Width="300px"></ItemStyle>
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
                            <td align="center" colspan="4">
                                <asp:Button ID="btnAddPara" runat="server" Text="Add Para" CssClass="normalbutton"
                                    OnClientClick="ClrAllCtrl(0);" OnClick="btnAddPara_Click" Height="26px" Width="131px" />
                                &nbsp;
                                <asp:Button ID="btnDeletePara" runat="server" Text="Remove Para" CssClass="normalbutton"
                                    OnClientClick="return confirmMsg(this.form)" OnClick="btnDeletePara_Click" Width="161px" />
                            </td>
                        </tr>
                    </table>
                </center>
            </div>
            <asp:Button ID="btnShowPopup" runat="server" Style="display: none" />
            <ajaxToolkit:ModalPopupExtender ID="mdlPopupNewPara" BehaviorID="mdlPopupNewPara"
                runat="server" TargetControlID="btnAddPara" PopupControlID="pnlNewPara" CancelControlID="btnCancel"
                BackgroundCssClass="modalBackground">
            </ajaxToolkit:ModalPopupExtender>
            <ajaxToolkit:ModalPopupExtender ID="mdlPopupUpdatePara" BehaviorID="mdlPopupUpdatePara"
                runat="server" TargetControlID="btnShowPopup" PopupControlID="pnlUpdatePara"
                CancelControlID="btnUpdateCancel" BackgroundCssClass="modalBackground">
            </ajaxToolkit:ModalPopupExtender>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="ddltesttype" EventName="SelectedIndexChanged" />
            <asp:AsyncPostBackTrigger ControlID="ddltesttype" EventName="SelectedIndexChanged" />
        </Triggers>
    </asp:UpdatePanel>
    <asp:Panel ID="pnlNewPara" runat="server" CssClass="modalPopup" Style="display: none;">
        <%--Style="display: none;"--%>
        <asp:Panel ID="pnlPara" runat="server" CssClass="modalPopupInner" Width="460px">
            <asp:UpdatePanel ID="upParaInfo" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <div style="text-align: center; width: 100%; margin-top: 5px;">
                        <center>
                            <table style="vertical-align: middle; border-width: 2px; border-style: solid; width: 420px">
                                <tr>
                                    <td colspan="2" align="center">
                                        <asp:Label ID="lblEnterPara" Text="Para Information" runat="server" Style="font-family: Verdana;
                                            font-size: 14px; color: White; font-weight: bold;"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left">
                                        <asp:Label ID="Label8" Text="Test Category:" runat="server" CssClass="myBigFont"></asp:Label>
                                        <asp:Label ID="Label9" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                    </td>
                                    <td align="left">
                                        <asp:DropDownList ID="ddladdtestCategory" runat="server" Height="21px" AutoPostBack="true"
                                            Width="250px" OnSelectedIndexChanged="ddladdtestCategory_SelectedIndexChanged">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left">
                                        <asp:Label ID="Label1" Text="Test Type:" runat="server" CssClass="myBigFont"></asp:Label>
                                        <asp:Label ID="Label3" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                    </td>
                                    <td align="left">
                                        <asp:DropDownList ID="ddladdtesttype" runat="server" Height="21px" Width="250px">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left">
                                        <asp:Label ID="lblEnterParaName" Text="Para :" runat="server" CssClass="myBigFont"></asp:Label>
                                        <asp:Label ID="lblcPara" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                    </td>
                                    <td align="left">
                                        <asp:TextBox ID="txtPara" runat="server" Text="" Width="245px" MaxLength="100"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left">
                                        <asp:Label ID="lblEnterDescription" Text="Description :" runat="server" CssClass="myBigFont"></asp:Label>
                                    </td>
                                    <td align="left">
                                        <asp:TextBox ID="txtDescription" runat="server" Text="" Width="245px" MaxLength="150"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left">
                                        <asp:Label ID="LabelParaNomenclature" Text="Para Nomenclature:" runat="server" CssClass="myBigFont"></asp:Label>
                                        <%-- <asp:Label ID="Label2" runat="server" Text="*" ForeColor="Red"></asp:Label>--%>
                                    </td>
                                    <td align="left">
                                        <asp:TextBox ID="txtParaNomenclature" runat="server" Text="" Width="245px" MaxLength="100"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left">
                                        <asp:Label ID="Label14" Text="Data Type:" runat="server" CssClass="myBigFont"></asp:Label>
                                        <asp:Label ID="Label15" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                    </td>
                                    <td align="left">
                                        <asp:DropDownList ID="ddladddatatype" runat="server" Height="21px" Width="250px">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left">
                                        <asp:Label ID="Label12" Text="Para Unit:" runat="server" CssClass="myBigFont"></asp:Label>
                                        <asp:Label ID="Label62" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                    </td>
                                    <td align="left" style="height: 120px;">
                                        <%--<asp:DropDownList ID="ddladdunit" runat="server" Height="21px" Width="205px">
                                        </asp:DropDownList>--%>
                                        <asp:RadioButtonList ID="rblAddUnit" runat="server" CssClass="radioWithProperWrap"
                                            RepeatColumns="3">
                                        </asp:RadioButtonList>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left">
                                        <asp:Label ID="Label18" Text="Default Selection:" runat="server" CssClass="myBigFont"></asp:Label>
                                        <asp:Label ID="Label19" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                    </td>
                                    <td align="left">
                                        <asp:RadioButton ID="rdbtnDefaultNo" runat="server" Text="No" Checked="true" GroupName="btn"
                                            Font-Bold="true" />
                                        <asp:RadioButton ID="rdbtnDefaultYes" runat="server" Text="Yes" GroupName="btn" Font-Bold="true" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2">
                                    </td>
                                </tr>
                            </table>
                        </center>
                    </div>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="ddladdtestCategory" EventName="SelectedIndexChanged" />
                    <asp:AsyncPostBackTrigger ControlID="ddladdtesttype" EventName="SelectedIndexChanged" />
                </Triggers>
            </asp:UpdatePanel>
            <div style="text-align: center; width: 100%; margin-top: 5px;">
                <asp:Button ID="btnSavePara" runat="server" Text="Save" Width="70px" OnClientClick="return ValidateNew();"
                    OnClick="btnSavePara_Click" />
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" Width="70px" />
            </div>
        </asp:Panel>
    </asp:Panel>
    <asp:Panel ID="pnlUpdatePara" runat="server" CssClass="modalPopup" Style="display: none;">
        <asp:Panel ID="pnlUPara" runat="server" CssClass="modalPopupInner" Width="460px">
            <asp:UpdatePanel ID="upUpdatePara" runat="server">
                <ContentTemplate>
                    <div style="text-align: center; width: 100%; margin-top: 5px;">
                        <center>
                            <table style="vertical-align: middle; border-width: 2px; border-style: solid; width: 430px">
                                <tr>
                                    <td colspan="2" align="center">
                                        <asp:Label ID="lblUpdatePara" Text="Para Information" runat="server" Style="font-family: Verdana;
                                            font-size: 14px; color: White; font-weight: bold;"></asp:Label>
                                    </td>
                                </tr>
                                <tr align="center">
                                    <td align="left">
                                        <asp:Label ID="Label10" Text="Test Category:" runat="server" CssClass="myBigFont"></asp:Label>
                                        <asp:Label ID="Label11" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                    </td>
                                    <td align="left">
                                        <asp:DropDownList ID="ddledittestcategory" AutoPostBack="true" runat="server" Height="21px"
                                            Width="250px" OnSelectedIndexChanged="ddledittestcategory_SelectedIndexChanged">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr align="center">
                                    <td align="left">
                                        <asp:Label ID="Label2" Text="Test Type:" runat="server" CssClass="myBigFont"></asp:Label>
                                        <asp:Label ID="Labetyl4" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                    </td>
                                    <td align="left">
                                        <asp:DropDownList ID="ddledittesttype" runat="server" Height="21px" Width="250px">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr align="center">
                                    <td align="left">
                                        <asp:Label ID="lblUpdateParaName" Text="Para :" runat="server" CssClass="myBigFont"></asp:Label>
                                        <asp:Label ID="lblcurPara" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                    </td>
                                    <td align="left">
                                        <asp:TextBox ID="txtUpdatePara" runat="server" Text="" Width="245px" MaxLength="100"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr align="center">
                                    <td align="left">
                                        <asp:Label ID="lblUpdateDesc" Text="Description :" runat="server" CssClass="myBigFont"></asp:Label>
                                    </td>
                                    <td align="left">
                                        <asp:TextBox ID="txtUpdateDesc" runat="server" Text="" Width="245px" MaxLength="150"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr align="center">
                                    <td align="left">
                                        <asp:Label ID="Label6" Text="Para Nomenclature:" runat="server" CssClass="myBigFont"></asp:Label>
                                        <%-- <asp:Label ID="Label2" runat="server" Text="*" ForeColor="Red"></asp:Label>--%>
                                    </td>
                                    <td align="left">
                                        <asp:TextBox ID="txtupdateParaNomenclature" runat="server" Text="" Width="245px"
                                            MaxLength="100"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr align="center">
                                    <td align="left">
                                        <asp:Label ID="Label16" Text="Data Type:" runat="server" CssClass="myBigFont"></asp:Label>
                                        <asp:Label ID="Label17" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                    </td>
                                    <td align="left">
                                        <asp:DropDownList ID="ddleditdatatype" runat="server" Height="21px" Width="250px">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr align="center">
                                    <td align="left">
                                        <asp:Label ID="Labelhy13" Text="Para Unit:" runat="server" CssClass="myBigFont"></asp:Label>
                                        <asp:Label ID="Labehgl2" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                    </td>
                                    <td align="left">
                                        <%--<asp:DropDownList ID="ddleditunit" runat="server" Height="21px" Width="205px">
                                        </asp:DropDownList>--%>
                                        <asp:RadioButtonList ID="rblEditUnit" runat="server" CssClass="radioWithProperWrap"
                                            RepeatColumns="3">
                                        </asp:RadioButtonList>
                                    </td>
                                </tr>
                                <tr align="center">
                                    <td align="left">
                                        <asp:Label ID="Label20" Text="Default Selection:" runat="server" CssClass="myBigFont"></asp:Label>
                                        <asp:Label ID="Label21" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                    </td>
                                    <td align="left">
                                        <asp:RadioButton ID="rdbtneditDefaultNo" runat="server" Text="No" Checked="true"
                                            GroupName="btn" Font-Bold="true" />
                                        <asp:RadioButton ID="rdbtneditDefaultYes" runat="server" Text="Yes" GroupName="btn"
                                            Font-Bold="true" />
                                    </td>
                                </tr>
                                <%--<tr align="center">
                                    <td align="center" colspan="2">
                                        
                                    </td>
                                </tr>--%>
                            </table>
                        </center>
                    </div>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="ddledittesttype" EventName="SelectedIndexChanged" />
                    <asp:AsyncPostBackTrigger ControlID="ddledittestcategory" EventName="SelectedIndexChanged" />
                </Triggers>
            </asp:UpdatePanel>
            <div style="text-align: center; width: 100%; margin-top: 5px;">
                <asp:Button ID="btnUpdatePara" runat="server" Text="Update" Width="70px" OnClientClick="return ValidateUpdate();"
                    OnClick="btnUpdatePara_Click" />
                <asp:Button ID="btnUpdateCancel" runat="server" Text="Cancel" Width="70px" OnClientClick="HideEditParapopup();" />
            </div>
        </asp:Panel>
    </asp:Panel>
    <ajaxToolkit:RoundedCornersExtender ID="RoundedCornersExtender1" runat="server" BehaviorID="RoundedCornersBehavior1"
        TargetControlID="pnlPara" Radius="10" Corners="All" />
    <ajaxToolkit:RoundedCornersExtender ID="RoundedCornersExtender2" runat="server" BehaviorID="RoundedCornersBehavior2"
        TargetControlID="pnlUPara" Radius="10" Corners="All" />

    <script type="text/javascript" language="javascript">
        var TotalChkBx;
        var Counter;
        function HideNewParapopup() {
            $find("mdlPopupNewPara").hide();
            return false;
        }

        function HideEditParapopup() {
            $find("mdlPopupUpdatePara").hide();
            return false;
        }
        window.onload = function() {

            //Get total no. of CheckBoxes in side the GridView.
            TotalChkBx = parseInt('<%= this.gdvParas.Rows.Count %>');
            //Get total no. of checked CheckBoxes in side the GridView.
            Counter = 0;

        }

        function HeaderClick(CheckBox) {
            //Get target base & child control.
            var TargetBaseControl = document.getElementById('<%= this.gdvParas.ClientID %>');
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

            if (document.getElementById('<%=ddladdtestCategory.ClientID%>').value == "Select") {
                alert("Please Select Test Category.");
                document.getElementById('<%=ddladdtestCategory.ClientID%>').focus();
                return false;
            }
            else if (document.getElementById('<%=ddladdtesttype.ClientID%>').value == "Select") {
                alert("Please Select Test Type.");
                document.getElementById('<%=ddladdtesttype.ClientID%>').focus();
                return false;
            }
            else if (document.getElementById('<%=txtPara.ClientID%>').value == "") {
                alert("Please Enter Para Name.");
                document.getElementById('<%=txtPara.ClientID%>').focus();
                return false;
            }
            else if (document.getElementById('<%=ddladddatatype.ClientID%>').value == "Select") {
                alert("Please Select Data Type For Para.");
                document.getElementById('<%=ddladddatatype.ClientID%>').focus();
                return false;
            }
            else {
                var intSelectedIndex = document.getElementById('<%=ddladddatatype.ClientID%>').selectedIndex;
                if (intSelectedIndex != -1) {
                    if (document.getElementById('<%=ddladddatatype.ClientID%>').options[intSelectedIndex].text == "Numeric") {
                        var list = document.getElementById('<%=rblAddUnit.ClientID%>');
                        var inputs = list.getElementsByTagName("input");
                        var selected = false;

                        if (inputs.length == 0) {
                            alert("Please Add Unit For Parameter from Unit Master.");
                            return false;
                        }
                        else if (inputs.length != 0) {
                            for (var i = 0; i < inputs.length; i++) {
                                if (inputs[i].checked) {
                                    selected = true;
                                    break;
                                }
                            }
                            if (selected == false) {
                                alert("Please Select Unit Of Para.");
                                return false;
                            }
                        }
                        else
                            return true;   //final true if all are successful
                    }
                    else
                        return true;   //final true if all are successful
                }
                else
                    return true;   //final true if all are successful
            }
            //else
            //return true;
        }

        function ValidateUpdate() {

            if (document.getElementById('<%=ddledittestcategory.ClientID%>').value == "Select") {
                alert("Please Select Test Category.");
                document.getElementById('<%=ddledittestcategory.ClientID%>').focus();
                return false;
            }
            else if (document.getElementById('<%=ddledittesttype.ClientID%>').value == "Select") {
                alert("Please Select Test Type.");
                document.getElementById('<%=ddledittesttype.ClientID%>').focus();
                return false;
            }
            else if (document.getElementById('<%=txtUpdatePara.ClientID%>').value == "") {
                alert("Please Enter Para Name.");
                return false;
            }
            else if (document.getElementById('<%=ddleditdatatype.ClientID%>').value == "Select") {
                alert("Please Select Data Type.");
                document.getElementById('<%=ddleditdatatype.ClientID%>').focus();
                return false;
            }
            else {
                var intSelectedIndex = document.getElementById('<%=ddleditdatatype.ClientID%>').selectedIndex;
                if (intSelectedIndex != -1) {
                    if (document.getElementById('<%=ddleditdatatype.ClientID%>').options[intSelectedIndex].text == "Numeric") {
                        var list = document.getElementById('<%=rblEditUnit.ClientID%>');
                        var inputs = list.getElementsByTagName("input");
                        var selected = false;

                        if (inputs.length == 0) {
                            alert("Please Add Unit For Parameter from Unit Master.");
                            return false;
                        }
                        else if (inputs.length != 0) {
                            for (var i = 0; i < inputs.length; i++) {
                                if (inputs[i].checked) {
                                    selected = true;
                                    break;
                                }
                            }
                            if (selected == false) {
                                alert("Please Select Unit Of Para.");
                                return false;
                            }
                        }
                        else
                            return true;   //final true if all are successful
                    }
                    else
                        return true;   //final true if all are successful
                }
                else
                    return true;   //final true if all are successful
            }
            //else
            //return true;
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
                        if (confirm('Do you want to Remove Selected Para ?')) {
                            return true;
                        }
                        else
                            return false;
                    }
                }
            }

            if (chkd == "0") {
                alert('Para  Not Selected');
                return false;
            }
        }

        function ClrAllCtrl(flag) {
            if (flag == "0") {
                document.getElementById('<%=txtPara.ClientID%>').value = "";
                document.getElementById('<%=txtDescription.ClientID%>').value = "";
            }
            else {
                document.getElementById('<%=txtUpdatePara.ClientID%>').value = "";
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
