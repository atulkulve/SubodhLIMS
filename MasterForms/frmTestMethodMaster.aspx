<%@ page language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="MasterForms_frmTestMethodMaster, App_Web_frmtestmethodmaster.aspx.6fc3a045" title="Test Method Master" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <asp:UpdatePanel ID="upUserMaster" runat="server">
        <ContentTemplate>
            <div style="text-align: center;">
            <center>
                <table style="width: 820px; vertical-align: middle;">
                    <tr class="Tableheading">
                        <td align="center" >
                            <asp:Label ID="lblUserList" Text="TestMethod List" runat="server" Font-Bold="True"></asp:Label>
                        </td>
                    </tr>
              
                   
                    <tr >
                        <td align="center" style="text-align: center">
                        <asp:Label ID="lblMsg" runat="server" CssClass="myBigFont" Text="No Record Found"
                                ForeColor="Red"></asp:Label>
                            <asp:GridView ID="gdvTestMethodList" runat="server" HeaderStyle-CssClass="myBigFont" 
                                PagerStyle-HorizontalAlign="Center" AutoGenerateColumns="False" ForeColor="#333333"
                                Width="100%" AllowPaging="True" AllowSorting="True" DataKeyNames="TestMethodID" PageSize="10"
                                OnRowCommand="gdvTestMethodList_RowCommand" OnPageIndexChanging="gdvTestMethodList_PageIndexChanging"
                                OnSorting="gdvTestMethodList_Sorting" OnRowCreated="gdvTestMethodList_RowCreated">
                               
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
                                    <asp:TemplateField HeaderText="TestMethod Name"  ItemStyle-HorizontalAlign="Left"
                                        SortExpression="TestMethodNm">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="lnkName" runat="server" Text='<%# Eval("TestMethodNm") %>' CommandArgument='<%# Eval("TestMethodID") %>'
                                                CommandName="View"></asp:LinkButton>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Left" ></ItemStyle>
                                    </asp:TemplateField>
                                   
                                </Columns>
                                <PagerStyle HorizontalAlign="Center"></PagerStyle>
                                 <RowStyle CssClass="GridRowStyle"   />
                                <HeaderStyle  Font-Bold="True" ForeColor="White" CssClass="Gridheading" />
                               
                                <AlternatingRowStyle CssClass="GridAlternateRowStyle"  />
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr >
                        <td align="center">
                            <asp:Button ID="btnAddTestMethod" runat="server" Text="Add New TestMethod" CssClass="normalbutton"
                               Height="25px" 
                                Width="171px"  />
                            &nbsp;
                            <asp:Button ID="btnDeleteSpec" runat="server" Text="Remove TestMethod" CssClass="normalbutton"
                                OnClientClick="return confirmMsg(this.form)" 
                                Width="166px" onclick="btnDeleteSpec_Click" Height="25px" />
                        </td>
                    </tr>
                </table>
                </center>
            </div>
          
            <asp:Button ID="btnShowPopup" runat="server" Style="display: none" />
            <ajaxToolkit:ModalPopupExtender ID="mdlPopup" BehaviorID="mdlPopup" runat="server"
                TargetControlID="btnAddTestMethod" PopupControlID="pnlouterTestMethod" CancelControlID="btnClose"
                BackgroundCssClass="modalBackground">
            </ajaxToolkit:ModalPopupExtender>
            <ajaxToolkit:ModalPopupExtender ID="mdlPopupUpdateTestMethod" BehaviorID="mdlPopupUpdateTestMethod"
                runat="server" TargetControlID="btnShowPopup" PopupControlID="pnlUpdateTestMethod"
                CancelControlID="btnUpdateCancel" BackgroundCssClass="modalBackground">
            </ajaxToolkit:ModalPopupExtender>
          </ContentTemplate>
    </asp:UpdatePanel>
    <asp:Panel ID="pnlouterTestMethod" runat="server" CssClass="modalPopup"  Style="display: none;">
        <asp:Panel ID="pnlTestMethod" runat="server" CssClass="modalPopupInner" Width="560px">
            <asp:UpdatePanel ID="upUserInfo" runat="server">
                <ContentTemplate>
                    <div style="text-align: center; width: 100%; margin-top: 5px;">
                    <center>
                        <table style="vertical-align: middle; border-width: 2px; border-style: solid; width: 527px;">
                            <tr>
                                <td colspan="2" align="center" >
                                    <asp:Label ID="lblEnterUser" Text="TestMethod Information" runat="server" Style="font-family: Verdana;
                                        font-size: 14px; color: White; font-weight: bold;"></asp:Label>
                                </td>
                            </tr>
                            <tr align="center">
                                <td align="left">
                                    <asp:Label ID="lblUserName" Text="TestMethod Name :" runat="server" CssClass="myBigFont"></asp:Label>
                                    <asp:Label ID="lblcname" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                </td>
                                <td align="left">
                                    <asp:TextBox ID="txtTestMethodNm" runat="server" Text="" MaxLength="250" Width="350px" TextMode="MultiLine" ></asp:TextBox>
                                    <%--<ajaxToolkit:FilteredTextBoxExtender ID="fteName" BehaviorID="fteName" TargetControlID="txtName"
                                            runat="server" ValidChars="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ">
                                        </ajaxToolkit:FilteredTextBoxExtender>--%>
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
                                        <asp:Button ID="btnSaveTestMethod" runat="server" Text="Save" Width="70px" 
                                            OnClientClick="return ValidateNew();" onclick="btnSaveTestMethod_Click"
                                          />
                                        <asp:Button ID="btnClose" runat="server" Text="Cancel" Width="70px" OnClientClick="ClrAllCtrl(0);" />
                                    </div>
                                </td>
                            </tr>
                        </table>
                        </center>
                    </div>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="btnSaveTestMethod" EventName="Click" />
                    
                </Triggers>
            </asp:UpdatePanel>
        </asp:Panel>
    </asp:Panel>
    <asp:Panel ID="pnlUpdateTestMethod" runat="server" CssClass="modalPopup" Style="display: none;">
        <asp:Panel ID="pnlUTestMethod" runat="server" CssClass="modalPopupInner" Width="560px">
            <asp:UpdatePanel ID="upUpdateUser" runat="server">
                <ContentTemplate>
                    <div style="text-align: center; width: 100%; margin-top: 5px;">
                    <center>
                        <table style="vertical-align: middle; border-width: 2px; border-style: solid; width: 527px;">
                            <tr>
                                <td colspan="2" align="center" >
                                    <asp:Label ID="lblUserUpdateInfo" Text="Edit TestMethod Information" runat="server" Style="font-family: Verdana;
                                        font-size: 14px; color: White; font-weight: bold;"></asp:Label>
                                </td>
                            </tr>
                            <tr align="center">
                                <td align="left">
                                    <asp:Label ID="lblUpdateName" Text="TestMethod Name :" runat="server" CssClass="myBigFont"></asp:Label>
                                    <asp:Label ID="lblcuname" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                </td>
                                <td align="left">
                                    <asp:TextBox ID="txtUpdateTestMethodNm" runat="server"  Width="350px" Text="" MaxLength="250" TextMode="MultiLine"></asp:TextBox>
                                    <%--<ajaxToolkit:FilteredTextBoxExtender ID="fteUpdateName" BehaviorID="fteUpdateName"
                                            runat="server" TargetControlID="txtUpdateName" ValidChars="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ">
                                        </ajaxToolkit:FilteredTextBoxExtender>--%>
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
                                        <asp:Button ID="btnUpdate" runat="server" Text="Update" Width="70px" OnClientClick="return ValidateUpdate();"
                                            OnClick="btnUpdate_Click" />
                                        <asp:Button ID="btnUpdateCancel" runat="server" Text="Cancel" Width="70px" OnClientClick="ClrAllCtrl(1);" />
                                    </div>
                                </td>
                            </tr>
                        </table>
                        </center>
                    </div>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="btnUpdate" EventName="Click" />
                </Triggers>
            </asp:UpdatePanel>
        </asp:Panel>
    </asp:Panel>
    <ajaxToolkit:RoundedCornersExtender ID="RoundedCornersExtender1" runat="server" BehaviorID="RoundedCornersBehavior1"
        TargetControlID="pnlTestMethod" Radius="10" Corners="All" />
    <ajaxToolkit:RoundedCornersExtender ID="RoundedCornersExtender2" runat="server" BehaviorID="RoundedCornersBehavior2"
        TargetControlID="pnlUTestMethod" Radius="10" Corners="All" />


    <script type="text/javascript" language="javascript">
        var TotalChkBx;
        var Counter;

        window.onload = function()
        {
       
            //Get total no. of CheckBoxes in side the GridView.
            TotalChkBx = parseInt('<%= this.gdvTestMethodList.Rows.Count %>');
            //Get total no. of checked CheckBoxes in side the GridView.
            Counter = 0;
            
        }
        
        function HeaderClick(CheckBox)
        {
            //Get target base & child control.
            var TargetBaseControl = document.getElementById('<%= this.gdvTestMethodList.ClientID %>');
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
            if(document.getElementById('<%=txtTestMethodNm.ClientID%>').value=="")
            {
                alert("Please Enter TestMethod Name.");
                return false;
            }
     
            else
                return true;  
        }
        
        function ValidateUpdate()
        {
            if(document.getElementById('<%=txtUpdateTestMethodNm.ClientID%>').value=="")
            {
                alert("Please Enter TestMethod Name.");
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
                    if( confirm('Do you want to Remove Selected Record ?'))
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
            alert('TestMethod  Not Selected');
            return false;
        }
    }
    
    function ClrAllCtrl(flag)
    {
        if (flag=="0")
        {
            document.getElementById('<%=txtTestMethodNm.ClientID%>').value="";
           
            
        }
        else
        {
            document.getElementById('<%=txtUpdateTestMethodNm.ClientID%>').InnerText="";
            
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


