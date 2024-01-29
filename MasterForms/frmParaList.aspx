<%@ page language="C#" autoeventwireup="true" inherits="MasterForms_frmParaList, App_Web_frmparalist.aspx.6fc3a045" title="Para List " %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Untitled Page</title>
    <link rel="Stylesheet" type="text/css" href="../Style/cssStyleSheet.css" />
    <script type="text/javascript" language="javascript" src="../JS/formvalidation.js"></script>

</head>
    
<body style="background-color:#FFF1C6">

    <form id="form1" runat="server" >
    <div>
    
    <table width="100%" runat="server"  >
    <tr class="Tableheading">
    <td align="center" > Para List </td>
    </tr>
     <tr>
                <td align="center" >
                 <asp:GridView ID="gdvItem" runat="server" HeaderStyle-CssClass="myBigFont" RowStyle-CssClass="myGridFont"
                          DataKeyNames="ParaID,TestTypeID"       PagerStyle-HorizontalAlign="Center" AutoGenerateColumns="False"
                                ForeColor="#333333" Width="90%" AllowPaging="True" AllowSorting="True" PageSize="10"
                               
                             >
                                
                                <Columns>
                                    <asp:TemplateField HeaderText="Sr.No" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="20px">
                                        <ItemTemplate>
                                            <%#Container.DataItemIndex+1   %>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Center" Width="20px"></ItemStyle>
                                    </asp:TemplateField>
                                     
                                    <asp:BoundField DataField="ParaNm" HeaderText="Para Name" ItemStyle-Width="300px"
                                        ItemStyle-HorizontalAlign="Left" SortExpression="ParaNm">
                                        <ItemStyle HorizontalAlign="Left" Width="300px"></ItemStyle>
                                    </asp:BoundField>
                                   <asp:BoundField DataField="MinValue" HeaderText="Min Value" ItemStyle-HorizontalAlign="Left"
                                                ItemStyle-Width="300px" SortExpression="MinValue">
                                                <ItemStyle HorizontalAlign="Left" Width="300px" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="MaxValue" HeaderText="Max Value" ItemStyle-HorizontalAlign="Left"
                                                ItemStyle-Width="300px" SortExpression="MaxValue">
                                                <ItemStyle HorizontalAlign="Left" Width="300px" />
                                            </asp:BoundField>
                                                      
                                                      
                                                      
                                                           
                                                             <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                                                         <ItemTemplate>
                                            <asp:CheckBox ID="Chk" runat="server" />
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                    </asp:TemplateField>
                                     </Columns>
                                 <PagerStyle HorizontalAlign="Center"></PagerStyle>
                               <RowStyle CssClass="GridRowStyle"   />
                                <HeaderStyle  Font-Bold="True" ForeColor="White" CssClass="Gridheading" />
                               
                                <AlternatingRowStyle CssClass="GridAlternateRowStyle"  />
                            </asp:GridView>
                </td>
                </tr>
                <tr>
                <td align="center" >
                 <asp:Button ID="btnSavePara" runat="server" Text="Save" Width="70px" 
                         onclick="btnSavePara_Click" />
                         <asp:Button ID="btnCancel" runat="server" Text="Cancel" Width="70px" OnClientClick ="window.close();" 
                     
                                            />
                </td>
                </tr>
    </table>
     
    </div>
    </form>
</body>
</html>
