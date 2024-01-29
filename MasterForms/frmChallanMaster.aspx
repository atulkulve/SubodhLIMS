<%@ page language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="MasterForms_frmChallanMaster, App_Web_frmchallanmaster.aspx.6fc3a045" title="Manage Challan Master" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <br />
    <center>
        <asp:Panel ID="pnlUser" runat="server" BackColor="#C77826" ForeColor="White" Width="500px"
            Height="300px">
            <%--            <asp:UpdatePanel ID="upUserInfo" runat="server">
                <ContentTemplate>--%>
            <div style="text-align: center; width: 100%; margin-top: 5px;">
                <table style="vertical-align: middle; border-width: 2px; border-style: solid; width: 460px;">
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lblEnterUser" Text="Challan Details" runat="server" Style="font-family: Verdana;
                                font-size: 14px; color: White; font-weight: bold;"></asp:Label>
                        </td>
                    </tr>
                    <tr align="center">
                        <td align="left">
                            <asp:Label ID="lblUserName" Text="Customer Name :" runat="server" CssClass="myBigFont"></asp:Label>
                            <asp:Label ID="lblcname" runat="server" Text="*" ForeColor="Red"></asp:Label>
                        </td>
                        <td align="left">
                            <asp:DropDownList ID="ddlcustomer" runat="server" Height="16px" Width="190px">
                            </asp:DropDownList>
                            <ajaxToolkit:ListSearchExtender ID="ListSearchExtender1" runat="server" PromptCssClass="PromptCSS"
                                PromptText="Customer to search" TargetControlID="ddlcustomer" />
                        </td>
                    </tr>
                    <tr align="center">
                        <td align="left">
                            <asp:Label ID="lblCustChallanNo" Text="Customer Challan No :" runat="server" CssClass="myBigFont"></asp:Label>
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txtCustChallanNo" runat="server" Text="" MaxLength="100" Width="190px"></asp:TextBox>
                        </td>
                    </tr>
                    <%-- <tr align="center">
                                <td align="left">
                                    <asp:Label ID="lblchallandate" Text="Challan Date :" runat="server" CssClass="myBigFont"></asp:Label>
                                </td>
                                <td align="left">
                                   <asp:TextBox ID="txtChallanDate" runat="server" Text="" Width="190px"  oncontextmenu="return false;" onkeyup="return false;" onkeydown="return false;" onkeypress="return false;"
                                        ></asp:TextBox>
                                          <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/Calendar.png" />&nbsp;
                                        <ajaxToolkit:CalendarExtender ID="CalendarExtender3" runat="server" PopupButtonID="Image1"
                                            TargetControlID="txtChallanDate" >
                                        </ajaxToolkit:CalendarExtender>
                                         
                                </td>
                            </tr>--%>
                    <tr align="center">
                        <td align="left">
                            <asp:Label ID="lblCustChallandate" Text="Customer Challan date :" runat="server"
                                CssClass="myBigFont"></asp:Label>
                            <%--<asp:Label ID="lblcusername" runat="server" Text="*" ForeColor="Red"></asp:Label>--%>
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txtCustChallanDate" runat="server" Text="" oncontextmenu="return false;"
                                onkeyup="return false;" onkeydown="return false;" onkeypress="return false;"
                                Width="190px"></asp:TextBox>
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Calendar.png" />&nbsp;
                            <ajaxToolkit:CalendarExtender ID="CalendarExtender2" runat="server" PopupButtonID="Image1"
                                TargetControlID="txtCustChallanDate">
                            </ajaxToolkit:CalendarExtender>
                        </td>
                    </tr>
                    <tr align="center">
                        <td align="left">
                            <asp:Label ID="lblchallanDesc" Text="Challan Description :" runat="server" CssClass="myBigFont"></asp:Label>
                            <%--  <asp:Label ID="lblcpassword" runat="server" Text="*" ForeColor="Red"></asp:Label>--%>
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txtChallanDescription" runat="server" Text="" Width="190px" MaxLength="15"></asp:TextBox>
                        </td>
                    </tr>
                    <tr align="center">
                        <td align="left">
                            <asp:Label ID="Label1" Text="Report Delivery Date :" runat="server" CssClass="myBigFont"></asp:Label>
                            <%--  <asp:Label ID="lblcpassword" runat="server" Text="*" ForeColor="Red"></asp:Label>--%>
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txtReportDeliveryDate" runat="server" Text="" Width="190px" oncontextmenu="return false;"
                                onkeyup="return false;" onkeydown="return false;" onkeypress="return false;"></asp:TextBox>
                            <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/Calendar.png" />&nbsp;
                            <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" PopupButtonID="Image2"
                                TargetControlID="txtReportDeliveryDate">
                            </ajaxToolkit:CalendarExtender>
                        </td>
                    </tr>
                    <tr align="center">
                        <td align="left">
                            <asp:Label ID="Label2" Text="Priority :" runat="server" CssClass="myBigFont"></asp:Label>
                            <%--  <asp:Label ID="lblcpassword" runat="server" Text="*" ForeColor="Red"></asp:Label>--%>
                        </td>
                        <td align="left">
                            <asp:RadioButton ID="rdbtn_Low" s Text="Low" Checked="true" runat="server" GroupName="grpbtn"
                                Font-Bold="true" Font-Names="Verdana" Font-Size="Small" />
                            <asp:RadioButton ID="rdbtn_High" Text="High" runat="server" GroupName="grpbtn" Font-Bold="true"
                                Font-Names="Verdana" Font-Size="Small" />
                        </td>
                    </tr>
                    <tr align="right">
                        <td colspan="2">
                            <asp:Button ID="btnAddWitness" runat="server" Text="Add Witness" Width="100px" />
                            <asp:Button ID="btnAddItem" runat="server" Text="Add Item" Width="100px" />
                        </td>
                    </tr>
                    <tr align="center">
                        <td align="center" colspan="2">
                            <div style="text-align: center; width: 100%; margin-top: 5px; height: 21px;">
                                <asp:Button ID="btnSaveUser" runat="server" Text="Save" Width="70px" OnClick="btnSaveUser_Click"
                                    OnClientClick="return ValidateNew();" />
                                <asp:Button ID="btnClose" runat="server" Text="Cancel" Width="70px" OnClientClick="ClrAllCtrl(0);" />
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
            <ajaxToolkit:ModalPopupExtender ID="mdlPopup" BehaviorID="mdlPopup" runat="server"
                TargetControlID="btnAddWitness" PopupControlID="pnlWitnessInfo" CancelControlID="btnClose"
                BackgroundCssClass="modalBackground">
            </ajaxToolkit:ModalPopupExtender>
            <ajaxToolkit:ModalPopupExtender ID="mdlPopupChallanItem" BehaviorID="mdlPopupChallanItem"
                runat="server" TargetControlID="btnAddItem" PopupControlID="pnlChallanItemInfo"
                CancelControlID="btnItemCancel" BackgroundCssClass="modalBackground">
            </ajaxToolkit:ModalPopupExtender>
            <%-- </ContentTemplate>
            </asp:UpdatePanel>--%>
        </asp:Panel>
        <asp:Panel ID="pnlWitnessInfo" runat="server" CssClass="modalPopup" Width="431px">
            <asp:Panel ID="pnlwitness" runat="server" CssClass="modalPopupInner" Width="450px">
                <%--  <asp:UpdatePanel ID="upwitness" runat="server">
                <ContentTemplate>--%>
                <div style="text-align: center; width: 100%; margin-top: 5px;">
                    <table style="vertical-align: middle; border-width: 2px; border-style: solid; width: 427px;">
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="Label3" Text="Witness Information" runat="server" Style="font-family: Verdana;
                                    font-size: 14px; color: White; font-weight: bold;"></asp:Label>
                            </td>
                        </tr>
                        <tr align="center">
                            <td align="left">
                                <asp:Label ID="Label4" Text="Witness :" runat="server" CssClass="myBigFont"></asp:Label>
                                <asp:Label ID="Label5" runat="server" Text="*" ForeColor="Red"></asp:Label>
                            </td>
                            <td align="left">
                                <asp:TextBox ID="txtwitnessName" runat="server" Text="" MaxLength="100" Width="190px"></asp:TextBox>
                                <%--<ajaxToolkit:FilteredTextBoxExtender ID="fteName" BehaviorID="fteName" TargetControlID="txtName"
                                            runat="server" ValidChars="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ">
                                        </ajaxToolkit:FilteredTextBoxExtender>--%>
                            </td>
                        </tr>
                        <tr align="center">
                            <td align="center" colspan="2">
                                <div style="text-align: center; width: 100%; margin-top: 5px;">
                                    <asp:Button ID="btnSavewitness" OnClientClick="return ValidateWitness();" runat="server"
                                        Text="Save" Width="70px" OnClick="btnSavewitness_Click" />
                                    <asp:Button ID="btncancelwitness" runat="server" Text="Cancel" Width="70px" OnClientClick="return Hidepopup()" /><%-- OnClientClick="ClrAllCtrl(0);"--%>
                                </div>
                            </td>
                        </tr>
                        <tr align="center">
                            <td colspan="2">
                                <asp:UpdatePanel ID="UPGrdItemGrp" runat="server">
                                    <ContentTemplate>
                                        <asp:GridView ID="Grdwitness" runat="server" ForeColor="#333333" CellSpacing="5"
                                            CellPadding="4" AutoGenerateColumns="False" AllowPaging="false" Width="350px"
                                            GridLines="Both" OnRowDeleting="Grdwitness_RowDeleting" OnRowCancelingEdit="Grdwitness_RowCancelingEdit"
                                            OnRowEditing="Grdwitness_RowEditing" OnRowUpdating="Grdwitness_RowUpdating" DataKeyNames="WitnessID">
                                            <RowStyle BackColor="#EFF3FB" BorderStyle="None" BorderColor="White" CssClass="myGridFont" />
                                            <Columns>
                                                <asp:TemplateField HeaderText="Sr.No" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="20px">
                                                    <ItemTemplate>
                                                        <%#Container.DataItemIndex+1   %>
                                                    </ItemTemplate>
                                                    <ItemStyle HorizontalAlign="Center" Width="20px"></ItemStyle>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Witness">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblWitness" runat="server" Text='<%# Bind("Witness") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="txtWitness" Text='<%# Bind("Witness") %>' runat="server"></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <HeaderStyle Wrap="False" />
                                                </asp:TemplateField>
                                                <asp:CommandField ShowEditButton="True" />
                                                <asp:CommandField ShowDeleteButton="True" />
                                            </Columns>
                                            <PagerStyle HorizontalAlign="Center" />
                                        </asp:GridView>
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="Grdwitness" EventName="RowDeleting"></asp:AsyncPostBackTrigger>
                                        <asp:AsyncPostBackTrigger ControlID="Grdwitness" EventName="RowCancelingEdit"></asp:AsyncPostBackTrigger>
                                        <asp:AsyncPostBackTrigger ControlID="Grdwitness" EventName="RowEditing"></asp:AsyncPostBackTrigger>
                                        <asp:AsyncPostBackTrigger ControlID="Grdwitness" EventName="RowUpdating"></asp:AsyncPostBackTrigger>
                                        <asp:AsyncPostBackTrigger ControlID="btnSavewitness" EventName="Click"></asp:AsyncPostBackTrigger>
                                    </Triggers>
                                </asp:UpdatePanel>
                            </td>
                        </tr>
                    </table>
                </div>
                <%-- </ContentTemplate>
                          
            </asp:UpdatePanel>--%>
            </asp:Panel>
        </asp:Panel>
        <asp:Panel ID="pnlChallanItemInfo" runat="server" CssClass="modalPopup">
            <asp:Panel ID="pnlChallanItem" runat="server" CssClass="modalPopupInner" Width="600px">
                <%-- <asp:UpdatePanel ID="upUpdateUser" runat="server">
                <ContentTemplate>--%>
                <div style="text-align: center; width: 100%; margin-top: 5px;">
                    <table style="vertical-align: middle; border-width: 2px; border-style: solid; width: 570px;">
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="lblchallanitemInfo" Text="Challan Item Information" runat="server"
                                    Style="font-family: Verdana; font-size: 14px; color: White; font-weight: bold;"></asp:Label>
                            </td>
                        </tr>
                        <tr align="center">
                            <td align="left">
                                <asp:Label ID="lblUpdateName" Text="Item Name :" runat="server" CssClass="myBigFont"></asp:Label>
                                <asp:Label ID="lblcuname" runat="server" Text="*" ForeColor="Red"></asp:Label>
                            </td>
                            <td align="left">
                                <asp:TextBox ID="txtItemNm" runat="server" Width="190px" Text="" MaxLength="250"></asp:TextBox>
                                <%--<ajaxToolkit:FilteredTextBoxExtender ID="fteUpdateName" BehaviorID="fteUpdateName"
                                            runat="server" TargetControlID="txtUpdateName" ValidChars="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ">
                                        </ajaxToolkit:FilteredTextBoxExtender>--%>
                            </td>
                        </tr>
                        <tr align="center">
                            <td align="left">
                                <asp:Label ID="lblDescription" Text="Item Description :" runat="server" CssClass="myBigFont"></asp:Label>
                            </td>
                            <td align="left">
                                <asp:TextBox ID="txtItemDesc" runat="server" Width="190px" Text="" MaxLength="250"></asp:TextBox>
                            </td>
                        </tr>
                        <tr align="center">
                            <td align="left">
                                <asp:Label ID="lblqty" Text="Quantity:" runat="server" CssClass="myBigFont"></asp:Label>
                            </td>
                            <td align="left">
                                <asp:TextBox ID="txtQuantity" runat="server" Width="190px" Text="" MaxLength="11"></asp:TextBox>
                                <ajaxToolkit:FilteredTextBoxExtender ID="flt_txtUpdatePhoneNo" runat="server" Enabled="True"
                                    FilterType="Custom, Numbers" TargetControlID="txtQuantity" ValidChars="1234567890.">
                                </ajaxToolkit:FilteredTextBoxExtender>
                            </td>
                        </tr>
                        <tr align="center">
                            <td align="left">
                                <asp:Label ID="Label6" Text="Returnable :" runat="server" CssClass="myBigFont"></asp:Label>
                            </td>
                            <td align="left">
                                <asp:RadioButton ID="rdbtn_Yes" Text="Yes" Checked="true" runat="server" GroupName="grp"
                                    Font-Bold="true" Font-Names="Verdana" Font-Size="Small" />
                                <asp:RadioButton ID="rdbtn_No" Text="No" runat="server" GroupName="grp" Font-Bold="true"
                                    Font-Names="Verdana" Font-Size="Small" />
                            </td>
                        </tr>
                        <tr align="center">
                            <td align="center" colspan="2">
                                <div style="text-align: center; width: 100%; margin-top: 5px;">
                                    <asp:Button ID="btnsaveChallanItem" runat="server" Text="Save" Width="70px" OnClientClick="return ValidateItem();"
                                        OnClick="btnsaveChallanItem_Click" />
                                    <asp:Button ID="btnItemCancel" runat="server" Text="Cancel" Width="70px" OnClientClick="return HideItempopup()" />
                                </div>
                            </td>
                        </tr>
                        <tr align="center">
                            <td colspan="2">
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                    <ContentTemplate>
                                        <asp:GridView ID="GrdItem" runat="server" ForeColor="#333333" CellSpacing="5" CellPadding="4"
                                            AutoGenerateColumns="False" AllowPaging="false" GridLines="Both" OnRowDeleting="GrdItem_RowDeleting"
                                            OnRowCancelingEdit="GrdItem_RowCancelingEdit" OnRowEditing="GrdItem_RowEditing"
                                            OnRowUpdating="GrdItem_RowUpdating" DataKeyNames="ItemID">
                                            <RowStyle BackColor="#EFF3FB" BorderStyle="None" BorderColor="White" CssClass="myGridFont" />
                                            <Columns>
                                                <asp:TemplateField HeaderText="Sr.No" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="20px">
                                                    <ItemTemplate>
                                                        <%#Container.DataItemIndex+1   %>
                                                    </ItemTemplate>
                                                    <ItemStyle HorizontalAlign="Center" Width="20px"></ItemStyle>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Item Name">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblItemName" runat="server" Text='<%# Bind("ItemNm") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="txtitemname" Text='<%# Bind("ItemNm") %>' runat="server"></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <HeaderStyle Wrap="False" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Item Description">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblItemDesc" runat="server" Text='<%# Bind("ItemDesc") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="txtItemDesc" Text='<%# Bind("ItemDesc") %>' runat="server"></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <HeaderStyle Wrap="False" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Quantity">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblItemName" runat="server" Text='<%# Bind("Quantity") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="txtQuantity" Text='<%# Bind("Quantity") %>' runat="server"></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <HeaderStyle Wrap="False" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Returnable">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblReturnable" runat="server" Text='<%# Bind("Returnable") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:HiddenField ID="hdnReturnable" runat="server" Value='<%# Bind("Returnable") %>' />
                                                        <asp:RadioButton ID="grdbtn_Yes" Text="Yes" runat="server" GroupName="grdbtn" Font-Bold="true"
                                                            Font-Names="Verdana" Font-Size="Small" />
                                                        <asp:RadioButton ID="grdbtn_No" Text="No" runat="server" GroupName="grdbtn" Font-Bold="true"
                                                            Font-Names="Verdana" Font-Size="Small" />
                                                    </EditItemTemplate>
                                                    <HeaderStyle Wrap="False" />
                                                </asp:TemplateField>
                                                <asp:CommandField ShowEditButton="True" />
                                                <asp:CommandField ShowDeleteButton="True" />
                                            </Columns>
                                            <PagerStyle HorizontalAlign="Center" />
                                        </asp:GridView>
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="GrdItem" EventName="RowDeleting"></asp:AsyncPostBackTrigger>
                                        <asp:AsyncPostBackTrigger ControlID="GrdItem" EventName="RowCancelingEdit"></asp:AsyncPostBackTrigger>
                                        <asp:AsyncPostBackTrigger ControlID="GrdItem" EventName="RowEditing"></asp:AsyncPostBackTrigger>
                                        <asp:AsyncPostBackTrigger ControlID="GrdItem" EventName="RowUpdating"></asp:AsyncPostBackTrigger>
                                        <asp:AsyncPostBackTrigger ControlID="btnsaveChallanItem" EventName="Click"></asp:AsyncPostBackTrigger>
                                    </Triggers>
                                </asp:UpdatePanel>
                            </td>
                        </tr>
                    </table>
                </div>
                <%-- </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="btnsaveChallanItem" EventName="Click" />
                           
                </Triggers>
            </asp:UpdatePanel>--%>
            </asp:Panel>
        </asp:Panel>
        <ajaxToolkit:RoundedCornersExtender ID="RoundedCornersExtender1" runat="server" BehaviorID="RoundedCornersBehavior1"
            TargetControlID="pnlwitness" Radius="10" Corners="All" />
        <ajaxToolkit:RoundedCornersExtender ID="RoundedCornersExtender2" runat="server" BehaviorID="RoundedCornersBehavior2"
            TargetControlID="pnlChallanItem" Radius="15" Corners="All" />
    </center>

    <script type="text/javascript" language="javascript">
        function Hidepopup() {
        $find("mdlPopup").hide();
        return false;
    }
     function HideItempopup() {
        $find("mdlPopupChallanItem").hide();
        return false;
    }
  
    

       function ValidateNew()
        {
         if(document.getElementById('<%=ddlcustomer.ClientID%>').value=="Select")
            {
                alert("Please Select Customer");
                document.getElementById('<%=ddlcustomer.ClientID%>').focus();
                return false;
            }
            else if(document.getElementById('<%=txtCustChallanNo.ClientID%>').value=="")
            {
                alert("Please Enter Customer Challan No.");
                document.getElementById('<%=txtCustChallanNo.ClientID%>').focus();
                return false;
            }
            else if(document.getElementById('<%=txtCustChallanDate.ClientID%>').value=="")
            {
                alert("Please Enter Customer Challan Date");
                 document.getElementById('<%=txtCustChallanDate.ClientID%>').focus();
                return false;
            }
            else if(document.getElementById('<%=txtReportDeliveryDate.ClientID%>').value=="")
            {
                alert("Please Enter Report Delivery Date.");
                   document.getElementById('<%=txtReportDeliveryDate.ClientID%>').focus();
                return false;
            }

            if(document.getElementById('<%=txtCustChallanDate.ClientID%>').value !="")
           {
                var challandate=document.getElementById('<%=txtCustChallanDate.ClientID%>').value;
                var currentTime = new Date();
                var month = currentTime.getMonth() + 1;
                var day = currentTime.getDate();
                var year = currentTime.getFullYear();
                var currentdate=month + "/" + day + "/" + year;
               if(comparedates(currentdate,challandate,"Chalan Date Must Be Greater Than Current Date",document.getElementById('<%=txtCustChallanDate.ClientID%>'))==false)
               return false;
              
          }
          
           if(document.getElementById('<%=txtCustChallanDate.ClientID%>').value !="" && document.getElementById('<%=txtReportDeliveryDate.ClientID%>').value !="")
           {
            var challandate=document.getElementById('<%=txtCustChallanDate.ClientID%>').value;
            var deliverydate=document.getElementById('<%=txtReportDeliveryDate.ClientID%>').value;
            if(comparedates(challandate,deliverydate,"Report Delivery Date Must Be Greater Than Challan Date",document.getElementById('<%=txtReportDeliveryDate.ClientID%>') )==false )
            return false;
           }
           
           
         
         
           
          
           
  }        
      function ClrAllCtrl(flag)
    {
        if (flag=="0")
        {
       
            document.getElementById('<%=txtCustChallanNo.ClientID%>').value="";
            document.getElementById('<%=txtCustChallanDate.ClientID%>').value=""; 
            document.getElementById('<%=txtChallanDescription.ClientID%>').value=""; 
            document.getElementById('<%=txtReportDeliveryDate.ClientID%>').value=""; 
            window.history.back(-1);  
            
        }
      
    }
 function comparedates( dt1, dt2,strmsg,control)
 {
     if(Date.parse(dt2)< Date.parse(dt1) )
     {
        alert(strmsg);
       document.getElementById(control.id).value="";
          document.getElementById(control.id).focus();
        return false;
      }   
 }
 
 function ValidateWitness()
    {
             if(document.getElementById('<%=txtwitnessName.ClientID%>').value=="")
            {
                alert("Please Enter Witness Name");
                 document.getElementById('<%=txtwitnessName.ClientID%>').focus();
                return false;
            }
            else
            return true;
    }
    
   function ValidateItem()
   {
     if(document.getElementById('<%=txtItemNm.ClientID%>').value=="")
            {
                alert("Please Enter Item Name");
                 document.getElementById('<%=txtItemNm.ClientID%>').focus();
                return false;
            }
            else
            return true;
   
   }
    </script>

</asp:Content>
