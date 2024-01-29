<%@ page language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="MasterForms_frmTestCategory, App_Web_frmtestcategory.aspx.6fc3a045" title="Test Category Master" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <asp:UpdatePanel ID="upTestCategoryMaster" runat="server">
        <ContentTemplate>
            <div style="text-align: center;">
            <center>
                <table style="width: 40%; vertical-align: middle;">
                    <tr class="Tableheading">
                        <td align="center">
                            <asp:Label ID="lblTestCategoryList" Text="TestCategory List" runat="server" Font-Bold="True"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" style="text-align: center">
                            <asp:Label ID="lblMsg" runat="server" CssClass="myBigFont" Text="No Record Found"
                                ForeColor="Red"></asp:Label>
                            <asp:GridView ID="gdvTestCategorys" runat="server" HeaderStyle-CssClass="myBigFont"
                                RowStyle-CssClass="myGridFont" DataKeyNames="TestCatId" PagerStyle-HorizontalAlign="Center"
                                AutoGenerateColumns="False" ForeColor="#333333" Width="100%" AllowPaging="True"
                                AllowSorting="True" PageSize="10" OnPageIndexChanging="gdvTestCategorys_PageIndexChanging"
                                OnRowCommand="gdvTestCategorys_RowCommand" OnRowCreated="gdvTestCategorys_RowCreated"
                                OnSorting="gdvTestCategorys_Sorting">
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
                                        <ItemStyle HorizontalAlign="Center" Width="15px"></ItemStyle>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="TestCategory " ItemStyle-Width="150px" ItemStyle-HorizontalAlign="Left"
                                        SortExpression="TestCatNm">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="lnkbtnTestCategoryName" Text='<%# Eval("TestCatNm") %>' CommandArgument='<%# Eval("TestCatId") %>'
                                                CommandName="View" runat="server"></asp:LinkButton>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Left" Width="150px"></ItemStyle>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="TestCatDescription" HeaderText="Description" ItemStyle-Width="300px"
                                        ItemStyle-HorizontalAlign="Left" SortExpression="TestCatDescription">
                                        <ItemStyle HorizontalAlign="Left" Width="300px"></ItemStyle>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" ItemStyle-Width="300px"
                                        ItemStyle-HorizontalAlign="Left" SortExpression="Quantity">
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
                        <td align="center">
                            <asp:Button ID="btnAddTestCategory" runat="server" Text="Add New TestCategory" CssClass="normalbutton"
                                OnClientClick="ClrAllCtrl(0);" Height="26px" OnClick="btnAddTestCategory_Click"
                                Width="178px" />
                            &nbsp;
                            <asp:Button ID="btnDeleteTestCategory" runat="server" Text="Remove TestCategory"
                                CssClass="normalbutton" OnClientClick="return confirmMsg(this.form)" OnClick="btnDeleteTestCategory_Click"
                                Width="176px" />
                        </td>
                    </tr>
                </table>
                </center> 
            </div>
            <asp:Button ID="btnShowPopup" runat="server" Style="display: none" />
            <ajaxToolkit:ModalPopupExtender ID="mdlPopupNewTestCategory" BehaviorID="mdlPopupNewTestCategory"
                runat="server" TargetControlID="btnAddTestCategory" PopupControlID="pnlNewTestCategory"
                CancelControlID="btnCancel" BackgroundCssClass="modalBackground">
            </ajaxToolkit:ModalPopupExtender>
            <ajaxToolkit:ModalPopupExtender ID="mdlPopupUpdateTestCategory" BehaviorID="mdlPopupUpdateTestCategory"
                runat="server" TargetControlID="btnShowPopup" PopupControlID="pnlUpdateTestCategory"
                CancelControlID="btnUpdateCancel" BackgroundCssClass="modalBackground">
            </ajaxToolkit:ModalPopupExtender>
        </ContentTemplate>
    </asp:UpdatePanel>
    <asp:Panel ID="pnlNewTestCategory" runat="server" CssClass="modalPopup" Width="490px" 
     Style="display: none;"  >
        <asp:Panel ID="pnlTestCategory" runat="server" CssClass="modalPopupInner" Width="438px" 
             >
             <center>
            <asp:UpdatePanel ID="upTestCategoryInfo" runat="server">
                <ContentTemplate>
                    <center>
                        <div style="width:100%; ">
                             <center>
                            <table style="vertical-align: middle; border-width: 2px; border-style: solid; width: 380px;">
                                <tr>
                                    <td colspan="2" align="center" >
                                        <asp:Label ID="lblEnterTestCategory" Text="TestCategory Information" runat="server"
                                            Style="font-family: Verdana; font-size: 14px; color: White; font-weight: bold;"></asp:Label>
                                    </td>
                                </tr>
                                <tr >
                                    <td align="left" style="width: 137px">
                                        <asp:Label ID="lblEnterTestCategoryName" Text="Test Category :" runat="server" CssClass="myBigFont"></asp:Label>
                                        <asp:Label ID="lblcTestCategory" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                    </td>
                                    <td align="left">
                                        <asp:TextBox ID="txtTestCatNm" runat="server" Text="" Width="220px" MaxLength="100"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" style="width: 137px">
                                        <asp:Label ID="Label11" Text="Quantity:" runat="server" CssClass="myBigFont"></asp:Label>
                                    </td>
                                    <td align="left">
                                        <asp:RadioButton ID="rdbtnSingle"  Checked="true"  runat="server" Text="Single" 
                                            GroupName="btn" Font-Bold="true" />
                                        <asp:RadioButton ID="rdbtnMultiple" runat="server" Text="Multiple"
                                            GroupName="btn" Font-Bold="true" />
                                    </td>
                                </tr>
                                <tr >
                                    <td align="left" style="width: 137px">
                                        <asp:Label ID="lblEnterDescription" Text="Description :" runat="server" CssClass="myBigFont"></asp:Label>
                                    </td>
                                    <td align="left">
                                        <asp:TextBox ID="txtTestCatDesc" runat="server" Text="" Width="220px" MaxLength="150"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr >
                                    <td colspan="2">
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr >
                                    <td align="center" colspan="2">
                                        <div style="text-align: center; width: 100%; margin-top: 5px;">
                                            <asp:Button ID="btnSaveTestCategory" runat="server" Text="Save" Width="70px" OnClientClick="return ValidateNew();"
                                                OnClick="btnSaveTestCategory_Click" />
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
                    <asp:AsyncPostBackTrigger ControlID="btnSaveTestCategory" EventName="Click" />
                </Triggers>
            </asp:UpdatePanel>
            </center>
        </asp:Panel>
    </asp:Panel>
    <asp:Panel ID="pnlUpdateTestCategory" runat="server" CssClass="modalPopup" Style="display: none;">
        <asp:Panel ID="pnlUTestCategory" runat="server" CssClass="modalPopupInner" Width="400px">
            <asp:UpdatePanel ID="upUpdateTestCategory" runat="server">
                <ContentTemplate>
                    <center>
                        <div style="text-align: center; width: 100%; margin-top: 5px;">
                          <center>
                            <table style="vertical-align: middle; border-width: 2px; border-style: solid; width: 372px;">
                                <tr>
                                    <td colspan="2"  align="center">
                                        <asp:Label ID="lblUpdateTestCategory" Text="TestCategory Information" runat="server"
                                            Style="font-family: Verdana; font-size: 14px; color: White; font-weight: bold;"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left">
                                        <asp:Label ID="lblUpdateTestCategoryName" Text="Test Category:" runat="server" CssClass="myBigFont"></asp:Label>
                                        <asp:Label ID="lblcuTestCategory" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                    </td>
                                    <td align="left">
                                        <asp:TextBox ID="txtUpdateTestCatNm" runat="server" Text="" Width="220px" MaxLength="100"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr >
                                    <td align="left">
                                        <asp:Label ID="Label1" Text="Quantity:" runat="server" CssClass="myBigFont"></asp:Label>
                                    </td>
                                    <td align="left">
                                        <asp:RadioButton ID="rdbtneditSingle" runat="server" Text="Single" 
                                            GroupName="btn" Font-Bold="true" Checked="true"  />
                                        <asp:RadioButton ID="rdbtneditMultiple" runat="server" Text="Multiple" 
                                            GroupName="btn" Font-Bold="true" />
                                    </td>
                                </tr>
                                <tr >
                                    <td align="left">
                                        <asp:Label ID="lblUpdateDesc" Text="Description :" runat="server" CssClass="myBigFont"></asp:Label>
                                    </td>
                                    <td align="left">
                                        <asp:TextBox ID="txtUpdateTestCatDesc" runat="server" Text="" Width="220px" MaxLength="150"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr >
                                    <td colspan="2">
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2">
                                        <div style="text-align: center; width: 100%; margin-top: 5px;">
                                            <asp:Button ID="btnUpdateTestCategory" runat="server" Text="Update" Width="70px"
                                                OnClientClick="return ValidateUpdate();" OnClick="btnUpdateTestCategory_Click" />
                                            <asp:Button ID="btnUpdateCancel" runat="server" Text="Cancel" Width="70px" OnClientClick="ClrAllCtrl(0);" />
                                        </div>
                                    </td>
                                </tr>
                            </table>
                              </center>
                        </div>
                    </center>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="btnUpdateTestCategory" EventName="Click" />
                </Triggers>
            </asp:UpdatePanel>
        </asp:Panel>
    </asp:Panel>
    <ajaxToolkit:RoundedCornersExtender ID="RoundedCornersExtender1" runat="server" BehaviorID="RoundedCornersBehavior1"
        TargetControlID="pnlTestCategory" Radius="10" Corners="All" />
    <ajaxToolkit:RoundedCornersExtender ID="RoundedCornersExtender2" runat="server" BehaviorID="RoundedCornersBehavior2"
        TargetControlID="pnlUTestCategory" Radius="10" Corners="All" />

    <script type="text/javascript" language="javascript">
        var TotalChkBx;
        var Counter;

        window.onload = function()
        {
       
            //Get total no. of CheckBoxes in side the GridView.
            TotalChkBx = parseInt('<%= this.gdvTestCategorys.Rows.Count %>');
            //Get total no. of checked CheckBoxes in side the GridView.
            Counter = 0;
            
        }
        
        function HeaderClick(CheckBox)
        {
            //Get target base & child control.
            var TargetBaseControl = document.getElementById('<%= this.gdvTestCategorys.ClientID %>');
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
       
        if(document.getElementById('<%=txtTestCatNm.ClientID%>').value=="")
            {
                alert("Please Enter TestCategory Name.");
                return false;
            }
//           
            else
                return true;
        }
        
        function ValidateUpdate()
        {
        
      if(document.getElementById('<%=txtUpdateTestCatNm.ClientID%>').value=="")
            {
                alert("Please Enter TestCategory Name.");
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
            alert('Test Category Not Selected ');
            return false;
        }
    }
    
    function ClrAllCtrl(flag)
    {
        if (flag=="0")
        {
            document.getElementById('<%=txtTestCatNm.ClientID%>').value="";
            document.getElementById('<%=txtTestCatDesc.ClientID%>').value=""; 
        }
        else
        {
            document.getElementById('<%=txtUpdateTestCatNm.ClientID%>').value="";
            document.getElementById('<%=txtUpdateTestCatDesc.ClientID%>').value=""; 
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
