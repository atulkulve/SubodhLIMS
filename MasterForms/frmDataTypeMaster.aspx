<%@ page language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="MasterForms_frmDataTypeMaster, App_Web_frmdatatypemaster.aspx.6fc3a045" title="Data Type Master" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
  <asp:UpdatePanel ID="upDataTypeMaster" runat="server">
        <ContentTemplate>
            <div style="text-align: center;">
            <center>
                <table style="width: 30%; vertical-align: middle;">
                    <tr class="Tableheading">
                        <td align="center" >
                            <asp:Label ID="lblDataTypeList" Text="DataType List" runat="server" Font-Bold="True"></asp:Label>
                        </td>
                    </tr>
                    <tr >
                        <td align="center" style="text-align: center ">
                         <asp:Label ID="lblMsg" runat="server" CssClass="myBigFont" Text="No Record Found"
                                ForeColor="Red"></asp:Label>
                           
                            <asp:GridView ID="gdvDataTypes" runat="server" HeaderStyle-CssClass="myBigFont" RowStyle-CssClass="myGridFont"
                                DataKeyNames="DataTypeId" PagerStyle-HorizontalAlign="Center" AutoGenerateColumns="False"
                                ForeColor="#333333" Width="100%" AllowPaging="True" AllowSorting="True" PageSize="10"
                                OnPageIndexChanging="gdvDataTypes_PageIndexChanging" OnRowCommand="gdvDataTypes_RowCommand"
                                OnRowCreated="gdvDataTypes_RowCreated" OnSorting="gdvDataTypes_Sorting">
                                
                                <Columns>
                                    <asp:TemplateField HeaderText="Sr.No" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="20px">
                                        <ItemTemplate>
                                            <%#Container.DataItemIndex+1   %>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Center" Width="5px"></ItemStyle>
                                    </asp:TemplateField>
                                    <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                                        <HeaderTemplate>
                                            <asp:CheckBox ID="ChkAll" runat="server" onclick="return check_uncheck (this );" />
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="Chk" runat="server" />
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Center" Width="20px"></ItemStyle>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="DataType Name" ItemStyle-Width="150px" ItemStyle-HorizontalAlign="Left"
                                        SortExpression="DataTypeNm">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="lnkbtnDataTypeName" Text='<%# Eval("DataTypeNm") %>' CommandArgument='<%# Eval("DataTypeId") %>'
                                                CommandName="View" runat="server"></asp:LinkButton>
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
                            <asp:Button ID="btnAddDataType" runat="server" Text="Add New DataType" CssClass="normalbutton"
                                OnClientClick="ClrAllCtrl(0);" />
                            &nbsp;
                            <asp:Button ID="btnDeleteDataType" runat="server" Text="Remove DataType" CssClass="normalbutton"
                                OnClientClick="return confirmMsg(this.form)" OnClick="btnDeleteDataType_Click" />
                        </td>
                    </tr>
                </table>
                </center> 
            </div>
            <asp:Button ID="btnShowPopup" runat="server" Style="display: none" />
            <ajaxToolkit:ModalPopupExtender ID="mdlPopupNewDataType" BehaviorID="mdlPopupNewDataType"
                runat="server" TargetControlID="btnAddDataType" PopupControlID="pnlNewDataType" CancelControlID="btnCancel"
                BackgroundCssClass="modalBackground">
            </ajaxToolkit:ModalPopupExtender>
            <ajaxToolkit:ModalPopupExtender ID="mdlPopupUpdateDataType" BehaviorID="mdlPopupUpdateDataType"
                runat="server" TargetControlID="btnShowPopup" PopupControlID="pnlUpdateDataType"
                CancelControlID="btnUpdateCancel" BackgroundCssClass="modalBackground">
            </ajaxToolkit:ModalPopupExtender>
        </ContentTemplate>
    </asp:UpdatePanel>
    <asp:Panel ID="pnlNewDataType" runat="server" CssClass="modalPopup" Style="display: none;">
        <asp:Panel ID="pnlDataType" runat="server" CssClass="modalPopupInner" Width="380px">
            <asp:UpdatePanel ID="upDataTypeInfo" runat="server">
                <ContentTemplate>
                    <div style="text-align: center; padding: 10px; width: 70%; margin-top: 5px;" >
                    <center>
                        <table style="vertical-align: middle; border-width: 2px; border-style: solid;width:360px">
                            <tr>
                                <td colspan="2" align="center" >
                                    <asp:Label ID="lblEnterDataType" Text="DataType Information" runat="server" Style="font-family: Verdana;
                                        font-size: 14px; color: White; font-weight: bold;"></asp:Label>
                                </td>
                            </tr>
                            <tr align="center">
                                <td align="left">
                                    <asp:Label ID="lblEnterDataTypeName" Text="DataType :" runat="server" CssClass="myBigFont"></asp:Label>
                                    <asp:Label ID="lblcDataType" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                </td>
                                <td align="left">
                                    <asp:TextBox ID="txtDataType" runat="server" Text="" Width="250px" MaxLength="100"></asp:TextBox>
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
                                        <asp:Button ID="btnSaveDataType" runat="server" Text="Save" Width="70px" OnClientClick="return ValidateNew();"
                                            OnClick="btnSaveDataType_Click" />
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
                    <asp:AsyncPostBackTrigger ControlID="btnSaveDataType" EventName="Click" />
                </Triggers>
            </asp:UpdatePanel>
        </asp:Panel>
    </asp:Panel>
    <asp:Panel ID="pnlUpdateDataType" runat="server" CssClass="modalPopup" Style="display: none;">
        <asp:Panel ID="pnlUDataType" runat="server" CssClass="modalPopupInner" Width="380px">
            <asp:UpdatePanel ID="upUpdateDataType" runat="server">
                <ContentTemplate>
                    <div style="text-align: center; width: 100%; margin-top: 5px;">
                     <center>
                        <table style="vertical-align: middle; border-width: 2px; border-style: solid;">
                            <tr>
                                <td colspan="2" align="center" >
                                    <asp:Label ID="lblUpdateDataType" Text="DataType Information" runat="server" Style="font-family: Verdana;
                                        font-size: 14px; color: White; font-weight: bold;"></asp:Label>
                                </td>
                            </tr>
                            <tr align="center">
                                <td align="left">
                                    <asp:Label ID="lblUpdateDataTypeName" Text="DataType :" runat="server" CssClass="myBigFont"></asp:Label>
                                    <asp:Label ID="lblcuDataType" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                </td>
                                <td align="right">
                                    <asp:TextBox ID="txtUpdateDataType" runat="server" Text="" Width="250px" MaxLength="100"></asp:TextBox>
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
                                        <asp:Button ID="btnUpdateDataType" runat="server" Text="Update" Width="70px" OnClientClick="return ValidateUpdate();"
                                            OnClick="btnUpdateDataType_Click" />
                                        <asp:Button ID="btnUpdateCancel" runat="server" Text="Cancel" Width="70px" OnClientClick="ClrAllCtrl(0);" />
                                    </div>
                                </td>
                            </tr>
                        </table>
                         </center> 
                    </div>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="btnUpdateDataType" EventName="Click" />
                </Triggers>
            </asp:UpdatePanel>
        </asp:Panel>
    </asp:Panel>
    <ajaxToolkit:RoundedCornersExtender ID="RoundedCornersExtender1" runat="server" BehaviorID="RoundedCornersBehavior1"
        TargetControlID="pnlDataType" Radius="10" Corners="All" />
    <ajaxToolkit:RoundedCornersExtender ID="RoundedCornersExtender2" runat="server" BehaviorID="RoundedCornersBehavior2"
        TargetControlID="pnlUDataType" Radius="10" Corners="All" />

    <script type="text/javascript" language="javascript">
    function Hidepopup() {
        $find("mdlPopupNewDataType").hide();
        return false;
    }
        var TotalChkBx;
        var Counter;

        window.onload = function()
        {
       
            //Get total no. of CheckBoxes in side the GridView.
            TotalChkBx = parseInt('<%= this.gdvDataTypes.Rows.Count %>');
            //Get total no. of checked CheckBoxes in side the GridView.
            Counter = 0;
            
        }
        
        function HeaderClick(CheckBox)
        {
            //Get target base & child control.
            var TargetBaseControl = document.getElementById('<%= this.gdvDataTypes.ClientID %>');
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
            if(document.getElementById('<%=txtDataType.ClientID%>').value=="")
            {
                alert("Please Enter DataType Name.");
                return false;
            }
            else
                return true;
        }
        
        function ValidateUpdate()
        {
            if(document.getElementById('<%=txtUpdateDataType.ClientID%>').value=="")
            {
                alert("Please Enter DataType Name.");
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
            alert('DataType Not Selected ');
            return false;
        }
    }
    
    function ClrAllCtrl(flag)
    {
        if (flag=="0")
        {
            document.getElementById('<%=txtDataType.ClientID%>').value="";
            document.getElementById('<%=txtDescription.ClientID%>').value=""; 
        }
        else
        {
            document.getElementById('<%=txtUpdateDataType.ClientID%>').value="";
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

