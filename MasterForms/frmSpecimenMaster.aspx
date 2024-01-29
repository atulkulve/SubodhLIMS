<%@ page language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="MasterForms_frmSpecimenMaster, App_Web_frmspecimenmaster.aspx.6fc3a045" title="Manage Specimen Master" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <asp:UpdatePanel ID="upSpecimenMaster" runat="server" UpdateMode="Conditional" >
        <ContentTemplate>
            <div style="text-align: center;">
            <center>
                <table style="width: 40%; vertical-align: middle;">
                    <tr class="Tableheading">
                        <td align="center">
                            <asp:Label ID="lblSpecimenList" Text="Specimen List" runat="server" Font-Bold="True"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" style="text-align: center">
                            <asp:Label ID="lblMsg" runat="server" CssClass="myBigFont" Text="No Record Found"
                                ForeColor="Red"></asp:Label>
                            <asp:GridView ID="gdvSpecimens" runat="server" HeaderStyle-CssClass="myBigFont" RowStyle-CssClass="myGridFont"
                                DataKeyNames="SpecimenId" PagerStyle-HorizontalAlign="Center" AutoGenerateColumns="False"
                                ForeColor="#333333" Width="100%" AllowPaging="True" AllowSorting="True" PageSize="10"
                                OnPageIndexChanging="gdvSpecimens_PageIndexChanging" OnRowCommand="gdvSpecimens_RowCommand"
                                OnRowCreated="gdvSpecimens_RowCreated" OnSorting="gdvSpecimens_Sorting">
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
                                    <asp:TemplateField HeaderText="Specimen Name " ItemStyle-Width="150px" ItemStyle-HorizontalAlign="Left"
                                        SortExpression="SpecimenNm">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="lnkbtnSpecimenName" Text='<%# Eval("SpecimenNm") %>' CommandArgument='<%# Eval("SpecimenId") %>'
                                                CommandName="View" runat="server"></asp:LinkButton>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Left" Width="150px"></ItemStyle>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="SpecimenDesc" HeaderText="Description" ItemStyle-Width="300px"
                                        ItemStyle-HorizontalAlign="Left" SortExpression="SpecimenDesc">
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
                            <asp:Button ID="btnAddSpecimen" runat="server" Text="Add New Specimen" CssClass="normalbutton"
                                OnClientClick="ClrAllCtrl(0);" Height="26px" Width="178px" />
                            &nbsp;
                            <asp:Button ID="btnDeleteSpecimen" runat="server" Text="Remove Specimen" CssClass="normalbutton"
                                OnClientClick="return confirmMsg(this.form)" OnClick="btnDeleteSpecimen_Click"
                                Width="176px" />
                        </td>
                    </tr>
                </table>
                </center>
            </div>
            <asp:Button ID="btnShowPopup" runat="server" style="display:none "/>
            <ajaxToolkit:ModalPopupExtender ID="mdlPopupNewSpecimen" BehaviorID="mdlPopupNewSpecimen"
                runat="server" TargetControlID="btnAddSpecimen" PopupControlID="pnlNewSpecimen"
                CancelControlID="btnCancel" BackgroundCssClass="modalBackground">
            </ajaxToolkit:ModalPopupExtender>
            <ajaxToolkit:ModalPopupExtender ID="mdlPopupUpdateSpecimen" BehaviorID="mdlPopupUpdateSpecimen"
                runat="server" TargetControlID="btnShowPopup" PopupControlID="pnlUpdateSpecimen"
                CancelControlID="btnUpdateCancel" BackgroundCssClass="modalBackground">
            </ajaxToolkit:ModalPopupExtender>
        </ContentTemplate>
    </asp:UpdatePanel>
    <asp:Panel ID="pnlNewSpecimen" runat="server" CssClass="modalPopup" Style="display: none;">
        <asp:Panel ID="pnlSpecimen" runat="server" CssClass="modalPopupInner" Width="500px">
            <asp:UpdatePanel ID="upSpecimenInfo" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <center>
                        <div style="text-align: center; padding: 10px; width: 90%; margin-top: 5px;">
                        <center>
                            <table style="vertical-align: middle; border-width: 2px; border-style: solid; width: 462px;">
                                <tr>
                                    <td colspan="2" align="center" >
                                        <asp:Label ID="lblEnterSpecimen" Text="Specimen Information" runat="server" Style="font-family: Verdana;
                                            font-size: 14px; color: White; font-weight: bold;"></asp:Label>
                                    </td>
                                </tr>
                                <tr align="center">
                                    <td align="left">
                                        <asp:Label ID="lblEnterSpecimenName" Text="Specimen :" runat="server" CssClass="myBigFont"></asp:Label>
                                        <asp:Label ID="lblcSpecimen" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                    </td>
                                    <td align="left">
                                        <asp:TextBox ID="txtSpecimenNm" runat="server" Text="" Width="220px" MaxLength="100"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr align="center">
                                    <td align="left">
                                        <asp:Label ID="lblEnterDescription" Text="Description :" runat="server" CssClass="myBigFont"></asp:Label>
                                    </td>
                                    <td align="left">
                                        <asp:TextBox ID="txtSpecimenDesc" runat="server" Text="" Width="220px" MaxLength="150"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr align="center">
                                    <td align="left">
                                        <asp:Label ID="Label11" Text="TestType:" runat="server" CssClass="myBigFont"></asp:Label>
                                    </td>
                                    <td align="left">
                                     <asp:DropDownList ID="ddlAddTestType" runat="server" Width="225px" Visible="false" ></asp:DropDownList> 
                                     <asp:TextBox ID="txtaddTestType" runat="server" BackColor="Transparent" BorderStyle="None" Font-Bold="true" ForeColor="White" Font-Names="Verdana" Text="Tensile Test"></asp:TextBox>
                                                                        </td>
                                     
                                </tr>
                                <tr align="center">
                                    <td align="left">
                                        <asp:Label ID="Label1" Text="Input Type:" runat="server" CssClass="myBigFont"></asp:Label>
                                    </td>
                                    <td align="left">
                                       
                                                <asp:DropDownList ID="ddladdinputtype" runat="server" AutoPostBack="true" Width="225px"
                                                    OnSelectedIndexChanged="ddladdinputtype_SelectedIndexChanged" >
                                                </asp:DropDownList>
                                            
                                    </td>
                                </tr>
                                <tr align="center">
                                <td align="left" style="font-family:Verdana;font-size:small" >
                                Required Parameter
                                </td>
                                    <td align="left"  id="tdinputtype" runat="server" style="font-family:Verdana;font-size:small ">
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr align="center">
                                    <td align="center" colspan="2">
                                        
                                    </td>
                                </tr>
                            </table>
                            </center>
                        </div>
                    </center>
                </ContentTemplate>
              
            </asp:UpdatePanel>
            <div style="text-align: center; width: 100%; margin-top: 5px;">
                                            <asp:Button ID="btnSaveSpecimen" runat="server" Text="Save" Width="70px" OnClientClick="return ValidateNew();"
                                                OnClick="btnSaveSpecimen_Click" />
                                            <asp:Button ID="btnCancel" runat="server" Text="Cancel" Width="70px" OnClientClick="ClrAllCtrl(0);" />
                                        </div>
        </asp:Panel>
    </asp:Panel>
    <asp:Panel ID="pnlUpdateSpecimen" runat="server" CssClass="modalPopup" Style="display: none;">
        <asp:Panel ID="pnlUSpecimen" runat="server" CssClass="modalPopupInner" Width="500px">
            <asp:UpdatePanel ID="upUpdateSpecimen" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <center>
                        <div style="text-align: center; width: 100%; margin-top: 5px;">
                        <center>
                            <table style="vertical-align: middle; border-width: 2px; border-style: solid; width: 372px;">
                                <tr>
                                    <td colspan="2" align="center" >
                                        <asp:Label ID="lblUpdateSpecimen" Text="Specimen Information" runat="server" Style="font-family: Verdana;
                                            font-size: 14px; color: White; font-weight: bold;"></asp:Label>
                                    </td>
                                </tr>
                                <tr align="center">
                                    <td align="left">
                                        <asp:Label ID="lblUpdateSpecimenName" Text="Specimen :" runat="server" CssClass="myBigFont"></asp:Label>
                                        <asp:Label ID="lblcuSpecimen" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                    </td>
                                    <td align="left">
                                        <asp:TextBox ID="txtUpdateSpecimenNm" runat="server" Text="" Width="220px" MaxLength="100"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr align="center">
                                    <td align="left">
                                        <asp:Label ID="lblUpdateDesc" Text="Description :" runat="server" CssClass="myBigFont"></asp:Label>
                                    </td>
                                    <td align="left">
                                        <asp:TextBox ID="txtUpdateSpecimenDesc" runat="server" Text="" Width="220px" MaxLength="150"></asp:TextBox>
                                    </td>
                                </tr>
                                 <tr align="center">
                                    <td align="left">
                                        <asp:Label ID="Label3" Text="TestType:" runat="server" CssClass="myBigFont"></asp:Label>
                                    </td>
                                    <td align="left">
                                     <asp:DropDownList ID="ddlEditTestType" runat="server" Width="225px"  Visible="false"></asp:DropDownList>  
                                      <asp:TextBox ID="TextBox1" runat="server" BackColor="Transparent" BorderStyle="None" Font-Bold="true" ForeColor="White" Font-Names="Verdana" Text="Tensile Test"></asp:TextBox>
                                                                      </td>
                                </tr>
                                <tr align="center">
                                    <td align="left">
                                        <asp:Label ID="Label2" Text="Input Type:" runat="server" CssClass="myBigFont"></asp:Label>
                                    </td>
                                    <td align="left">
                                        <asp:DropDownList ID="ddlupdateInputType" runat="server" AutoPostBack="true" 
                                            Width="225px" onselectedindexchanged="ddlupdateInputType_SelectedIndexChanged">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr align="center">
                                <td align="left" >
                                Required Parameter
                                </td>
                                    <td align="left"  id="tdupdateInputType" runat="server">
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr align="center">
                                    <td align="center" colspan="2">
                                       
                                    </td>
                                </tr>
                            </table>
                            </center>
                        </div>
                    </center>
                </ContentTemplate>
               
            </asp:UpdatePanel>
             <div style="text-align: center; width: 100%; margin-top: 5px;">
                                            <asp:Button ID="btnUpdateSpecimen" runat="server" Text="Update" Width="70px" OnClientClick="return ValidateUpdate();"
                                                OnClick="btnUpdateSpecimen_Click" />
                                            <asp:Button ID="btnUpdateCancel" runat="server" Text="Cancel" Width="70px" OnClientClick="ClrAllCtrl(0);" />
                                        </div>
        </asp:Panel>
    </asp:Panel>
    <ajaxToolkit:RoundedCornersExtender ID="RoundedCornersExtender1" runat="server" BehaviorID="RoundedCornersBehavior1"
        TargetControlID="pnlSpecimen" Radius="10" Corners="All" />
    <ajaxToolkit:RoundedCornersExtender ID="RoundedCornersExtender2" runat="server" BehaviorID="RoundedCornersBehavior2"
        TargetControlID="pnlUSpecimen" Radius="10" Corners="All" />

    <script type="text/javascript" language="javascript">
        var TotalChkBx;
        var Counter;

        window.onload = function()
        {
       
            //Get total no. of CheckBoxes in side the GridView.
            TotalChkBx = parseInt('<%= this.gdvSpecimens.Rows.Count %>');
            //Get total no. of checked CheckBoxes in side the GridView.
            Counter = 0;
            
        }
        
        function HeaderClick(CheckBox)
        {
            //Get target base & child control.
            var TargetBaseControl = document.getElementById('<%= this.gdvSpecimens.ClientID %>');
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
        
        if(document.getElementById('<%=txtSpecimenNm.ClientID%>').value=="")
            {
                alert("Please Enter Specimen Name.");
                return false;
            }
          
             else  if(document.getElementById('<%=ddladdinputtype.ClientID%>').value=="Select")
            {
                alert("Please Select Input Type.");
                return false;
            }
            else
                return true;
        }
        
        function ValidateUpdate()
        {
        
      if(document.getElementById('<%=txtUpdateSpecimenNm.ClientID%>').value=="")
            {
                alert("Please Enter Specimen Name.");
                return false;
            }
             else  if(document.getElementById('<%=ddlupdateInputType.ClientID%>').value=="Select")
            {
                alert("Please Select Input Type.");
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
            document.getElementById('<%=txtSpecimenNm.ClientID%>').value="";
            document.getElementById('<%=txtSpecimenDesc.ClientID%>').value=""; 
        }
        else
        {
            document.getElementById('<%=txtUpdateSpecimenNm.ClientID%>').value="";
            document.getElementById('<%=txtUpdateSpecimenDesc.ClientID%>').value=""; 
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
