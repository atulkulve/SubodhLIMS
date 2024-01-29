<%@ page language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="MasterForms_frmRoleMaster, App_Web_frmrolemaster.aspx.6fc3a045" title="Manage Role Master" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <asp:UpdatePanel ID="upRoleMaster" runat="server">
        <ContentTemplate>
            <div style="text-align: center;">
            <center>
                <table style="width: 470px; vertical-align: middle;">
                    <tr class="Tableheading">
                        <td align="center" >
                            <asp:Label ID="lblRoleList" Text="Role List" runat="server" Font-Bold="True"></asp:Label>
                        </td>
                    </tr>
                    <tr >
                        <td align="center" style="text-align: center ">
                         <asp:Label ID="lblMsg" runat="server" CssClass="myBigFont" Text="No Record Found"
                                ForeColor="Red"></asp:Label>
                           
                            <asp:GridView ID="gdvRoles" runat="server" HeaderStyle-CssClass="myBigFont" RowStyle-CssClass="myGridFont"
                                DataKeyNames="RoleId" PagerStyle-HorizontalAlign="Center" AutoGenerateColumns="False"
                                ForeColor="#333333" Width="100%" AllowPaging="True" AllowSorting="True" PageSize="10"
                                OnPageIndexChanging="gdvRoles_PageIndexChanging" OnRowCommand="gdvRoles_RowCommand"
                                OnRowCreated="gdvRoles_RowCreated" OnSorting="gdvRoles_Sorting">
                                
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
                                    <asp:TemplateField HeaderText="Role Name" ItemStyle-Width="150px" ItemStyle-HorizontalAlign="Left"
                                        SortExpression="RoleNm">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="lnkbtnRoleName" Text='<%# Eval("RoleNm") %>' CommandArgument='<%# Eval("RoleId") %>'
                                                CommandName="View" runat="server"></asp:LinkButton>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Left" Width="150px"></ItemStyle>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="RoleDescription" HeaderText="Description" ItemStyle-Width="300px"
                                        ItemStyle-HorizontalAlign="Left" SortExpression="RoleDescription">
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
                        <td align="center">
                            <asp:Button ID="btnAddRole" runat="server" Text="Add New Role" CssClass="normalbutton"
                                OnClientClick="ClrAllCtrl(0);" />
                            &nbsp;
                            <asp:Button ID="btnDeleteRole" runat="server" Text="Remove Role" CssClass="normalbutton"
                                OnClientClick="return confirmMsg(this.form)" OnClick="btnDeleteRole_Click" />
                        </td>
                    </tr>
                </table>
                </center> 
            </div>
            <asp:Button ID="btnShowPopup" runat="server" Style="display: none" />
            <ajaxToolkit:ModalPopupExtender ID="mdlPopupNewRole" BehaviorID="mdlPopupNewRole"
                runat="server" TargetControlID="btnAddRole" PopupControlID="pnlNewRole" CancelControlID="btnCancel"
                BackgroundCssClass="modalBackground">
            </ajaxToolkit:ModalPopupExtender>
            <ajaxToolkit:ModalPopupExtender ID="mdlPopupUpdateRole" BehaviorID="mdlPopupUpdateRole"
                runat="server" TargetControlID="btnShowPopup" PopupControlID="pnlUpdateRole"
                CancelControlID="btnUpdateCancel" BackgroundCssClass="modalBackground">
            </ajaxToolkit:ModalPopupExtender>
        </ContentTemplate>
    </asp:UpdatePanel>
    <asp:Panel ID="pnlNewRole" runat="server" CssClass="modalPopup" Style="display: none;">
        <asp:Panel ID="pnlRole" runat="server" CssClass="modalPopupInner" Width="380px">
            <asp:UpdatePanel ID="upRoleInfo" runat="server">
                <ContentTemplate>
                    <div style="text-align: center; padding: 10px; width: 70%; margin-top: 5px;" >
                    <center>
                        <table style="vertical-align: middle; border-width: 2px; border-style: solid;width:360px">
                            <tr>
                                <td colspan="2" align="center" >
                                    <asp:Label ID="lblEnterRole" Text="Role Information" runat="server" Style="font-family: Verdana;
                                        font-size: 14px; color: White; font-weight: bold;"></asp:Label>
                                </td>
                            </tr>
                            <tr align="center">
                                <td align="left">
                                    <asp:Label ID="lblEnterRoleName" Text="Role :" runat="server" CssClass="myBigFont"></asp:Label>
                                    <asp:Label ID="lblcrole" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                </td>
                                <td align="left">
                                    <asp:TextBox ID="txtRole" runat="server" Text="" Width="250px" MaxLength="100"></asp:TextBox>
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
                                        <asp:Button ID="btnSaveRole" runat="server" Text="Save" Width="70px" OnClientClick="return ValidateNew();"
                                            OnClick="btnSaveRole_Click" />
                                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" Width="70px" OnClientClick = "return Hidepopup()" />
                                        
                                        <%-- OnClientClick="ClrAllCtrl(0);"--%>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        </center> 
                    </div>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="btnSaveRole" EventName="Click" />
                </Triggers>
            </asp:UpdatePanel>
        </asp:Panel>
    </asp:Panel>
    <asp:Panel ID="pnlUpdateRole" runat="server" CssClass="modalPopup" Style="display: none;">
        <asp:Panel ID="pnlURole" runat="server" CssClass="modalPopupInner" Width="380px">
            <asp:UpdatePanel ID="upUpdateRole" runat="server">
                <ContentTemplate>
                    <div style="text-align: center; width: 100%; margin-top: 5px;">
                     <center>
                        <table style="vertical-align: middle; border-width: 2px; border-style: solid;">
                            <tr>
                                <td colspan="2" align="center" >
                                    <asp:Label ID="lblUpdateRole" Text="Role Information" runat="server" Style="font-family: Verdana;
                                        font-size: 14px; color: White; font-weight: bold;"></asp:Label>
                                </td>
                            </tr>
                            <tr align="center">
                                <td align="left">
                                    <asp:Label ID="lblUpdateRoleName" Text="Role :" runat="server" CssClass="myBigFont"></asp:Label>
                                    <asp:Label ID="lblcurole" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                </td>
                                <td align="right">
                                    <asp:TextBox ID="txtUpdateRole" runat="server" Text="" Width="250px" MaxLength="100"></asp:TextBox>
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
                                        <asp:Button ID="btnUpdateRole" runat="server" Text="Update" Width="70px" OnClientClick="return ValidateUpdate();"
                                            OnClick="btnUpdateRole_Click" />
                                        <asp:Button ID="btnUpdateCancel" runat="server" Text="Cancel" Width="70px" OnClientClick="ClrAllCtrl(0);" />
                                    </div>
                                </td>
                            </tr>
                        </table>
                         </center> 
                    </div>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="btnUpdateRole" EventName="Click" />
                </Triggers>
            </asp:UpdatePanel>
        </asp:Panel>
    </asp:Panel>
    <ajaxToolkit:RoundedCornersExtender ID="RoundedCornersExtender1" runat="server" BehaviorID="RoundedCornersBehavior1"
        TargetControlID="pnlRole" Radius="10" Corners="All" />
    <ajaxToolkit:RoundedCornersExtender ID="RoundedCornersExtender2" runat="server" BehaviorID="RoundedCornersBehavior2"
        TargetControlID="pnlURole" Radius="10" Corners="All" />

    <script type="text/javascript" language="javascript">
    function Hidepopup() {
        $find("mdlPopupNewRole").hide();
        return false;
    }
        var TotalChkBx;
        var Counter;

        window.onload = function()
        {
       
            //Get total no. of CheckBoxes in side the GridView.
            TotalChkBx = parseInt('<%= this.gdvRoles.Rows.Count %>');
            //Get total no. of checked CheckBoxes in side the GridView.
            Counter = 0;
            
        }
        
        function HeaderClick(CheckBox)
        {
            //Get target base & child control.
            var TargetBaseControl = document.getElementById('<%= this.gdvRoles.ClientID %>');
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
            if(document.getElementById('<%=txtRole.ClientID%>').value=="")
            {
                alert("Please Enter Role Name.");
                return false;
            }
            else
                return true;
        }
        
        function ValidateUpdate()
        {
            if(document.getElementById('<%=txtUpdateRole.ClientID%>').value=="")
            {
                alert("Please Enter Role Name.");
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
            alert('Role Not Selected ');
            return false;
        }
    }
    
    function ClrAllCtrl(flag)
    {
        if (flag=="0")
        {
            document.getElementById('<%=txtRole.ClientID%>').value="";
            document.getElementById('<%=txtDescription.ClientID%>').value=""; 
        }
        else
        {
            document.getElementById('<%=txtUpdateRole.ClientID%>').value="";
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

