<%@ page language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="MasterForms_frmElementDetails, App_Web_frmelementdetails.aspx.6fc3a045" title="Manage Element Details" %>

<%@ Register TagPrefix="Custom" Namespace="ENTech.WebControls" Assembly="AutoSuggestMenu" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <center>
        <asp:UpdatePanel ID="UpdatePanel4" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <table style="width: 720px; vertical-align: middle;">
                    <tr class="Gridheading">
                        <td align="right" style="width: 35%">
                            <asp:Label ID="Label5" Text="Specification:" runat="server" CssClass="myBigFont"></asp:Label>
                        </td>
                        <td align="left" style="width: 65%" colspan="2">
                            <asp:TextBox ID="txtSpecification" runat="server" Height="20px" AutoPostBack="true"
                                Width="250px" OnTextChanged="txtSpecification_TextChanged"></asp:TextBox>
                            <ajaxToolkit:AutoCompleteExtender ID="aceeditspecification" runat="server" MinimumPrefixLength="1"
                                ServiceMethod="FetchSpecification" ServicePath="WebService.asmx" TargetControlID="txtSpecification"
                                OnClientItemSelected="GetCode">
                            </ajaxToolkit:AutoCompleteExtender>
                            <ajaxToolkit:TextBoxWatermarkExtender ID="TBWE2" runat="server" TargetControlID="txtSpecification"
                    WatermarkText="Type Alphabet to Get Specification List" WatermarkCssClass="watermarked" />
                        </td>
                    </tr>
                    <tr class="Gridheading">
                        <td align="right" style="width: 35%">
                            <asp:Label ID="Label1" Text="Grade:" runat="server" CssClass="myBigFont"></asp:Label>
                        </td>
                        <td align="left" style="width: 65%">
                            <asp:DropDownList ID="ddlGrade" runat="server" Height="21px" Width="250px" AutoPostBack="true"
                                OnSelectedIndexChanged="ddlGrade_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                        <td align="center" >
                         <asp:Button ID="btnAddGrade" runat="server" Text="Add New Grade" CssClass="normalbutton"
                                />
                         <ajaxToolkit:ModalPopupExtender ID="mdlPopupNewGrade" BehaviorID="mdlPopupNewGrade"
                runat="server" TargetControlID="btnAddGrade" PopupControlID="pnlNewGrade" CancelControlID="btnCancel"
                BackgroundCssClass="modalBackground">
            </ajaxToolkit:ModalPopupExtender>
                        </td>
                    </tr>
                    <tr class="Gridheading">
                    <td  align="right" style="width: 35%">
                    <asp:Label ID="Label3" Text="Test Category:" runat="server" CssClass="myBigFont"></asp:Label>
                    </td>
                    <td  align="left" style="width: 65%" colspan="2">
                     <asp:DropDownList ID="ddltestcategory" AutoPostBack="true"  runat="server" 
                                        Height="21px" Width="250px" onselectedindexchanged="ddltestcategory_SelectedIndexChanged" 
                                        ></asp:DropDownList>
                    </td>
                    </tr>
                    <tr class="Gridheading">
                        <td align="right" style="width: 35%">
                            <asp:Label ID="Label2" Text="Test Type:" runat="server" CssClass="myBigFont"></asp:Label>
                        </td>
                        <td align="left" style="width: 65%" >
                            <asp:DropDownList ID="ddltesttype" runat="server" AutoPostBack="true" Height="17px"
                                Width="250px" OnSelectedIndexChanged="ddltesttype_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                        <td>
                        <asp:Button ID="btnAddTestType"    runat="server" Text="Add New Test Type" CssClass="normalbutton"
                                />
                         <ajaxToolkit:ModalPopupExtender ID="mdlPopupNewTestType" BehaviorID="mdlPopupNewTestType"
                runat="server" TargetControlID="btnAddTestType" PopupControlID="pnlNewTestType" CancelControlID="btnCancelTestType"
                BackgroundCssClass="modalBackground">
            </ajaxToolkit:ModalPopupExtender>
                        </td>
                    </tr>
                    <tr class="Gridheading">
                        <td colspan="3">
                            <div>
                                <asp:GridView ID="gridPara" runat="server" Width="100%" 
                                    AutoGenerateColumns="false" ShowFooter="true" 
                                    EnableViewState="true" DataKeyNames="ParaID" OnRowCancelingEdit="gridPara_RowCancelingEdit"
                                    OnRowDeleting="gridPara_RowDeleting" OnRowEditing="gridPara_RowEditing" 
                                    OnRowUpdating="gridPara_RowUpdating" onrowdatabound="gridPara_RowDataBound">
                                    <Columns>
                                        <asp:TemplateField HeaderText="Sr.No" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="20px">
                                            <ItemTemplate>
                                                <%#Container.DataItemIndex+1   %>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Center" Width="20px" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Para Name" HeaderStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Label ID="lblAgency" Text='<%#Eval("ParaNm")%>' runat="server"></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtpara" Text='<%# Eval("ParaNm")%>' runat="server"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemStyle HorizontalAlign="Left" />
                                        </asp:TemplateField>
                                         <asp:TemplateField HeaderText="Min Value" HeaderStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Label ID="lblminval" Text='<%#Eval("MinValue")%>' runat="server"></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtminval" Text='<%# Eval("MinValue")%>' runat="server"></asp:TextBox>
                                            </EditItemTemplate>
                                           
                                        </asp:TemplateField>
                                         <asp:TemplateField HeaderText="Max Value" HeaderStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Label ID="lblmaxval" Text='<%#Eval("MaxValue")%>' runat="server"></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtmaxval" Text='<%# Eval("MaxValue")%>' runat="server"></asp:TextBox>
                                            </EditItemTemplate>
                                          
                                        </asp:TemplateField>
                                         <asp:TemplateField HeaderText="Set Default" HeaderStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                
                                                 <asp:CheckBox ID="chksetdefault" runat="server" Checked='<%# (DataBinder.Eval(Container.DataItem,"SetDefault").ToString()!="True"?false:true) %>' /> 
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                            <asp:CheckBox ID="chkdefault" runat="server"  Checked='<%# (DataBinder.Eval(Container.DataItem,"SetDefault").ToString()!="True"?false:true) %>' /> 
                                                
                                            </EditItemTemplate>
                                           
                                             <FooterStyle HorizontalAlign="Right" />
                                            <FooterTemplate>
                                                <asp:Button ID="BtnAdd" runat="server" Text="Add New Row" onclick="btnAdd_Click" />
                                            </FooterTemplate>
                                        </asp:TemplateField>
                                        <asp:CommandField ShowEditButton="true" />
                                        <asp:CommandField ShowDeleteButton="True" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </td>
                    </tr>
                </table>
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:HiddenField ID="hdnSpecid" runat="server" />
        
         <asp:Panel ID="pnlNewGrade" runat="server" CssClass="modalPopup" Style="display: none;" >
        <asp:Panel ID="pnlGrade" runat="server" CssClass="modalPopupInner" Width="450px">
            <asp:UpdatePanel ID="upGradeInfo" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                <center>
                    <div style="text-align: center; padding: 10px; width: 82%; margin-top: 5px;">
                    <center>
                        <table style="vertical-align: middle; border-width: 2px; border-style: solid; width: 406px;">
                            <tr>
                                <td colspan="2" align="center" >
                                    <asp:Label ID="lblEnterGrade" Text="Grade Information" runat="server" Style="font-family: Verdana;
                                        font-size: 14px; color: White; font-weight: bold;"></asp:Label>
                                </td>
                            </tr>
                            <%-- <tr align="center">
                                <td align="left">
                                    <asp:Label ID="Label4" Text="Specification:" runat="server" CssClass="myBigFont"></asp:Label>
                                    <asp:Label ID="Label6" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                </td>
                                <td align="left">
                                    <asp:DropDownList ID="ddladdSpec" runat="server" Height="21px" Width="253px"></asp:DropDownList>
                                </td>
                               
                            </tr>--%>
                               <tr align="center">
                                <td align="left">
                                    <asp:Label ID="lblEnterGradeName" Text="Grade Code :" runat="server" CssClass="myBigFont"></asp:Label>
                                    <asp:Label ID="lblcGrade" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                </td>
                                <td align="left">
                                    <asp:TextBox ID="txtGradeCode" runat="server" Text="" Width="250px" MaxLength="100"></asp:TextBox>
                                </td>
                            </tr>
                               <tr align="center">
                                <td align="left">
                                    <asp:Label ID="lblEnterDescription" Text="Description :" runat="server" CssClass="myBigFont"></asp:Label>
                                </td>
                                <td align="left">
                                    <asp:TextBox ID="txtGradeDesc" runat="server" Text="" Width="250px" MaxLength="150"></asp:TextBox>
                                </td>
                            </tr>
                             <tr align="center">
                                <td align="left">
                                    <asp:Label ID="Label11" Text="Test Category:" runat="server" CssClass="myBigFont"></asp:Label>
                                    <asp:Label ID="Label12" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                </td>
                                <td align="left">
                                    <asp:DropDownList ID="ddladdtestCategory" runat="server" Height="21px" AutoPostBack="true" 
                                        Width="254px" onselectedindexchanged="ddladdtestCategory_SelectedIndexChanged"></asp:DropDownList>
                                </td>
                            </tr>
                              <tr align="center">
                                <td align="left">
                                    <asp:Label ID="Label7" Text="Test Type:" runat="server" CssClass="myBigFont"></asp:Label>
                                    <asp:Label ID="Label8" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                </td>
                                <td align="left" >
                                    <asp:DropDownList ID="ddladdtesttype" runat="server" Height="21px" Width="253px"></asp:DropDownList>
                                </td>
                            </tr>
                         
                         
                            <tr align="center">
                                <td colspan="2">
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
                  <center>
                  <table style="width: 406px;">
                  <tr align="center">
                                <td align="center">
                                   <asp:Button ID="btnSaveGrade" runat="server" Text="Save" Width="70px" 
                                            OnClick="btnSaveGrade_Click" OnClientClick="return saveGrade();" />
                                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" Width="70px"  />
                                </td>
                            </tr>
                        </table>
                                          </center>               
                                    </div>
               
        </asp:Panel>
    </asp:Panel>
    
      <asp:Panel ID="pnlNewTestType" runat="server" CssClass="modalPopup" Style="display: none;"> 
        <asp:Panel ID="pnlTestType" runat="server" CssClass="modalPopupInner" Width="480px">
            <asp:UpdatePanel ID="upTestTypeInfo" runat="server">
                <ContentTemplate>
                <center>
                    <div style="text-align: center; padding: 10px; width: 90%; margin-top: 5px; height: 131px;">
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
                                    <asp:Label ID="lblEnterTestTypeName" Text="TestType :" runat="server" CssClass="myBigFont"></asp:Label>
                                    <asp:Label ID="lblcTestType" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                </td>
                                <td align="left">
                                    <asp:TextBox ID="txtTestType" runat="server" Text="" Width="250px" MaxLength="100"></asp:TextBox>
                                </td>
                            </tr>
                            <tr align="center">
                                <td align="left">
                                    <asp:Label ID="Label13" Text="Description :" runat="server" CssClass="myBigFont"></asp:Label>
                                </td>
                                <td align="left">
                                    <asp:TextBox ID="txtDescription" runat="server" Text="" Width="250px" MaxLength="150"></asp:TextBox>
                                </td>
                            </tr>
                            <tr align="center">
                                <td align="left">
                                    <asp:Label ID="Label14" Text="Observation :" runat="server" CssClass="myBigFont"></asp:Label>
                                </td>
                                <td align="left">
                                    <asp:RadioButton id="rdbtnYes" runat="server" Checked="false" Text="Yes" GroupName="grp"  />  
                                    <asp:RadioButton id="rdbtnNo" runat="server" Checked="true" Text="No" GroupName="grp"  />  
                                </td>
                            </tr>
                            <tr align="center">
                                <td colspan="2">
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
            
                <center>
                
                <div style="text-align: center; width: 100%; margin-top: 5px;">
                     <asp:Button ID="btnSaveTestType" runat="server" Text="Save" Width="70px" OnClientClick="return ValidateNewTestType();"
                         OnClick="btnSaveTestType_Click" />              <asp:Button ID="btnCancelTestType" runat="server" Text="Cancel" Width="70px"  />
                                    </div>
              
                </center>
              
        </asp:Panel>
    </asp:Panel>
    </center>

    <script language="javascript" type="text/javascript">
     
      
    function GetCode(source, eventArgs )
{
document.getElementById('<%=hdnSpecid.ClientID%>').value =eventArgs.get_value();


}

function saveGrade()
{
if(document.getElementById('<%=txtSpecification.ClientID%>').value=="Type Alphabet to Get Specification List" || document.getElementById('<%=txtSpecification.ClientID%>').value=="")
{
alert(" Select Specification ");
return false;
}
}

function ValidateNewTestType()
{
if(document.getElementById('<%=txtTestType.ClientID%>').value=="")
{
alert(" Enter Test Type Name ");
return false;
}
}
    </script>

</asp:Content>
