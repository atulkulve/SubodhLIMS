<%@ page language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="MasterForms_frmTestTypeMaster, App_Web_frmtesttypemaster.aspx.6fc3a045" title="Manage Test Type Master" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <asp:UpdatePanel ID="upTestTypeMaster" runat="server">
        <ContentTemplate>
            <div style="text-align: center;">
            <center>
                <table style="width: 470px; vertical-align: middle;" >
                    <tr class="Tableheading">
                        <td align="center"  colspan="2">
                            <asp:Label ID="lblTestTypeList" Text="TestType List" runat="server" Font-Bold="True"></asp:Label>
                        </td>
                    </tr>
                    <tr align="center">
                                <td align="right" style="width:50%">
                                    <asp:Label ID="Label5" Text="Select Test Category:" runat="server" CssClass="myBigFont"></asp:Label>
                                   
                                </td>
                                <td align="left" style="width:50%">
                                    <asp:DropDownList ID="ddltestcategory" AutoPostBack="true"  runat="server" 
                                        Height="21px" Width="192px" onselectedindexchanged="ddltestcategory_SelectedIndexChanged" 
                                        ></asp:DropDownList>
                                </td>
                            </tr>
                    <tr >
                        <td align="center" style="text-align: center " colspan="2">
                         <asp:Label ID="lblMsg" runat="server" CssClass="myBigFont" Text="No Record Found"
                                ForeColor="Red"></asp:Label>
                           
                            <asp:GridView ID="gdvTestTypes" runat="server" HeaderStyle-CssClass="myBigFont" RowStyle-CssClass="myGridFont"
                                DataKeyNames="TestTypeId" PagerStyle-HorizontalAlign="Center" AutoGenerateColumns="False"
                                ForeColor="#333333" Width="100%" AllowPaging="True" AllowSorting="True" PageSize="10"
                                OnPageIndexChanging="gdvTestTypes_PageIndexChanging" OnRowCommand="gdvTestTypes_RowCommand"
                                OnRowCreated="gdvTestTypes_RowCreated" OnSorting="gdvTestTypes_Sorting">
                                
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
                                    <asp:TemplateField HeaderText="TestType Name" ItemStyle-Width="150px" ItemStyle-HorizontalAlign="Left"
                                        SortExpression="TestTypeNm">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="lnkbtnTestTypeName" Text='<%# Eval("TestTypeNm") %>' CommandArgument='<%# Eval("TestTypeId") %>'
                                                CommandName="View" runat="server"></asp:LinkButton>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Left" Width="150px"></ItemStyle>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="TestTypeDescription" HeaderText="Description" ItemStyle-Width="300px"
                                        ItemStyle-HorizontalAlign="Left" SortExpression="TestTypeDescription">
                                        <ItemStyle HorizontalAlign="Left" Width="300px"></ItemStyle>
                                    </asp:BoundField>
                                </Columns>
                                 <PagerStyle HorizontalAlign="Center"></PagerStyle>
                               <RowStyle CssClass="GridRowStyle"   />
                                <HeaderStyle  Font-Bold="True" ForeColor="White" CssClass="Gridheading" />
                               
                                <AlternatingRowStyle CssClass="GridAlternateRowStyle"  />
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr >
                        <td align="center" colspan="2">
                            <asp:Button ID="btnAddTestType" runat="server" Text="Add New TestType" CssClass="normalbutton"
                                OnClientClick="ClrAllCtrl(0);" Height="26px" Width="155px" />
                            &nbsp;
                            <asp:Button ID="btnDeleteTestType" runat="server" Text="Remove TestType" CssClass="normalbutton"
                                OnClientClick="return confirmMsg(this.form)" OnClick="btnDeleteTestType_Click" />
                        </td>
                    </tr>
                </table>
                </center>
            </div>
            <asp:Button ID="btnShowPopup" runat="server" Style="display: none" />
            <ajaxToolkit:ModalPopupExtender ID="mdlPopupNewTestType" BehaviorID="mdlPopupNewTestType"
                runat="server" TargetControlID="btnAddTestType" PopupControlID="pnlNewTestType" CancelControlID="btnCancel"
                BackgroundCssClass="modalBackground">
            </ajaxToolkit:ModalPopupExtender>
            <ajaxToolkit:ModalPopupExtender ID="mdlPopupUpdateTestType" BehaviorID="mdlPopupUpdateTestType"
                runat="server" TargetControlID="btnShowPopup" PopupControlID="pnlUpdateTestType"
                CancelControlID="btnUpdateCancel" BackgroundCssClass="modalBackground">
            </ajaxToolkit:ModalPopupExtender>
        </ContentTemplate>
    </asp:UpdatePanel>
    <asp:Panel ID="pnlNewTestType" runat="server" CssClass="modalPopup" Style="display: none;">
        <asp:Panel ID="pnlTestType" runat="server" CssClass="modalPopupInner" Width="480px">
            <asp:UpdatePanel ID="upTestTypeInfo" runat="server">
                <ContentTemplate>
                <center>
                    <div style="text-align: center; padding: 10px; width: 90%; margin-top: 5px; ">
                    <center>
                        <table style="vertical-align: middle; border-width: 2px; border-style: solid;width: 100%;  ">
                            <tr>
                                <td colspan="2" align="center" >
                                    <asp:Label ID="lblEnterTestType" Text="TestType Information" runat="server" Style="font-family: Verdana;
                                        font-size: 14px; color: White; font-weight: bold;"></asp:Label>
                                </td>
                            </tr>
                             <tr align="center">
                                <td align="left">
                                    <asp:Label ID="Label1" Text="Test Category:" runat="server" CssClass="myBigFont"></asp:Label>
                                    <asp:Label ID="Label3" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                </td>
                                <td align="left">
                                    <asp:DropDownList ID="ddladdtestCategory" runat="server" Height="21px" Width="254px"></asp:DropDownList>
                                </td>
                            </tr>
                            <tr align="center">
                                <td align="left">
                                    <asp:Label ID="lblEnterTestTypeName" Text="TestType :" runat="server" CssClass="myBigFont"></asp:Label>
                                    <asp:Label ID="lblcTestType" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                </td>
                                <td align="left">
                                    <asp:TextBox ID="txtTestType" runat="server" Text="" Width="250px" MaxLength="100"></asp:TextBox>
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
                                <td align="left">
                                    <asp:Label ID="Label6" Text="Display Observation :" runat="server" CssClass="myBigFont"></asp:Label>
                                </td>
                                <td align="left">
                                    <asp:RadioButton id="rdbtnYes" runat="server" Checked="false" Text="Yes" GroupName="grp"  />  
                                    <asp:RadioButton id="rdbtnNo" runat="server" Checked="true" Text="No" GroupName="grp"  />  
                                </td>
                            </tr>
                            
                            <tr align="center">
                                <td align="left">
                                    <asp:Label ID="Label8" Text="Display Remark :" runat="server" CssClass="myBigFont"></asp:Label>
                                </td>
                                <td align="left">
                                    <asp:RadioButton id="rdBtnRemarkYes" runat="server" Checked="true" Text="Yes" GroupName="grp"  />  
                                    <asp:RadioButton id="rdBtnRemarkNo" runat="server" Checked="false" Text="No" GroupName="grp"  />  
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
                                        <asp:Button ID="btnSaveTestType" runat="server" Text="Save" Width="70px" OnClientClick="return ValidateNew();"
                                            OnClick="btnSaveTestType_Click" />
                                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" Width="70px" OnClientClick="ClrAllCtrl(0);" />
                                    </div>
                                </td>
                            </tr>
                        </table>
                        </center>
                    </div>
                    </center>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="btnSaveTestType" EventName="Click" />
                   
                </Triggers>
            </asp:UpdatePanel>
        </asp:Panel>
    </asp:Panel>
    <asp:Panel ID="pnlUpdateTestType" runat="server" CssClass="modalPopup" Style="display: none;">
        <asp:Panel ID="pnlUTestType" runat="server" CssClass="modalPopupInner" Width="420px">
            <asp:UpdatePanel ID="upUpdateTestType" runat="server">
                <ContentTemplate>
                    <div style="text-align: center; width: 100%; margin-top: 5px;">
                    <center>
                        <table style="vertical-align: middle; border-width: 2px; border-style: solid;">
                            <tr>
                                <td colspan="2" align="center" >
                                    <asp:Label ID="lblUpdateTestType" Text="TestType Information" runat="server" Style="font-family: Verdana;
                                        font-size: 14px; color: White; font-weight: bold;"></asp:Label>
                                </td>
                            </tr>
                            <tr align="center">
                                <td align="left">
                                    <asp:Label ID="Label2" Text="Test Category:" runat="server" CssClass="myBigFont"></asp:Label>
                                    <asp:Label ID="Label4" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                </td>
                                <td align="left">
                                    <asp:DropDownList ID="ddledittestcategory" runat="server" Height="21px" Width="254px"></asp:DropDownList>
                                </td>
                            </tr>
                            <tr align="center">
                                <td align="left">
                                    <asp:Label ID="lblUpdateTestTypeName" Text="TestType :" runat="server" CssClass="myBigFont"></asp:Label>
                                    <asp:Label ID="lblcuTestType" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                </td>
                                <td align="right">
                                    <asp:TextBox ID="txtUpdateTestType" runat="server" Text="" Width="250px" MaxLength="100"></asp:TextBox>
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
                                <td align="left">
                                    <asp:Label ID="Label7" Text="Display Observation :" runat="server" CssClass="myBigFont"></asp:Label>
                                </td>
                                <td align="left">
                                    <asp:RadioButton id="rdbtnedityes" runat="server" Checked="false" Text="Yes" GroupName="grp"  />  
                                    <asp:RadioButton id="rdbtneditno" runat="server" Checked="true" Text="No" GroupName="grp"  />  
                                </td>
                            </tr>
                            <tr align="center">
                                <td align="left">
                                    <asp:Label ID="Label9" Text="Display Remark :" runat="server" CssClass="myBigFont"></asp:Label>
                                </td>
                                <td align="left">
                                    <asp:RadioButton id="rdBtnEditRemarkYes" runat="server" Checked="true" Text="Yes" GroupName="grp"  />  
                                    <asp:RadioButton id="rdBtnEditRemarkNo" runat="server" Checked="false" Text="No" GroupName="grp"  />  
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
                                        <asp:Button ID="btnUpdateTestType" runat="server" Text="Update" Width="70px" OnClientClick="return ValidateUpdate();"
                                            OnClick="btnUpdateTestType_Click" />
                                        <asp:Button ID="btnUpdateCancel" runat="server" Text="Cancel" Width="70px" OnClientClick="ClrAllCtrl(0);" />
                                    </div>
                                </td>
                            </tr>
                        </table>
                        </center>
                    </div>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="btnUpdateTestType" EventName="Click" />
                     
                </Triggers>
            </asp:UpdatePanel>
        </asp:Panel>
    </asp:Panel>
    <ajaxToolkit:RoundedCornersExtender ID="RoundedCornersExtender1" runat="server" BehaviorID="RoundedCornersBehavior1"
        TargetControlID="pnlTestType" Radius="10" Corners="All" />
    <ajaxToolkit:RoundedCornersExtender ID="RoundedCornersExtender2" runat="server" BehaviorID="RoundedCornersBehavior2"
        TargetControlID="pnlUTestType" Radius="10" Corners="All" />

    <script type="text/javascript" language="javascript">
        var TotalChkBx;
        var Counter;

        window.onload = function()
        {
       
            //Get total no. of CheckBoxes in side the GridView.
            TotalChkBx = parseInt('<%= this.gdvTestTypes.Rows.Count %>');
            //Get total no. of checked CheckBoxes in side the GridView.
            Counter = 0;
            
        }
        
        function HeaderClick(CheckBox)
        {
            //Get target base & child control.
            var TargetBaseControl = document.getElementById('<%= this.gdvTestTypes.ClientID %>');
            var TargetChildControl = "Chk";
            
            //Get all the control of the type INPUT in the base control.
            var Inputs = TargetBaseControl.getElementsByTagName("input");
            
            //Checked/Unchecked all the checkBoxes in side the GridView.
            for(var n = 0; n < Inputs.length; ++n)
                if(Inputs[n].type == 'checkbox' && Inputs[n].id.indexOf(TargetChildControl,0) >= 0)
                     Inputs[n].checked = CheckBox.checked;
            //Reset Counter
            Counter = CheckBox.checked ? TotalChkBx : 0;
        }
        
        function ValidateNew()
        {
         if(document.getElementById('<%=ddladdtestCategory.ClientID%>').value=="Select")
            {
            alert("Please Select Test Category");
                return false;
            }
           else if(document.getElementById('<%=txtTestType.ClientID%>').value=="")
            {
                alert("Please Enter TestType Name.");
                return false;
            }
            else
                return true;
        }
        
        function ValidateUpdate()
        {
        
        if(document.getElementById('<%=ddledittestcategory.ClientID%>').value=="Select")
            {
            alert("Please Select Test Category");
                return false;
            }
            else if(document.getElementById('<%=txtUpdateTestType.ClientID%>').value=="")
            {
                alert("Please Enter TestType Name.");
                return false;
            }
            else
                return true;
        }
                
    function confirmMsg(frm)
    {
        var chkd=0;
        // loop through all elements
        for (i = 0; i < frm.length; i++)
        {
            // Look for our checkboxes only
            if (frm.elements[i].name.indexOf("Chk") !=  - 1)
            {
                // If any are checked then confirm alert, otherwise nothing happens
                if (frm.elements[i].checked)
                {
                    chkd =1;
                    if( confirm('Do you want to Remove Selected Items ?'))
                    {                                                   
                        return true ;
                    }
                    else
                    return false ;
                }
            }
        }
        
        if(chkd =="0")
        {
            alert('TestType Not Selected ');
            return false;
        }
    }
    
    function ClrAllCtrl(flag)
    {
        if (flag=="0")
        {
            document.getElementById('<%=txtTestType.ClientID%>').value="";
            document.getElementById('<%=txtDescription.ClientID%>').value=""; 
        }
        else
        {
            document.getElementById('<%=txtUpdateTestType.ClientID%>').value="";
            document.getElementById('<%=txtUpdateDesc.ClientID%>').value=""; 
        }
    }
    
        function ChildClick(CheckBox, HCheckBox)
        {
            //get target base & child control.
            var HeaderCheckBox = document.getElementById(HCheckBox);
                     
            //Modifiy Counter;            
            if(CheckBox.checked && Counter < TotalChkBx)
                Counter++;
            else if(Counter > 0) 
                Counter--;
                
            //Change state of the header CheckBox.
            if(Counter < TotalChkBx)
                HeaderCheckBox.checked = false;
            else if(Counter == TotalChkBx)
                HeaderCheckBox.checked = true;
        }

    </script>

</asp:Content>

