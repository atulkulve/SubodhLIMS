<%@ page language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="MasterForms_UserMaster, App_Web_frmusermaster.aspx.6fc3a045" title="Manage User Master" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <asp:UpdatePanel ID="upUserMaster" runat="server" UpdateMode="Conditional" >
        <ContentTemplate>
        <center>
            <div style="text-align: center;">
             <center>
                <table style="width: 520px; vertical-align: middle;">
                    <tr class="Tableheading" >
                        <td align="center" >
                            <asp:Label ID="lblUserList" Text="User List" runat="server" Font-Bold="True"></asp:Label>
                        </td>
                    </tr>
                    <%--<tr class="tableRow1">
            <td>
                <asp:Label ID="l1" Text="Item Category :" runat="server" CssClass="myBigFont"></asp:Label>
            </td>
            <td style="width: 317px">
                <asp:DropDownList ID="ddlUserList" runat="server" Height="20px" Width="305px">
                </asp:DropDownList>
            </td>
            <td>
                <asp:Label ID="Label2" Text="Item Code :" runat="server" CssClass="myBigFont"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtcode" runat="server" Width="115px"></asp:TextBox>
            </td>
        </tr>--%>
                    <%--<tr class="tableRow2">
            <td colspan="4" style="text-align: center">
                <asp:Button ID="btnSearch" runat="server" CssClass="normalbutton" Style="text-align: center"
                    Text="Search" />
            </td>
        </tr>--%>
                    <tr >
                        <td align="center" style="text-align: center">
                        <asp:Label ID="lblMsg" runat="server" CssClass="myBigFont" Text="No Record Found"
                                ForeColor="Red"></asp:Label>
                            <asp:GridView ID="gdvUserList" runat="server" HeaderStyle-CssClass="myBigFont" RowStyle-CssClass="myGridFont"
                                PagerStyle-HorizontalAlign="Center" AutoGenerateColumns="False" ForeColor="#333333"
                                Width="100%" AllowPaging="True" AllowSorting="True" DataKeyNames="UserId" PageSize="10"
                                OnRowCommand="gdvUserList_RowCommand" OnPageIndexChanging="gdvUserList_PageIndexChanging"
                                OnSorting="gdvUserList_Sorting" OnRowCreated="gdvUserList_RowCreated">
                               
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
                                    <asp:TemplateField HeaderText="Name" ItemStyle-Width="100px" ItemStyle-HorizontalAlign="Left"
                                        SortExpression="UserNm">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="lnkName" runat="server" Text='<%# Eval("UserNm") %>' CommandArgument='<%# Eval("UserId") %>'
                                                CommandName="View"></asp:LinkButton>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Left" Width="100px"></ItemStyle>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Phone No." ItemStyle-Width="100px" ItemStyle-HorizontalAlign="Left"
                                        SortExpression="UserPhone">
                                        <ItemTemplate>
                                            <asp:Label ID="lblPhone" runat="server" Text='<%# Eval("UserPhone") %>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Left" Width="100px"></ItemStyle>
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
                            <asp:Button ID="btnAddUser" runat="server" Text="Add New User" CssClass="normalbutton"
                                OnClientClick="ClrAllCtrl(0);" OnClick="btnAddUser_Click" />
                            &nbsp;
                            <asp:Button ID="btnDeleteUser" runat="server" Text="Remove User" CssClass="normalbutton"
                                OnClientClick="return confirmMsg(this.form)" OnClick="btnDeleteUser_Click" />
                        </td>
                    </tr>
                </table>
                </center> 
            </div>
            <asp:Button ID="btnShowPopup" runat="server" Style="display: none" />
            <ajaxToolkit:ModalPopupExtender ID="mdlPopup" BehaviorID="mdlPopup" runat="server"
                TargetControlID="btnAddUser" PopupControlID="pnlUserInfo" CancelControlID="btnClose"
                BackgroundCssClass="modalBackground">
            </ajaxToolkit:ModalPopupExtender>
            <ajaxToolkit:ModalPopupExtender ID="mdlPopupUpdateUser" BehaviorID="mdlPopupUpdateUser"
                runat="server" TargetControlID="btnShowPopup" PopupControlID="pnlUpdateUserInfo"
                CancelControlID="btnUpdateCancel" BackgroundCssClass="modalBackground">
            </ajaxToolkit:ModalPopupExtender>
            </center> 
        </ContentTemplate>
    </asp:UpdatePanel>
    <asp:Panel ID="pnlUserInfo" runat="server" CssClass="modalPopup"  Style="display: none;">
        <asp:Panel ID="pnlUser" runat="server" CssClass="modalPopupInner" Width="520px">
            <asp:UpdatePanel ID="upUserInfo" runat="server" UpdateMode="Conditional">
                <ContentTemplate >
                    <div style="text-align: center; width: 100%; margin-top: 5px;">
                    <center>
                        <table style="vertical-align: middle; border-width: 2px; border-style: solid;width:490px">
                            <tr>
                                <td colspan="2" align="center" >
                                    <asp:Label ID="lblEnterUser" Text="User Information" runat="server" Style="font-family: Verdana;
                                        font-size: 14px; color: White; font-weight: bold;"></asp:Label>
                                </td>
                            </tr>
                            <tr align="center">
                                <td align="left">
                                    <asp:Label ID="lblUserName" Text="User Name :" runat="server" CssClass="myBigFont"></asp:Label>
                                    <asp:Label ID="lblcname" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                </td>
                                <td align="left">
                                    <asp:TextBox ID="txtName" runat="server" Text="" width="190px" MaxLength="100"></asp:TextBox>
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
                                    <asp:TextBox ID="txtAddress" runat="server" Text="" width="190px" MaxLength="100"></asp:TextBox>
                                </td>
                            </tr>
                            <tr align="center">
                                <td align="left">
                                    <asp:Label ID="lblEnterPhoneNo" Text="Phone No. :" runat="server" CssClass="myBigFont"></asp:Label>
                                </td>
                                <td align="left">
                                    <asp:TextBox ID="txtPhoneNo" runat="server" Text="" width="190px" MaxLength="11"></asp:TextBox>
                                    <ajaxToolkit:FilteredTextBoxExtender ID="flt_txtPhoneNo"
                                                runat="server"  FilterType="Custom, Numbers" TargetControlID="txtPhoneNo"
                                                ValidChars="1234567890.">
                                            </ajaxToolkit:FilteredTextBoxExtender>
                                </td>
                            </tr>
                            <tr align="center">
                                <td align="left">
                                    <asp:Label ID="lblEnterUserName" Text="User EMailID :" runat="server" CssClass="myBigFont"></asp:Label>
                                    <asp:Label ID="lblcusername" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                </td>
                                <td align="left">
                                    <asp:TextBox ID="txtUserName" runat="server" Text="" width="190px" MaxLength="25"></asp:TextBox>
                                </td>
                            </tr>
                            <tr align="center">
                                <td align="left">
                                    <asp:Label ID="lblPassword" Text="Password :" runat="server" CssClass="myBigFont"></asp:Label>
                                    <asp:Label ID="lblcpassword" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                </td>
                                <td align="left">
                                    <asp:TextBox ID="txtPassword" runat="server" Text="" width="190px"  MaxLength="15"
                                        TextMode="Password"></asp:TextBox>
                                </td>
                            </tr>
                            <tr align="center">
                                <td align="left">
                                    <asp:Label ID="lblSelectDept" Text="Department :" runat="server" CssClass="myBigFont"></asp:Label>
                                    <asp:Label ID="lblcselectdept" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                </td>
                                <td align="left">
                                    <asp:DropDownList ID="ddlDept" runat="server" Width="190px" CssClass="myfont">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr align="center">
                                <td align="left">
                                    <asp:Label ID="lblSelectRole" Text="Role :" runat="server" CssClass="myBigFont"></asp:Label>
                                    <asp:Label ID="lblcRole" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                </td>
                                <td align="left">
                                    <asp:DropDownList ID="ddlRole" runat="server" Width="190px" CssClass="myfont" 
                                        AutoPostBack="True" onselectedindexchanged="ddlRole_SelectedIndexChanged">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                           
                            <tr align="center" id="trCat" runat="server" >
                                <td >
                                  <asp:Label ID="Label1" Text="Test Category :" runat="server" CssClass="myBigFont"></asp:Label>
                                </td>
                                  <td align="left">
                                  <asp:CheckBoxList ID="chkTestCat" RepeatDirection="Vertical" RepeatColumns="2" runat="server"  ></asp:CheckBoxList>
                                  </td>
                            </tr>
                            <tr align="center">
                                <td align="center" colspan="2">
                                   
                                </td>
                            </tr>
                        </table>
                        </center> 
                    </div>
                </ContentTemplate>
              
            </asp:UpdatePanel>
             <div style="text-align: center; width: 100%; margin-top: 5px;">
                                        <asp:Button ID="btnSaveUser" runat="server" Text="Save" Width="60px" OnClientClick="return ValidateNew();"
                                            OnClick="btnSaveUser_Click" />
                                        <asp:Button ID="btnClose" runat="server" Text="Cancel" Width="60px" OnClientClick="ClrAllCtrl(0);" />
                                    </div>
            </asp:Panel>
    </asp:Panel>
    <asp:Panel ID="pnlUpdateUserInfo" runat="server" CssClass="modalPopup" Style="display: none;">
        <asp:Panel ID="pnlUUser" runat="server" CssClass="modalPopupInner" Width="520px">
            <asp:UpdatePanel ID="upUpdateUser" runat="server" UpdateMode="Conditional" >
                <ContentTemplate>
                    <div style="text-align:center; width: 100%; margin-top: 5px;" >
                    <center >
                        <table style="vertical-align: middle; border-width: 2px; border-style: solid; width:490px">
                            <tr>
                                <td colspan="2" align="center" >
                                    <asp:Label ID="lblUserUpdateInfo" Text="User Information" runat="server" Style="font-family: Verdana;
                                        font-size: 14px; color: White; font-weight: bold;"></asp:Label>
                                </td>
                            </tr>
                            <tr align="center">
                                <td align="left">
                                    <asp:Label ID="lblUpdateName" Text="User Name :" runat="server" CssClass="myBigFont"></asp:Label>
                                    <asp:Label ID="lblcuname" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                </td>
                                <td align="left">
                                    <asp:TextBox ID="txtUpdateName" runat="server" Text="" width="190px" MaxLength="100"></asp:TextBox>
                                    <%--<ajaxToolkit:FilteredTextBoxExtender ID="fteUpdateName" BehaviorID="fteUpdateName"
                                            runat="server" TargetControlID="txtUpdateName" ValidChars="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ">
                                        </ajaxToolkit:FilteredTextBoxExtender>--%>
                                </td>
                            </tr>
                            <tr align="center">
                                <td align="left">
                                    <asp:Label ID="lblUpdateAddres" Text="Address :" runat="server" CssClass="myBigFont"></asp:Label>
                                </td>
                                <td align="left">
                                    <asp:TextBox ID="txtUpdateAddress" runat="server" Text="" width="190px" MaxLength="100"></asp:TextBox>
                                </td>
                            </tr>
                            <tr align="center">
                                <td align="left">
                                    <asp:Label ID="lblUpdatePhoneNo" Text="Phone No. :" runat="server" CssClass="myBigFont"></asp:Label>
                                </td>
                                <td align="left">
                                    <asp:TextBox ID="txtUpdatePhoneNo" runat="server" Text="" width="190px" MaxLength="11"></asp:TextBox>
                                    <ajaxToolkit:FilteredTextBoxExtender ID="flt_txtUpdatePhoneNo"
                                                runat="server" Enabled="True" FilterType="Custom, Numbers" TargetControlID="txtUpdatePhoneNo"
                                                ValidChars="1234567890.">
                                            </ajaxToolkit:FilteredTextBoxExtender>
                                </td>
                            </tr>
                            <tr align="center">
                                <td align="left">
                                    <asp:Label ID="lblUpdateUserName" Text="User EmailID :" runat="server" CssClass="myBigFont"></asp:Label>
                                    <asp:Label ID="lblcuusername" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                </td>
                                <td align="left">
                                    <asp:TextBox ID="txtUpdateUserName" runat="server" Text="" width="190px" MaxLength="25"></asp:TextBox>
                                </td>
                            </tr>
                            <tr align="center">
                                <td align="left">
                                    <asp:Label ID="lblUpdatePasswprd" Text="Password :" runat="server" CssClass="myBigFont"></asp:Label>
                                    <asp:Label ID="lblcupassword" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                </td>
                                <td align="left">
                                    <asp:TextBox ID="txtUpdatePassword" runat="server" Width="190px" Text="" MaxLength="15"
                                        TextMode="Password"></asp:TextBox>
                                    <asp:HiddenField ID="hdnpwd" runat="server" Value="" />
                                </td>
                            </tr>
                            <tr align="center">
                                <td align="left">
                                    <asp:Label ID="lblSelectUpdateDept" Text="Department :" runat="server" CssClass="myBigFont"></asp:Label>
                                    <asp:Label ID="lblcuselectdept" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                </td>
                                <td align="left">
                                    <asp:DropDownList ID="ddlUpdateDept" runat="server" Width="190px" CssClass="myfont"
                                        EnableViewState="true">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr align="center">
                                <td align="left">
                                    <asp:Label ID="lblSelectUpdateRole" Text="Role :" runat="server" CssClass="myBigFont"></asp:Label>
                                    <asp:Label ID="lblcuRole" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                </td>
                                <td align="left">
                                    <asp:DropDownList ID="ddlUpdateRole" runat="server" Width="190px" CssClass="myfont"
                                        EnableViewState="true" AutoPostBack="True" 
                                        onselectedindexchanged="ddlUpdateRole_SelectedIndexChanged">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            
                           
                            <tr align="center" id="treditCat" runat="server">
                                <td >
                                  <asp:Label ID="Label2" Text="Test Category :" runat="server" CssClass="myBigFont"></asp:Label>
                                </td>
                                  <td align="left">
                                  <asp:CheckBoxList ID="chkEditTestCat" RepeatDirection="Horizontal" RepeatColumns="2" runat="server"  ></asp:CheckBoxList>
                                  </td>
                            </tr>
                            <tr align="center">
                                <td align="center" colspan="2">
                                    
                                </td>
                            </tr>
                        </table>
                        </center>
                    </div>
                </ContentTemplate>
               <%-- <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="btnUpdate" EventName="Click" />
                </Triggers>--%>
            </asp:UpdatePanel>
            <div style="text-align: center; width: 100%; margin-top: 5px;">
                                        <asp:Button ID="btnUpdate" runat="server" Text="Update" Width="60px" OnClientClick="return ValidateUpdate();"
                                            OnClick="btnUpdate_Click" />
                                        <asp:Button ID="btnUpdateCancel" runat="server" Text="Cancel" Width="60px" OnClientClick="ClrAllCtrl(1);" />
                                    </div>
        </asp:Panel>
    </asp:Panel>
    <ajaxToolkit:RoundedCornersExtender ID="RoundedCornersExtender1" runat="server" BehaviorID="RoundedCornersBehavior1"
        TargetControlID="pnlUser" Radius="10" Corners="All" />
    <ajaxToolkit:RoundedCornersExtender ID="RoundedCornersExtender2" runat="server" BehaviorID="RoundedCornersBehavior2"
        TargetControlID="pnlUUser" Radius="10" Corners="All" />


    <script type="text/javascript" language="javascript">
        var TotalChkBx;
        var Counter;

        window.onload = function()
        {
       
            //Get total no. of CheckBoxes in side the GridView.
            TotalChkBx = parseInt('<%= this.gdvUserList.Rows.Count %>');
            //Get total no. of checked CheckBoxes in side the GridView.
            Counter = 0;
            
        }
        
        function HeaderClick(CheckBox)
        {
            //Get target base & child control.
            var TargetBaseControl = document.getElementById('<%= this.gdvUserList.ClientID %>');
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
            if(document.getElementById('<%=txtName.ClientID%>').value=="")
            {
                alert("Please Enter User Name.");
                return false;
            }
            else if(document.getElementById('<%=txtUserName.ClientID%>').value=="")
            {
                alert("Please Enter User EmailId.");
                return false;
            }
            else if(document.getElementById('<%=txtPassword.ClientID%>').value=="")
            {
                alert("Please Enter Password.");
                return false;
            }
            else if(document.getElementById('<%=ddlDept.ClientID%>').value=="--Select--")
            {
                alert("Please Select Department.");
                return false;
            }
            else if(document.getElementById('<%=ddlRole.ClientID%>').value=="--Select--")
            {
                alert("Please Select Role.");
                return false;
            }
            else
                return true;  
        }
        
        function ValidateUpdate()
        {
            if(document.getElementById('<%=txtUpdateName.ClientID%>').value=="")
            {
                alert("Please Enter User Name.");
                return false;
            }
            else if(document.getElementById('<%=txtUpdateUserName.ClientID%>').value=="")
            {
                alert("Please Enter User Email ID.");
                return false;
            }
            else if(document.getElementById('<%=txtUpdatePassword.ClientID%>').value=="")
            {
                alert("Please Enter Password.");
                return false;
            }
            else if(document.getElementById('<%=ddlUpdateDept.ClientID%>').value=="--Select--")
            {
                alert("Please Select Department.");
                return false;
            }
            else if(document.getElementById('<%=ddlUpdateRole.ClientID%>').value=="--Select--")
            {
                alert("Please Select Role.");
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
            alert('User  Not Selected');
            return false;
        }
    }
    
    function ClrAllCtrl(flag)
    {
        if (flag=="0")
        {
            document.getElementById('<%=txtName.ClientID%>').value="";
            document.getElementById('<%=txtAddress.ClientID%>').value=""; 
            document.getElementById('<%=txtPhoneNo.ClientID%>').value=""; 
            document.getElementById('<%=txtUserName.ClientID%>').value=""; 
            document.getElementById('<%=txtPassword.ClientID%>').value=""; 
            document.getElementById('<%=ddlDept.ClientID%>').value="--Select--"; 
            document.getElementById('<%=ddlRole.ClientID%>').value="--Select--"; 
            
        }
        else
        {
            document.getElementById('<%=txtUpdateName.ClientID%>').InnerText="";
            document.getElementById('<%=txtUpdateAddress.ClientID%>').value=""; 
            document.getElementById('<%=txtUpdatePhoneNo.ClientID%>').value=""; 
            document.getElementById('<%=txtUpdateUserName.ClientID%>').value=""; 
            document.getElementById('<%=txtUpdatePassword.ClientID%>').value=""; 
            document.getElementById('<%=ddlUpdateDept.ClientID%>').value="--Select--"; 
            document.getElementById('<%=ddlUpdateRole.ClientID%>').value="--Select--"; 
            
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
