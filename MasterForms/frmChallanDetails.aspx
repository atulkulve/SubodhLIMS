<%@ page language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="MasterForms_frmChallanDetails, App_Web_frmchallandetails.aspx.6fc3a045" title="Untitled Page" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div>
        <asp:TreeView ID="TreeView1" ExpandDepth="0" PopulateNodesFromClient="true" ShowLines="true"
            ShowExpandCollapse="true" runat="server" 
            OnTreeNodePopulate="TreeView1_TreeNodePopulate" 
            onselectednodechanged="TreeView1_SelectedNodeChanged">
            <Nodes>
                <asp:TreeNode Text="Customers" Value="Customers" PopulateOnDemand="True" Expanded="False">
                </asp:TreeNode>
            </Nodes>
        </asp:TreeView>
    </div>
</asp:Content>
