<%@ page language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="MasterForms_frmGradeMaster, App_Web_frmgrademaster.aspx.6fc3a045" title="Grade Master" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <asp:UpdatePanel ID="upGradeMaster" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <div style="text-align: center;">
            <center>
                <table style="width:50%; vertical-align: middle;" >
                    <tr class="Tableheading">
                        <td align="center"  colspan="2">
                            <asp:Label ID="lblGradeList" Text="Grade List" runat="server" Font-Bold="True"></asp:Label>
                        </td>
                    </tr>
                    <tr align="center">
                                <td align="center" style="width:40%">
                                    <asp:Label ID="Label5" Text="Specification:" runat="server" CssClass="myBigFont"></asp:Label>
                                   
                                </td>
                                <td align="left" style="width:60%">
                                    <asp:DropDownList ID="ddlSpecification"    runat="server" 
                                        Height="21px" Width="205px"  
                                        ></asp:DropDownList>
                                </td>
                                <%-- <td align="right" style="width:25%">
                                    <asp:Label ID="Label10" Text="Test Type:" runat="server" CssClass="myBigFont"></asp:Label>
                                   
                                </td>
                                <td align="left" style="width:25%">
                                    <asp:DropDownList ID="ddltesttype"  runat="server" 
                                        Height="21px" Width="195px" 
                                       ></asp:DropDownList>
                                </td>--%>
                            </tr>
                            <tr>
                           <td align="center" style="text-align: center " colspan="2">
                             <asp:Button ID="btnSearch" runat="server" Text="Search" Font-Bold="true" 
                                   onclick="btnSearch_Click"  />
                              <br />  <asp:Label ID="lblMsg" runat="server" CssClass="myBigFont" Text="No Record Found"
                                ForeColor="Red"></asp:Label>
                            </td>
                            </tr>
                    <tr >
                        <td align="center" style="text-align: center " colspan="2">
                      
                           
                            <asp:GridView ID="gdvGrades" runat="server" HeaderStyle-CssClass="myBigFont" RowStyle-CssClass="myGridFont"
                                DataKeyNames="GradeId,SpecID" PagerStyle-HorizontalAlign="Center" AutoGenerateColumns="False"
                                ForeColor="#333333" Width="100%" AllowPaging="True" AllowSorting="True" PageSize="10"
                                OnPageIndexChanging="gdvGrades_PageIndexChanging" OnRowCommand="gdvGrades_RowCommand"
                                OnRowCreated="gdvGrades_RowCreated" OnSorting="gdvGrades_Sorting">
                                
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
                                        <ItemStyle HorizontalAlign="Center" Width="10px" ></ItemStyle>
                                    </asp:TemplateField>
                                   <%-- <asp:HyperLinkField DataNavigateUrlFields="GradeId,SpecID" DataNavigateUrlFormatString="frmRVDetails.aspx?GradeID={0}&SpecID={1}" DataTextField="GradeCode" />--%>
                                    <asp:TemplateField HeaderText="Grade Name" ItemStyle-Width="150px" ItemStyle-HorizontalAlign="Left"
                                        SortExpression="GradeCode">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="lnkbtnGradeName" Text='<%# Eval("GradeCode") %>' CommandArgument='<%# Eval("GradeId") %>'
                                                CommandName="View" runat="server" ></asp:LinkButton>
                                               
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Left" Width="150px"></ItemStyle>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="GradeDescription" HeaderText="Description" ItemStyle-Width="300px"
                                        ItemStyle-HorizontalAlign="Left" SortExpression="GradeDescription">
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
                           <%-- <asp:Button ID="btnAddGrade" runat="server" Text="Add New Grade" CssClass="normalbutton"
                                OnClientClick="ClrAllCtrl(0);" />--%>
                                 <asp:Button ID="btn_AddGradePara" Text="Add Grade"  runat="server" 
                Font-Bold="true" onclick="btn_AddGradePara_Click" style="height: 26px"     />
                            &nbsp;
                            <asp:Button ID="btnDeleteGrade" runat="server" Text="Remove Grade" CssClass="normalbutton"
                                OnClientClick="return confirmMsg(this.form)" OnClick="btnDeleteGrade_Click" />
                        </td>
                    </tr>
                </table>
                </center>
            </div>
            <asp:Button ID="btnShowPopup" runat="server" Style="display: none"  />
           <%-- <ajaxToolkit:ModalPopupExtender ID="mdlPopupNewGrade" BehaviorID="mdlPopupNewGrade"
                runat="server" TargetControlID="btnAddGrade" PopupControlID="pnlNewGrade" CancelControlID="btnCancel"
                BackgroundCssClass="modalBackground">
            </ajaxToolkit:ModalPopupExtender>--%>
            <ajaxToolkit:ModalPopupExtender ID="mdlPopupUpdateGrade" BehaviorID="mdlPopupUpdateGrade"
                runat="server" TargetControlID="btnShowPopup" PopupControlID="panelUpdateGrade"
                CancelControlID="btnCancelUpdateGrade" BackgroundCssClass="modalBackground">
            </ajaxToolkit:ModalPopupExtender>
              <%--<ajaxToolkit:ModalPopupExtender ID="mdlpopupeditgrade" BehaviorID="mdlpopupeditgrade"
                runat="server" TargetControlID="btnShowPopup" PopupControlID="pnlUpdateGrade"
                CancelControlID="btnUpdateCancel" BackgroundCssClass="modalBackground">
            </ajaxToolkit:ModalPopupExtender>--%>
            
        </ContentTemplate>
        <Triggers>
        <asp:AsyncPostBackTrigger ControlID="ddlSpecification" EventName="SelectedIndexChanged" /> 
        <asp:PostBackTrigger ControlID="btn_AddGradePara" />
        </Triggers> 
    </asp:UpdatePanel>
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
                             <tr align="center">
                                <td align="left">
                                    <asp:Label ID="Label1" Text="Specification:" runat="server" CssClass="myBigFont"></asp:Label>
                                    <asp:Label ID="Label3" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                </td>
                                <td align="left">
                                    <asp:DropDownList ID="ddladdSpec" runat="server" Height="21px" Width="253px"></asp:DropDownList>
                                </td>
                               
                            </tr>
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
                                    <asp:Label ID="Label6" Text="Test Type:" runat="server" CssClass="myBigFont"></asp:Label>
                                    <asp:Label ID="Label7" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                </td>
                                <td align="left" >
                                    <asp:DropDownList ID="ddladdtesttype" runat="server" Height="21px" Width="253px"></asp:DropDownList>
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
                                   <asp:Button ID="btnSaveGrade" runat="server" Text="Save" Width="70px" OnClientClick="return ValidateNew();"
                                            OnClick="btnSaveGrade_Click" />
                                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" Width="70px" OnClientClick="ClrAllCtrl(0);" />
                                </td>
                            </tr>
                        </table>
                                          </center>               
                                    </div>
               
        </asp:Panel>
    </asp:Panel>
    <asp:Panel ID="pnlUpdateGrade" runat="server" CssClass="modalPopup"  Style="display: none;">
        <asp:Panel ID="pnlUGrade" runat="server" CssClass="modalPopupInner" Width="450px">
            <asp:UpdatePanel ID="upUpdateGrade" runat="server" UpdateMode="Conditional" >
                <ContentTemplate>
                <center>
                    <div style="text-align: center; width: 100%; margin-top: 5px;">
                    <center> 
                        <table style="vertical-align: middle; border-width: 2px; border-style: solid; width: 428px;">
                            <tr>
                                <td colspan="2" align="center" >
                                    <asp:Label ID="lblUpdateGrade" Text="Grade Information" runat="server" Style="font-family: Verdana;
                                        font-size: 14px; color: White; font-weight: bold;"></asp:Label>
                                </td>
                            </tr>
                            <tr align="center">
                                <td align="left">
                                    <asp:Label ID="Label2" Text="Specification:" runat="server" CssClass="myBigFont"></asp:Label>
                                    <asp:Label ID="Label4" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                </td>
                                <td align="left">
                                    <asp:DropDownList ID="ddleditspec" runat="server" Height="21px" Width="253px"></asp:DropDownList>
                                </td>
                            </tr>
                             <tr align="center">
                                <td align="left">
                                    <asp:Label ID="lblUpdateGradeName" Text="Grade Code:" runat="server" CssClass="myBigFont"></asp:Label>
                                    <asp:Label ID="lblcuGrade" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                </td>
                                <td align="left">
                                    <asp:TextBox ID="txtUpdateGradeCode" runat="server" Text="" Width="250px" MaxLength="100"></asp:TextBox>
                                </td>
                            </tr>
                             <tr align="center">
                                <td align="left">
                                    <asp:Label ID="Label13" Text="Test Category:" runat="server" CssClass="myBigFont"></asp:Label>
                                    <asp:Label ID="Label14" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                </td>
                                <td align="left">
                                    <asp:DropDownList ID="ddledittestcategory" runat="server" Height="21px" AutoPostBack="true" 
                                        Width="254px" onselectedindexchanged="ddledittestcategory_SelectedIndexChanged"></asp:DropDownList>
                                </td>
                            </tr>
                             <tr align="center">
                                <td align="left">
                                    <asp:Label ID="Label8" Text="Test Type:" runat="server" CssClass="myBigFont"></asp:Label>
                                    <asp:Label ID="Label9" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                </td>
                                <td align="left">
                                    <asp:DropDownList ID="ddledittesttype" runat="server" Height="21px" Width="253px"></asp:DropDownList>
                                </td>
                            </tr>
                           
                            <tr align="center">
                                <td align="left">
                                    <asp:Label ID="lblUpdateDesc" Text="Description :" runat="server" CssClass="myBigFont"></asp:Label>
                                </td>
                                <td align="left">
                                    <asp:TextBox ID="txtUpdateGradeDesc" runat="server" Text="" Width="250px" MaxLength="150"></asp:TextBox>
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
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="btnUpdateGrade" EventName="Click" />
                     
                </Triggers>
            </asp:UpdatePanel>
                <center> 
                        <table style="width: 428px;">
                         <div style="text-align: center; width: 100%; margin-top: 5px;">
                                        <asp:Button ID="btnUpdateGrade" runat="server" Text="Update" Width="60px" OnClientClick="return ValidateUpdate();"
                                            OnClick="btnUpdateGrade_Click" />
                                        <asp:Button ID="btnUpdateCancel" runat="server" Text="Cancel" Width="60px" OnClientClick="ClrAllCtrl(0);" />
                                    </div>
                        </table>
                        
                    </center>
        </asp:Panel>
    </asp:Panel>
    <%-- <asp:Panel ID="pnlRV" runat="server" CssClass="modalPopup" Style="display: none;" >
        <asp:Panel ID="pnlGradeRV" runat="server" CssClass="modalPopupInner" Width="450px">
            <asp:UpdatePanel ID="upRVInfo" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                <center>
                    <div style="text-align: center; padding: 10px; width: 82%; margin-top: 5px;">
                    <center>
                    <table style="width: 720px; vertical-align: middle;">
                    <tr class="Gridheading">
                        <td align="right" style="width: 35%">
                            <asp:Label ID="Label10" Text="Specification:" runat="server" CssClass="myBigFont"></asp:Label>
                        </td>
                        <td align="left" style="width: 65%">
                            <asp:TextBox ID="txtSpecification" runat="server" Height="20px" AutoPostBack="true"
                                Width="250px" OnTextChanged="txtSpecification_TextChanged"></asp:TextBox>
                            <ajaxToolkit:AutoCompleteExtender ID="aceeditspecification" runat="server" MinimumPrefixLength="1"
                                ServiceMethod="FetchSpecification" ServicePath="WebService.asmx" TargetControlID="txtSpecification"
                                OnClientItemSelected="GetCode">
                            </ajaxToolkit:AutoCompleteExtender>
                        </td>
                    </tr>
                    <tr class="Gridheading">
                        <td align="right" style="width: 35%">
                            <asp:Label ID="Label15" Text="Grade:" runat="server" CssClass="myBigFont"></asp:Label>
                        </td>
                        <td align="left" style="width: 65%">
                            <asp:DropDownList ID="ddlGrade" runat="server" Height="21px" Width="250px" AutoPostBack="true"
                                OnSelectedIndexChanged="ddlGrade_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr class="Gridheading">
                    <td  align="right" style="width: 35%">
                    <asp:Label ID="Label16" Text="Test Category:" runat="server" CssClass="myBigFont"></asp:Label>
                    </td>
                    <td  align="left" style="width: 65%">
                     <asp:DropDownList ID="ddltestcategory" AutoPostBack="true"  runat="server" 
                                        Height="21px" Width="250px" onselectedindexchanged="ddltestcategory_SelectedIndexChanged" 
                                        ></asp:DropDownList>
                    </td>
                    </tr>
                    <tr class="Gridheading">
                        <td align="right" style="width: 35%">
                            <asp:Label ID="Label17" Text="Test Type:" runat="server" CssClass="myBigFont"></asp:Label>
                        </td>
                        <td align="left" style="width: 65%">
                            <asp:DropDownList ID="ddltesttype" runat="server" AutoPostBack="true" Height="17px"
                                Width="250px" OnSelectedIndexChanged="ddltesttype_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr class="Gridheading">
                        <td colspan="2">
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
</center> 
                    </div>
                    </center> 
                </ContentTemplate>
                
            </asp:UpdatePanel>
               <asp:HiddenField ID="hdnSpecid" runat="server" />
 </asp:Panel>
    </asp:Panel>--%>
     <asp:Panel ID="panelUpdateGrade" runat="server" CssClass="modalPopup" Style="display: none;">
            <asp:Panel ID="pnlupGrade" runat="server" CssClass="modalPopupInner" Width="680px">
                <asp:UpdatePanel ID="updatepnlGradeInfo" runat="server" UpdateMode="Conditional">
                         <ContentTemplate>
                        <center>
                            <div style="text-align: center; padding: 10px; width: 93%; margin-top: 5px; height: 460px;">
                                <center>
                                    <table style="vertical-align: middle; border-width: 2px; border-style: solid; width: 620px; height:380PX">
                                        <tr>
                                            <td colspan="2" align="center">
                                                <asp:Label ID="Label10" Text="Grade Information" runat="server" Style="font-family: Verdana;
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
                                                <asp:Label ID="Label15" Text="Grade Code :" runat="server" CssClass="myBigFont"></asp:Label>
                                                <asp:Label ID="Label16" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                            </td>
                                            <td align="left">
                                                <asp:TextBox ID="txteditGrade" runat="server" Text="" Width="250px" MaxLength="100"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr align="center">
                                            <td align="left">
                                                <asp:Label ID="Label17" Text="Description :" runat="server" CssClass="myBigFont"></asp:Label>
                                            </td>
                                            <td align="left">
                                                <asp:TextBox ID="txteditGradeDescription" runat="server" Text="" Width="250px" MaxLength="150"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <%--<tr align="center">
                                            <td align="left">
                                                <asp:Label ID="Label11" Text="Test Category:" runat="server" CssClass="myBigFont"></asp:Label>
                                                <asp:Label ID="Label12" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                            </td>
                                            <td align="left">
                                                <asp:DropDownList ID="ddladdtestCategory" runat="server" Height="21px" AutoPostBack="true"
                                                    Width="254px" OnSelectedIndexChanged="ddladdtestCategory_SelectedIndexChanged">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>--%>
                                       <%-- <tr align="center">
                                            <td align="left">
                                                <asp:Label ID="Label7" Text="Test Type:" runat="server" CssClass="myBigFont"></asp:Label>
                                                <asp:Label ID="Label8" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                            </td>
                                            <td align="left">
                                                <asp:DropDownList ID="ddladdtesttype" runat="server" Height="21px" Width="253px">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>--%>
                                        <tr align="center">
                                            <td colspan="2">
                                                <table style="width: 100%">
                                <tr>
                                    <td align="right" style="width: 27%" valign="top">
                                        <asp:Label ID="Label18" Text="Test Category:" runat="server" CssClass="myBigFont"></asp:Label>
                                      
                                    </td>
                                    <td align="left" style="width: 25%" valign="top">
                                        <asp:GridView ID="gridGradeCategory" ShowHeader="false" GridLines="Vertical" runat="server"
                                            AutoGenerateColumns="false" DataKeyNames="TestCatID" Width="100%" OnRowCommand="gridGradeCategory_RowCommand"
                                            OnRowDataBound="gridGradeCategory_RowDataBound">
                                            <Columns>
                                                <asp:TemplateField HeaderText="Set Default" HeaderStyle-HorizontalAlign="Center">
                                                    <ItemTemplate>
                                                        <asp:CheckBox ID="chksetdefault"  runat="server" AutoPostBack="true"  OnCheckedChanged="chkcategory_CheckedChanged" Checked='<%# (DataBinder.Eval(Container.DataItem,"SetDefault").ToString()=="1"?true:false) %>'/>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="lbltestcategory" runat="server" Text='<%# Eval("TestCatNm") %>'
                                                            CommandArgument='<%# Eval("TestCatID") %>' CommandName="View"></asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                    </td>
                                    <td align="center" style="width: 15%" valign="top">
                                        <asp:Label ID="Label19" Text="Test Types:" runat="server" CssClass="myBigFont"></asp:Label>
                                    </td>
                                    <td align="left" style="width: 35%" valign="top">
                                        <div style="width: 100%; height: 135px; overflow: auto">
                                            <%-- <asp:CheckBoxList ID="chklsttesttype" RepeatDirection="Vertical" runat="server" OnSelectedIndexChanged="chklsttesttype_SelectedIndexChanged">
                                            </asp:CheckBoxList>--%>
                                            <asp:GridView ID="gridGradeTesstType" ShowHeader="false" GridLines="Vertical" runat="server"
                                                AutoGenerateColumns="false" DataKeyNames="TestTypeID,TestCatID" 
                                                Width="100%" onrowdatabound="gridGradeTesstType_RowDataBound" 
                                                 >
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Set Default" HeaderStyle-HorizontalAlign="Center">
                                                        <ItemTemplate>
                                                            <asp:CheckBox ID="chkbox" runat="server" AutoPostBack="true"  OnCheckedChanged="chktesttype_CheckedChanged" Checked='<%# (DataBinder.Eval(Container.DataItem,"SetDefault").ToString()=="1"?true:false) %>' />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField>
                                                        <ItemTemplate>
                                                            <asp:LinkButton ID="lbltestType" runat="server" Text='<%# Eval("TestTypeNm") %>'
                                                                CommandArgument='<%# Eval("TestTypeID") %>' CommandName="View"></asp:LinkButton>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                     <asp:TemplateField >
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="lbltestcategory" runat="server" Text='<%# Eval("TestCatNm") %>'
                                                            CommandName="View"></asp:LinkButton>
                                                    </ItemTemplate>
                                                    
                                                </asp:TemplateField >
                                                </Columns>
                                            </asp:GridView>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                                            </td>
                                        </tr>
                                                                               
                                        <tr>
                                        <td align="center"  colspan="2" style="height: 98px">
                                        <div style="width: 100%; height: 243px; overflow: auto">
                                         <asp:GridView ID="gridSelectedTestTypes" ShowHeader="false" GridLines="Both" runat="server"
                                                AutoGenerateColumns="false" DataKeyNames="TestCatID,TestTypeID" 
                                                Width="80%" onprerender="gridSelectedTestTypes_PreRender" 
                                                 >
                                                <Columns>
                                               <asp:BoundField DataField="TestCatNm" />  
                                                <asp:BoundField DataField="TestTypeNm" />  
                                                  
                                                            
                                                </Columns>
                                            </asp:GridView>
                                            </div> 
                                        </td>
                                        </tr>
                                    </table>
                                </center>
                            </div>
                        </center>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <div style="text-align: center; width: 100%; margin-top: 5px; height: 63px;">
                    <center>
                        <table style="width: 406px;">
                            <tr align="center">
                                <td align="center">
                                    <asp:Button ID="btn_updateGrade" runat="server" Text="Update" Width="70px" onclick="btn_updateGrade_Click" 
                                         />
                                    <asp:Button ID="btnCancelUpdateGrade" runat="server" Text="Cancel" Width="70px" />
                                </td>
                            </tr>
                        </table>
                    </center>
                </div>
            </asp:Panel>
        </asp:Panel>
    <ajaxToolkit:RoundedCornersExtender ID="RoundedCornersExtender1" runat="server" BehaviorID="RoundedCornersBehavior1"
        TargetControlID="pnlGrade" Radius="10" Corners="All" />
    <ajaxToolkit:RoundedCornersExtender ID="RoundedCornersExtender2" runat="server" BehaviorID="RoundedCornersBehavior2"
        TargetControlID="pnlUGrade" Radius="10" Corners="All" />
 
    <script type="text/javascript" language="javascript">
        var TotalChkBx;
        var Counter;

        window.onload = function()
        {
       
            //Get total no. of CheckBoxes in side the GridView.
            TotalChkBx = parseInt('<%= this.gdvGrades.Rows.Count %>');
            //Get total no. of checked CheckBoxes in side the GridView.
            Counter = 0;
            
        }
        
        function HeaderClick(CheckBox)
        {
            //Get target base & child control.
            var TargetBaseControl = document.getElementById('<%= this.gdvGrades.ClientID %>');
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
         if(document.getElementById('<%=ddladdSpec.ClientID%>').value=="Select")
            {
            alert("Please Select Specification");
                return false;
            }
            else if(document.getElementById('<%=ddladdtesttype.ClientID%>').value=="Select")
            {
            alert("Please Select Test Type");
                return false;
            }
           else if(document.getElementById('<%=txtGradeCode.ClientID%>').value=="")
            {
                alert("Please Enter Grade Code.");
                return false;
            }
            else
                return true;
        }
        
        function ValidateUpdate()
        {
        
     if(document.getElementById('<%=ddleditspec.ClientID%>').value=="Select")
            {
            alert("Please Select Specification");
                return false;
            }
            else if(document.getElementById('<%=ddledittesttype.ClientID%>').value=="Select")
            {
            alert("Please Select Test Type");
                return false;
            }
            else if(document.getElementById('<%=txtUpdateGradeCode.ClientID%>').value=="")
            {
                alert("Please Enter Grade Code.");
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
                    if( confirm('Do you want to Remove Selected Grade ?'))
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
            alert('Grade Not Selected ');
            return false;
        }
    }
    
    function ClrAllCtrl(flag)
    {
        if (flag=="0")
        {
            document.getElementById('<%=txtGradeCode.ClientID%>').value="";
            document.getElementById('<%=txtGradeDesc.ClientID%>').value=""; 
        }
        else
        {
            document.getElementById('<%=txtUpdateGradeCode.ClientID%>').value="";
            document.getElementById('<%=txtUpdateGradeDesc.ClientID%>').value=""; 
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

