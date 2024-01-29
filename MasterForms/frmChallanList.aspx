<%@ page language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="MasterForms_frmChallanList, App_Web_frmchallanlist.aspx.6fc3a045" title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <asp:UpdatePanel ID="upChallanMaster" runat="server">
        <ContentTemplate>
            <div style="text-align: center;">
                <table style="width: 900px; vertical-align: middle;">
                    <tr class="Tableheading">
                        <td align="center" >
                            <asp:Label ID="lblChallanList" Text="Challan List" runat="server" Font-Bold="True"></asp:Label>
                        </td>
                    </tr>
                    <tr >
                        <td align="center" style="text-align: center ">
                         <asp:Label ID="lblMsg" runat="server" CssClass="myBigFont" Text="No Record Found"
                                ForeColor="Red"></asp:Label>
                           
                            <asp:GridView ID="gdvChallans" runat="server" HeaderStyle-CssClass="myBigFont" RowStyle-CssClass="myGridFont"
                                DataKeyNames="ChallanID" PagerStyle-HorizontalAlign="Center" AutoGenerateColumns="False"
                                ForeColor="#333333" Width="100%" AllowPaging="True" AllowSorting="True" PageSize="10"
                                OnPageIndexChanging="gdvChallans_PageIndexChanging" OnRowCommand="gdvChallans_RowCommand"
                                OnRowCreated="gdvChallans_RowCreated" OnSorting="gdvChallans_Sorting">
                                
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
                                    
                                    <asp:TemplateField HeaderText="Customer Challan No." ItemStyle-Width="150px" ItemStyle-HorizontalAlign="Left"
                                        SortExpression="Cust_Challanno">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="lnkbtnChallanName" Text='<%# Eval("Cust_Challanno") %>' CommandArgument='<%# Eval("ChallanID") %>'
                                                CommandName="Edit" runat="server"></asp:LinkButton>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Left" Width="150px"></ItemStyle>
                                    </asp:TemplateField>
                                     <asp:BoundField DataField="fChallanDate" HeaderText="Challan Date" ItemStyle-Width="300px"
                                        ItemStyle-HorizontalAlign="Left" SortExpression="ChallanDate">
                                        <ItemStyle HorizontalAlign="Left" Width="300px"></ItemStyle>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="CustNm" HeaderText="Customer" ItemStyle-Width="300px"
                                        ItemStyle-HorizontalAlign="Left" SortExpression="CustNm">
                                        <ItemStyle HorizontalAlign="Left" Width="300px"></ItemStyle>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="custChallandate" HeaderText="Customer Challan Date" ItemStyle-Width="300px"
                                        ItemStyle-HorizontalAlign="Left" SortExpression="Cust_ChallanDate">
                                        <ItemStyle HorizontalAlign="Left" Width="300px"></ItemStyle>
                                    </asp:BoundField>
                                    
                                    <asp:BoundField DataField="deliveryDate" HeaderText="Report Delivery Date" ItemStyle-Width="300px"
                                        ItemStyle-HorizontalAlign="Left" SortExpression="ReportDeliveryDate">
                                        <ItemStyle HorizontalAlign="Left" Width="300px"></ItemStyle>
                                    </asp:BoundField>
                                    
                                    <asp:BoundField DataField="strpriority" HeaderText="Priority" ItemStyle-Width="300px"
                                        ItemStyle-HorizontalAlign="Left" SortExpression="Priority">
                                        <ItemStyle HorizontalAlign="Left" Width="300px"></ItemStyle>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Challan_Description" HeaderText="Description" ItemStyle-Width="300px"
                                        ItemStyle-HorizontalAlign="Left" SortExpression="Challan_Description">
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
                            <asp:Button ID="btnAddChallan" runat="server" Text="Add New Challan" CssClass="normalbutton"
                                onclick="btnAddChallan_Click" />
                            &nbsp;
                            <asp:Button ID="btnDeleteChallan" runat="server" Text="Remove Challan" CssClass="normalbutton"
                                OnClientClick="return confirmMsg(this.form)" OnClick="btnDeleteChallan_Click" />
                        </td>
                    </tr>
                </table>
            </div>
              </ContentTemplate>
              <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="btnAddChallan" EventName="Click" />
                </Triggers>
    </asp:UpdatePanel>
<script type="text/javascript" language="javascript">
 var TotalChkBx;
        var Counter;

        window.onload = function()
        {
       
            //Get total no. of CheckBoxes in side the GridView.
            TotalChkBx = parseInt('<%= this.gdvChallans.Rows.Count %>');
            //Get total no. of checked CheckBoxes in side the GridView.
            Counter = 0;
            
        }
        
        function HeaderClick(CheckBox)
        {
            //Get target base & child control.
            var TargetBaseControl = document.getElementById('<%= this.gdvChallans.ClientID %>');
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
                    if( confirm('Do you want to Remove Selected Challan ?'))
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
            alert('Challan  Not Selected');
            return false;
        }
    }
        </script>
 </asp:Content>