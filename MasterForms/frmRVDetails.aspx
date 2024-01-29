<%@ page language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="MasterForms_frmRVDetails, App_Web_frmrvdetails.aspx.6fc3a045" title="Grade Master" maintainscrollpositiononpostback="true" %>

<%@ Register TagPrefix="Custom" Namespace="ENTech.WebControls" Assembly="AutoSuggestMenu" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <center>
        <asp:UpdatePanel ID="upGradeMaster" runat="server" UpdateMode="Conditional"  >
            <ContentTemplate>
            <table width="100%" >
            <tr>
            <td align="center" >
            
            <table style="width: 70%; vertical-align: middle;">
            <tr>
            <td align="center" >
            
           
           <%-- <div style="width: 100%; height: 400px; overflow: auto">--%>
                <table style="width: 100%; vertical-align: middle;">
                
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
                        <td align="center">
                            <asp:Button ID="btnAddGrade" runat="server" Text="Add New Grade" CssClass="normalbutton" OnClientClick="return AddNewGrade();"/>
                            <ajaxToolkit:ModalPopupExtender ID="mdlPopupNewGrade" BehaviorID="mdlPopupNewGrade"
                                runat="server" TargetControlID="btnAddGrade" PopupControlID="pnlNewGrade" CancelControlID="btnCancel"
                                BackgroundCssClass="modalBackground">
                            </ajaxToolkit:ModalPopupExtender>
                        </td>
                    </tr>
                     <tr class="Gridheading">
                        <td align="right" style="width: 35%">
                            <asp:Label ID="Label8" Text="Description:" runat="server" CssClass="myBigFont"></asp:Label>
                        </td>
                        <td align="left" style="width: 65%" colspan="2">
                           <asp:TextBox ID="txteditGradeDesc" runat="server" Width="251px"></asp:TextBox>
                        </td>
                        </tr>
                    <tr class="Gridheading">
                        <td align="right" style="width: 100%" colspan="3" valign="top">
                        
                            <table style="width: 100%">
                                <tr class="Gridheading">
                                    <td align="right" style="width: 27%" valign="top">
                                        <asp:Label ID="Label4" Text="Test Category:" runat="server" CssClass="myBigFont"></asp:Label>
                                      
                                    </td>
                                    <td align="left" style="width: 25%" valign="top">
                                     <div style="width: 100%;">  <%--height: 135px; overflow: auto--%>
                                        <asp:GridView ID="grdCat" ShowHeader="false" GridLines="Vertical" runat="server" 
                                            AutoGenerateColumns="false" DataKeyNames="TestCatID" Width="100%" OnRowCommand="grdCat_RowCommand"
                                             onrowcreated="grdCat_RowCreated" onprerender="grdCat_PreRender">
                                            <Columns>
                                                <asp:TemplateField HeaderText="Set Default" HeaderStyle-HorizontalAlign="Center">
                                                    <ItemTemplate>
                                                        <asp:CheckBox ID="chkdefault" runat="server" Checked='<%# (DataBinder.Eval(Container.DataItem,"SetDefault").ToString()=="1"?true:false) %>' OnCheckedChanged="chkGrdcat_CheckedChanged"/>
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
                                        </div> 
                                    </td>
                                    <td align="center" style="width: 15%" valign="top">
                                        <asp:Label ID="Label6" Text="Test Types:" runat="server" CssClass="myBigFont"></asp:Label>
                                    </td>
                                    <td align="left" style="width: 35%" valign="top">
                                        <div style="width: 100%; "> <%--height: 135px; overflow: auto--%>
                                            <%-- <asp:CheckBoxList ID="chklsttesttype" RepeatDirection="Vertical" runat="server" OnSelectedIndexChanged="chklsttesttype_SelectedIndexChanged">
                                            </asp:CheckBoxList>--%>
                                            <asp:GridView ID="gridTesstType" ShowHeader="false" GridLines="Vertical" runat="server"
                                                AutoGenerateColumns="false" DataKeyNames="TestTypeID,TestCatID" 
                                                Width="100%" OnRowCommand="gridTesstType_RowCommand"
                                                OnPageIndexChanging="gridTesstType_PageIndexChanging" 
                                                OnRowDataBound="gridTesstType_RowDataBound" 
                                                onrowcreated="gridTesstType_RowCreated">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Set Default" HeaderStyle-HorizontalAlign="Center">
                                                        <ItemTemplate>
                                                            <asp:CheckBox ID="chksetdefault" runat="server" Checked='<%# (DataBinder.Eval(Container.DataItem,"SetDefault").ToString()=="1"?true:false) %>' OnCheckedChanged="chkedittesttype_CheckedChanged"/>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField>
                                                        <ItemTemplate>
                                                            <asp:LinkButton ID="lbltestType" runat="server" Text='<%# Eval("TestTypeNm") %>'
                                                                CommandArgument='<%# Eval("TestTypeID") %>' CommandName='<%# Eval("TestTypeNm") %>'></asp:LinkButton>
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
                                   <tr>
                                        <td align="center"  colspan="4" style="height: 98px">
                                        
                                         <asp:GridView ID="GridEditSelectedTestType" ShowHeader="false" GridLines="Both" runat="server"
                                                AutoGenerateColumns="false" DataKeyNames="TestCatID,TestTypeID" 
                                                Width="80%" onprerender="GridEditSelectedTestType_PreRender" onrowdatabound="GridEditSelectedTestType_RowDataBound" 
                                                 >
                                                <Columns>
                                               <asp:BoundField DataField="TestCatNm" />  
                                                <asp:BoundField DataField="TestTypeNm" />  
                                                  
                                                            
                                                </Columns>
                                            </asp:GridView>
                                           
                                        </td>
                                        </tr>
                            </table>
                            
                        </td>
                    </tr>
                  
                    <tr class="Gridheading" >
                         <td align="center"  >
                          <asp:Button ID="btnAddCategory" runat="server" Text="Add New Test Category" 
                                 CssClass="normalbutton" />
                            <ajaxToolkit:ModalPopupExtender ID="ModalPopupNewCategory" BehaviorID="ModalPopupNewCategory"
                                runat="server" TargetControlID="btnAddCategory" PopupControlID="pnlNewTestCategory"
                                CancelControlID="btnCancelCategory" BackgroundCssClass="modalBackground">
                            </ajaxToolkit:ModalPopupExtender>
                         </td>
                         <td align="center" >
                          <asp:Button ID="btnUpdateGradeCat" runat="server" Text="Update Category" 
                                 CssClass="normalbutton" onclick="btnUpdateGradeCat_Click" OnClientClick="return ChkDeletedCat();"/>
                         </td>
                        <td align="right"  >
                            <asp:Button ID="btnAddTestType" runat="server" Text="Add New Test Type" CssClass="normalbutton" />
                            <ajaxToolkit:ModalPopupExtender ID="mdlPopupNewTestType" BehaviorID="mdlPopupNewTestType"
                                runat="server" TargetControlID="btnAddTestType" PopupControlID="pnlNewTestType"
                                CancelControlID="btnCancelTestType" BackgroundCssClass="modalBackground">
                            </ajaxToolkit:ModalPopupExtender>
                        </td>
                    </tr>
                      <tr class="Gridheading">
                        <td align="center"   colspan="3">
                        <asp:Label ID="lblTestTypeTitle" runat="server" Text="fdfDF" ></asp:Label> 
                        </td>
                        </tr> 
                    <tr class="Gridheading">
                        <td align="center"   colspan="3">
                       
                           
                                <asp:GridView ID="gridPara" runat="server" Width="100%" AutoGenerateColumns="false"
                                    ShowFooter="true" EnableViewState="true" DataKeyNames="ParaID,TestTypeID" OnRowCancelingEdit="gridPara_RowCancelingEdit"
                                    OnRowDeleting="gridPara_RowDeleting" OnRowEditing="gridPara_RowEditing" OnRowUpdating="gridPara_RowUpdating"
                                    OnRowDataBound="gridPara_RowDataBound">
                                    <Columns>
                                        <asp:TemplateField HeaderText="Sr.No" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="20px">
                                            <ItemTemplate>
                                                <%#Container.DataItemIndex+1 %>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Center" Width="20px" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Para Name" HeaderStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Label ID="lblAgency" Text='<%#Eval("ParaNm")%>' runat="server"></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <%--<asp:TextBox ID="txtpara" Text='<%# Eval("ParaNm")%>' runat="server"></asp:TextBox>--%>
                                                  <asp:Label ID="lblAgency1" Text='<%#Eval("ParaNm")%>' runat="server"></asp:Label>
                                            </EditItemTemplate>
                                            <ItemStyle HorizontalAlign="Left" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Min Value" HeaderStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                               <%-- <asp:Label ID="lblminval" Text='<%#Eval("MinValue")%>' runat="server"></asp:Label>--%>
                                                 <asp:TextBox ID="txtdisplayminval" Text='<%# Eval("MinValue")%>' runat="server" BackColor="Transparent" BorderStyle="None" Font-Bold="true" ForeColor="White"  ></asp:TextBox>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtminval" Text='<%# Eval("MinValue")%>' runat="server"></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Max Value" HeaderStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                               <%-- <asp:Label ID="lblmaxval" Text='<%#Eval("MaxValue")%>' runat="server"></asp:Label>--%>
                                                 <asp:TextBox ID="txtdisplaymaxval" Text='<%# Eval("MaxValue")%>' runat="server" BackColor="Transparent" BorderStyle="None" Font-Bold="true" ForeColor="White"  ></asp:TextBox>
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
                                                <asp:CheckBox ID="chkdefault" runat="server" Checked='<%# (DataBinder.Eval(Container.DataItem,"SetDefault").ToString()!="True"?false:true) %>' />
                                            </EditItemTemplate>
                                            <FooterStyle HorizontalAlign="Right" />
                                            <FooterTemplate>
                                               
                                            </FooterTemplate>
                                        </asp:TemplateField>
                                        <asp:CommandField ShowEditButton="true" />
                                        <asp:CommandField ShowDeleteButton="True" />
                                          <asp:TemplateField HeaderText="Set Default" HeaderStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:HiddenField ID="hdnDataType" runat="server" Value='<%# Eval("ParaDataType")%>' />
                                            </ItemTemplate>
                                           
                                        </asp:TemplateField>
                                                                                    
                                    </Columns>
                                </asp:GridView>
                            
                        </td>
                    </tr>
                    <tr>
                    <td align="right" colspan="3">
                     <asp:Button ID="BtnAdd" runat="server" Text="Assign New Para" OnClick="btnAdd_Click"  Font-Bold="true" />
                                                 <ajaxToolkit:ModalPopupExtender ID="mdlPopupPara" BehaviorID="mdlPopupPara"
                                runat="server" TargetControlID="BtnAdd" PopupControlID="PanelAddPara"
                                CancelControlID="btnCancelPara" BackgroundCssClass="modalBackground">
                            </ajaxToolkit:ModalPopupExtender>
                    
                    </td>
                    </tr>
                </table>
              <%-- </div> --%>
               </td>
            </tr>
            </table>
              
                </td>
            </tr>
            </table>
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:HiddenField ID="hdnSpecid" runat="server" />
        <asp:Panel ID="pnlNewGrade" runat="server" CssClass="modalPopup" style="display:none " >
            <asp:Panel ID="pnlGrade" runat="server" CssClass="modalPopupInner" Width="680px">
                <asp:UpdatePanel ID="upGradeInfo" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <center>
                            <div style="text-align: center; padding: 10px; width: 93%; margin-top: 5px; height: 460px; overflow:auto ">
                                <center>
                                    <table style="vertical-align: middle; border-width: 2px; border-style: solid; width: 620px; height:380PX">
                                        <tr>
                                            <td colspan="2" align="center">
                                                <asp:Label ID="lblEnterGrade" Text="Add New Grade " runat="server" Style="font-family: Verdana;
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
                                                <asp:Label ID="Label7" Text="Specification :" runat="server" CssClass="myBigFont"></asp:Label>
                                                
                                            </td>
                                            <td align="left">
                                                <asp:TextBox ID="txtlblSpecification" runat="server" BackColor="Transparent" BorderStyle="None" Font-Bold="true"   ForeColor="White"    Width="250px" MaxLength="100"></asp:TextBox>
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
                                                <asp:Label ID="lblEnterDescription" Text="Description :" runat="server" CssClass="myBigFont"></asp:Label>
                                            </td>
                                            <td align="left">
                                                <asp:TextBox ID="txtGradeDesc" runat="server" Text="" Width="250px" MaxLength="150"></asp:TextBox>
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
                                                <table style="width: 100%; height: 278px;">
                                <tr>
                                    <td align="right" style="width: 27%" valign="top">
                                        <asp:Label ID="Label9" Text="Test Category:" runat="server" CssClass="myBigFont"></asp:Label>
                                      
                                    </td>
                                    <td align="left" style="width: 25%" valign="top">
                                        <asp:GridView ID="gridGradeCategory" ShowHeader="false" GridLines="Vertical" runat="server"
                                            AutoGenerateColumns="false" DataKeyNames="TestCatID" Width="100%" OnRowCommand="gridGradeCategory_RowCommand"
                                            OnRowDataBound="gridGradeCategory_RowDataBound">
                                            <Columns>
                                                <asp:TemplateField HeaderText="Set Default" HeaderStyle-HorizontalAlign="Center">
                                                    <ItemTemplate>
                                                        <asp:CheckBox ID="chksetdefault"  runat="server" AutoPostBack="true"  OnCheckedChanged="chkcategory_CheckedChanged" />
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
                                        <asp:Label ID="Label10" Text="Test Types:" runat="server" CssClass="myBigFont"></asp:Label>
                                    </td>
                                    <td align="left" style="width: 35%" valign="top">
                                        <%--<div style="width: 100%; height: 135px; overflow: auto">--%>
                                            <%-- <asp:CheckBoxList ID="chklsttesttype" RepeatDirection="Vertical" runat="server" OnSelectedIndexChanged="chklsttesttype_SelectedIndexChanged">
                                            </asp:CheckBoxList>--%>
                                            <asp:GridView ID="gridGradeTesstType" ShowHeader="false" GridLines="Vertical" runat="server"
                                                AutoGenerateColumns="false" DataKeyNames="TestTypeID,TestCatID" 
                                                Width="100%" onrowdatabound="gridGradeTesstType_RowDataBound" 
                                                 >
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Set Default" HeaderStyle-HorizontalAlign="Center">
                                                        <ItemTemplate>
                                                            <asp:CheckBox ID="chkbox" runat="server" AutoPostBack="true"  OnCheckedChanged="chktesttype_CheckedChanged" />
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
                                       <%-- </div>--%>
                                    </td>
                                </tr>
                            </table>
                                            </td>
                                        </tr>
                                        <tr align="center">
                                            <td align="center" colspan="2">
                                            <asp:Button ID="tbnaddTestType" runat="server" Text="Add TestType" 
                                                    onclick="tbnaddTestType_Click" Visible="false" />
                                            </td>
                                        </tr>
                                        
                                        <tr>
                                        <td align="center"  colspan="2" style="height: 98px">
                                        <div style="width: 100%; height: 243px; overflow: auto">
                                         <asp:GridView ID="gridSelectedTestTypes" ShowHeader="false" GridLines="Both" runat="server"
                                                AutoGenerateColumns="false" DataKeyNames="TestCatID,TestTypeID" 
                                                Width="80%" onprerender="gridSelectedTestTypes_PreRender" onrowdatabound="gridSelectedTestTypes_RowDataBound" 
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
                <div style="text-align: center; width: 100%; margin-top: 5px; height: 37px;">
                    <center>
                        <table style="width: 406px;">
                            <tr align="center">
                                <td align="center">
                                    <asp:Button ID="btnSaveGrade" runat="server" Text="Save" Width="70px" OnClick="btnSaveGrade_Click"
                                        OnClientClick="return saveGrade();" />
                                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" Width="70px" />
                                   
                                </td>
                            </tr>
                        </table>
                    </center>
                </div>
            </asp:Panel>
        </asp:Panel>
           <asp:Panel ID="pnlNewTestCategory" runat="server" CssClass="modalPopup" Width="590px"   style="display:none"
       >
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
                                        <asp:Label ID="Label2" Text="Quantity:" runat="server" CssClass="myBigFont"></asp:Label>
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
                                        <asp:Label ID="Label3" Text="Description :" runat="server" CssClass="myBigFont"></asp:Label>
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
                                       
                                    </td>
                                </tr>
                            </table>
                              </center>
                        </div>
                    </center>
                </ContentTemplate>
              
            </asp:UpdatePanel>
             <div style="text-align: center; width: 100%; margin-top: 5px;">
                                            <asp:Button ID="btnSaveTestCategory" runat="server" Text="Save" Width="70px" onclick="btnSaveTestCategory_Click" 
                                               />
                                            <asp:Button ID="btnCancelCategory" runat="server" Text="Cancel" Width="70px" />
                                        </div>
            </center>
        </asp:Panel>
    </asp:Panel>
        <asp:Panel ID="pnlNewTestType" runat="server" CssClass="modalPopup" Style="display: none;">
            <asp:Panel ID="pnlTestType" runat="server" CssClass="modalPopupInner" Width="480px">
                <asp:UpdatePanel ID="upTestTypeInfo" runat="server">
                    <ContentTemplate>
                        <center>
                            <div style="text-align: center; padding: 10px; width: 90%; margin-top: 5px; height: 131px;">
                                <center>
                                    <table style="vertical-align: middle; border-width: 2px; border-style: solid; width: 100%;">
                                        <tr>
                                            <td colspan="2" align="center">
                                                <asp:Label ID="lblEnterTestType" Text="TestType Information" runat="server" Style="font-family: Verdana;
                                                    font-size: 14px; color: White; font-weight: bold;"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr align="center">
                                            <td align="left">
                                                <asp:Label ID="Label11" Text="Test Category:" runat="server" CssClass="myBigFont"></asp:Label>
                                                
                                            </td>
                                            <td align="left">
                                                <asp:TextBox ID="txtlbltestcat" runat="server" BackColor="Transparent" BorderStyle="None" Font-Bold="true"   ForeColor="White"    Width="250px" MaxLength="100"></asp:TextBox>
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
                                                <asp:RadioButton ID="rdbtnYes" runat="server" Checked="false" Text="Yes" GroupName="grp" />
                                                <asp:RadioButton ID="rdbtnNo" runat="server" Checked="true" Text="No" GroupName="grp" />
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
                            OnClick="btnSaveTestType_Click" />
                        <asp:Button ID="btnCancelTestType" runat="server" Text="Cancel" Width="70px" />
                    </div>
                </center>
            </asp:Panel>
        </asp:Panel>
        <asp:Panel ID="PanelAddPara" runat="server" CssClass="modalPopup" style="display:none ">
            <asp:Panel ID="Panelpara" runat="server" CssClass="modalPopupInner" Width="400px"    >
                
                        <center>
                            <div style="text-align: center; padding: 10px; width: 100%; margin-top: 5px; ">
                                <center>
                               
                <table width="100%"  >
                <tr>
                <td > 
                 <asp:UpdatePanel ID="updatepanelShowPara" runat="server" UpdateMode="Conditional" >
                    <ContentTemplate>
                   <asp:Label ID="lblMsg" runat="server" CssClass="myBigFont" Text="No Record Found"
                                ForeColor="Yellow"></asp:Label>
                                 <asp:GridView ID="gridnewpara" runat="server" AutoGenerateColumns="false" 
                                        DataKeyNames="ParaID" EnableViewState="true" 
                                        onrowcreated="gridnewpara_RowCreated" ShowFooter="true" Width="100%">
                                        <Columns>
                                            <asp:TemplateField HeaderText="Sr.No" ItemStyle-HorizontalAlign="Center" 
                                                ItemStyle-Width="20px">
                                                <ItemTemplate>
                                                    <%#Container.DataItemIndex+1   %>
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Center" Width="20px" />
                                            </asp:TemplateField>
                                            <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                                                <HeaderTemplate>
                                                    <asp:CheckBox ID="ChkAll" runat="server" 
                                                        onclick="return check_uncheck (this );" />
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <asp:CheckBox ID="Chk" runat="server" />
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Center" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="Para Name">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblAgency" runat="server" Text='<%#Eval("ParaNm")%>'></asp:Label>
                                                </ItemTemplate>
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="txtpara" runat="server" Text='<%# Eval("ParaNm")%>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <ItemStyle HorizontalAlign="Left" />
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="ParaDataType" HeaderText="ParaDataType" />
                                        </Columns>
                                    </asp:GridView>
                                    <div>
                                    <table width="100%">
                                    <tr>
                                    <td>
                                    <asp:Button ID="tbnAddPara" Text="Add Para" runat="server" Enabled=false 
                        onclick="tbnAddPara_Click" /> <asp:Button ID="btnCancelPara" Text="Cancel" runat="server" />
                                    </td>
                                    </tr>
                                    </table> 
                                    </div>
                                     </ContentTemplate>
                                     <Triggers>
                                     <asp:AsyncPostBackTrigger ControlID="tbnAddPara" EventName="Click" />   
                                     </Triggers> 
                </asp:UpdatePanel>
                </td>
                </tr>
                <tr>
                <td  align="center" >
                 
               <%-- <asp:Button ID="btnCancelPara" Text="Cancel" runat="server" />--%>
                </td>
                </tr>
                </table>
                                </center>
                            </div>
                        </center>
                   
            </asp:Panel>
        </asp:Panel>
    </center>
   <script type="text/javascript" language="javascript">
        var TotalChkBx;
        var Counter;

        window.onload = function()
        {
       
            //Get total no. of CheckBoxes in side the GridView.
            TotalChkBx = parseInt('<%= this.gridnewpara.Rows.Count %>');
            //Get total no. of checked CheckBoxes in side the GridView.
            Counter = 0;
            
        }
        
        function HeaderClick(CheckBox)
        {
            //Get target base & child control.
            var TargetBaseControl = document.getElementById('<%= this.gridnewpara.ClientID %>');
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
    <script language="javascript" type="text/javascript">
     
     function AddNewGrade()
     {
     if(document.getElementById('<%=hdnSpecid.ClientID%>').value=="")
     alert("Select Specification");
     return false;
     }
    function ChkDeletedCat()
    {
       if( confirm("Do You Want To Update Category")==true)
       return true ;
       else
        return false;

    } 

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
if(document.getElementById('<%=txtGradeCode.ClientID%>').value=="")
{
alert(" Enter Grade Code ");
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
