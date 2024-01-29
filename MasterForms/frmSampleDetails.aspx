<%@ page language="C#" autoeventwireup="true" inherits="MasterForms_frmSampleDetails, App_Web_frmsampledetails.aspx.6fc3a045" title="Update Sample Details" %>

<%@ Register TagPrefix="Custom" Namespace="ENTech.WebControls" Assembly="AutoSuggestMenu" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <link rel="Stylesheet" type="text/css" href="../Style/cssStyleSheet.css" />

    <script type="text/javascript" language="javascript" src="../JS/formvalidation.js"></script>

</head>
<body style="background-color: #FFF1C6">
    <form id="form1" runat="server">
    <asp:ScriptManager ID="scm" runat="server">
        <Services>
            <asp:ServiceReference Path="~/MasterForms/WebService.asmx" />
        </Services>
    </asp:ScriptManager>
    <div>
        <table width="100%" class="Gridheading">
            <tr>
                <td>
                    <asp:UpdatePanel ID="UpdatePanel4" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <div style="text-align: center; width: 100%; margin-top: 5px;">
                                <table style="vertical-align: middle; border-width: 2px; border-style: solid; width: 940px;">
                                    <tr>
                                        <td colspan="2">
                                            <asp:Label ID="Label7" Text="Update Sample Information" runat="server" Style="font-family: Verdana;
                                                font-size: 14px; color: White; font-weight: bold;"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr align="center">
                                        <td align="left">
                                            <asp:Label ID="Label8" Text="Sample No :" runat="server" CssClass="myBigFont"></asp:Label>
                                            <asp:Label ID="Label9" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                        </td>
                                        <td align="left">
                                            <asp:TextBox ID="txtEditItemNm" runat="server" Width="250px" Text="" MaxLength="250"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr align="center">
                                        <td align="left">
                                            <asp:Label ID="Label10" Text="Sample Described As:" runat="server" CssClass="myBigFont"></asp:Label>
                                        </td>
                                        <td align="left">
                                            <asp:TextBox ID="txtEditItemDesc" runat="server" Width="250px" Text="" MaxLength="250"
                                                TextMode="MultiLine" Height="50px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr align="center">
                                        <td align="left">
                                            <asp:Label ID="Label2" Text=" Registration Date :" runat="server" CssClass="myBigFont"></asp:Label>
                                            <%--<asp:Label ID="lblcusername" runat="server" Text="*" ForeColor="Red"></asp:Label>--%>
                                        </td>
                                        <td align="left">
                                            <asp:TextBox ID="txtRegDate" runat="server" Text="" oncontextmenu="return false;"
                                                onkeydown="return false;" onkeypress="return false;" onkeyup="funRegDate(event);"
                                                Width="250px"></asp:TextBox>
                                            <asp:Image ID="Image32" runat="server" ImageUrl="~/Images/Calendar.png" />&nbsp;
                                            <ajaxToolkit:CalendarExtender ID="CalendarExtender31213" runat="server" PopupButtonID="Image32"
                                                TargetControlID="txtRegDate" OnClientShown="ShowCalRegdate">
                                            </ajaxToolkit:CalendarExtender>
                                        </td>
                                    </tr>
                                    <%--<tr align="center">
                                        <td align="left">
                                            <asp:Label ID="Label11" Text="Quantity:" runat="server" CssClass="myBigFont"></asp:Label>
                                        </td>
                                        <td align="left">
                                            <asp:TextBox ID="txtEditQuantity" runat="server" Width="250px" Text="" MaxLength="11"
                                                Height="22px"></asp:TextBox>
                                            <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server"
                                                FilterType="Custom, Numbers" TargetControlID="txtEditQuantity"
                                                ValidChars="1234567890.">
                                            </ajaxToolkit:FilteredTextBoxExtender>
                                        </td>
                                    </tr>--%>
                                    <tr align="center">
                                        <td align="left">
                                            <asp:Label ID="Label12" Text="Returnable :" runat="server" CssClass="myBigFont"></asp:Label>
                                        </td>
                                        <td align="left">
                                            <asp:RadioButton ID="rdbtneditYes" Text="Yes" Checked="true" runat="server" GroupName="grp"
                                                Font-Bold="true" Font-Names="Verdana" Font-Size="Small" />
                                            <asp:RadioButton ID="rdbtneditNo" Text="No" runat="server" GroupName="grp" Font-Bold="true"
                                                Font-Names="Verdana" Font-Size="Small" />
                                        </td>
                                    </tr>
                                    <tr align="center">
                                        <td align="left">
                                            <asp:Label ID="Label16" Text="Specification :" runat="server" CssClass="myBigFont"></asp:Label>
                                        </td>
                                        <td align="left">
                                            <%-- <asp:TextBox ID="txtEditSpecification" runat="server" Width="190px" Text="" MaxLength="11"></asp:TextBox>--%>
                                            <asp:TextBox ID="txteditSpecification" runat="server" Height="20px" AutoPostBack="true"
                                                Width="250px" OnTextChanged="txteditSpecification_TextChanged"></asp:TextBox>
                                            <ajaxToolkit:AutoCompleteExtender ID="aceeditspecification" runat="server" MinimumPrefixLength="1"
                                                ServiceMethod="FetchSpecification" ServicePath="WebService.asmx" TargetControlID="txteditSpecification"
                                                OnClientItemSelected="GetCode">
                                            </ajaxToolkit:AutoCompleteExtender>
                                            <ajaxToolkit:TextBoxWatermarkExtender ID="TBWE2" runat="server" TargetControlID="txteditSpecification"
                                                WatermarkText="Type Alphabet to Get Specification List" WatermarkCssClass="watermarked" />
                                        </td>
                                    </tr>
                                    <tr align="center">
                                        <td align="left">
                                            <asp:Label ID="Label17" Text="Grade :" runat="server" CssClass="myBigFont"></asp:Label>
                                        </td>
                                        <td align="left">
                                            <asp:DropDownList ID="ddleditGrade" runat="server" Width="257px" Height="20px" AutoPostBack="true"
                                                OnSelectedIndexChanged="ddleditGrade_SelectedIndexChanged">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr align="center">
                                        <td align="left">
                                            <asp:Label ID="Label1" Text="Select Specimen :" runat="server" CssClass="myBigFont"></asp:Label>
                                        </td>
                                        <td align="left">
                                            <%--<asp:TextBox ID="txtGrade" runat="server" Width="250px" Text="" MaxLength="11"></asp:TextBox>--%>
                                            <div>
                                                <asp:DropDownList ID="ddlSpcimenn" runat="server" Width="250px" OnSelectedIndexChanged="ddlSpcimenn_SelectedIndexChanged">
                                                </asp:DropDownList>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" style="height: 13px" colspan="2">
                                            <asp:Label ID="Label18" runat="server" CssClass="myBigFont" Text="Test Category:"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr align="center">
                                        <td align="center" colspan="2" id="tdchk" runat="server">
                                            <div style="width: 970px; height: 250px; overflow: auto; vertical-align: top;" id="divtree"
                                                runat="server">
                                            </div>
                                        </td>
                                    </tr>
                                    <tr align="center">
                                        <td align="center" colspan="2" id="tdtree" runat="server">
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <div style="text-align: center; width: 100%; margin-top: 5px; height: 55px;">
                        <asp:Button ID="btneditItem" runat="server" Text="Save" Width="70px" OnClick="btneditItem_Click"
                            OnClientClick="return validateIfParentisChecked();" />
                        <asp:Button ID="btneditItemCancel" runat="server" Text="Close" Width="70px" OnClientClick="Javascript:window.close();"
                             onclick="btneditItemCancel_Click" />
                             
                    </div>
                </td>
            </tr>
        </table>
        <asp:HiddenField ID="hdnitemid" runat="server" />
        <asp:HiddenField ID="hdntestid" runat="server" />
        <asp:HiddenField ID="hdnSpecid" runat="server" />
        <asp:HiddenField ID="hdnoldspecid" runat="server" />
        <asp:HiddenField ID="hdnoldSpecNm" runat="server" />
        <asp:HiddenField ID="hdnoldgradecode" runat="server" />
        <asp:HiddenField ID="hdnbuttonclick" runat="server" />
    </div>
    </form>

    <script language="javascript" type="text/javascript">
      function ShowCalRegdate(sender,e)
        {
            sender._popupBehavior._element.style.zIndex=200000;
        }
        
       function funRegDate(e)
        {
            document.getElementById('<%=txtRegDate.ClientID%>').value="";  
        }
        
        function GetCode(source, eventArgs )
        {
            document.getElementById('<%=hdnSpecid.ClientID%>').value =eventArgs.get_value();
        }
        
        var catid=0;
        
        function ValidateItem()
        {
            if(document.getElementById('<%=txtEditItemNm.ClientID%>').value=="")
            {
                alert("Please Enter Sample No");
                 document.getElementById('<%=txtEditItemNm.ClientID%>').focus();
                return false;
            }
//          
//          else   if(document.getElementById('<%=txteditSpecification.ClientID%>').value=="" )
//            {
//                alert("Please Select Specification");
//                 document.getElementById('<%=txteditSpecification.ClientID%>').focus();
//                return false;
//            }
//           else  if(document.getElementById('<%=ddleditGrade.ClientID%>').value=="" || document.getElementById('<%=ddleditGrade.ClientID%>').value=="Select")
//            {
//                alert("Please Select Grade");
//                 document.getElementById('<%=ddleditGrade.ClientID%>').focus();
//                return false;
//            }
            else return true;
        }
   
        function validateIfParentisChecked()
        { 
            var testcatid=0;
            if(document.getElementById('<%=txtEditItemNm.ClientID%>').value=="")
            {
                alert("Please Enter Sample No");
                document.getElementById('<%=txtEditItemNm.ClientID%>').focus();
                return false;
            }
          
//          else   if(document.getElementById('<%=txteditSpecification.ClientID%>').value=="" || document.getElementById('<%=txteditSpecification.ClientID%>').value=="Type Alphabet to Get Specification List")
//            {
//                alert("Please Select Specification");
//                 document.getElementById('<%=txteditSpecification.ClientID%>').focus();
//                return false;
//            }
//           else  if(document.getElementById('<%=ddleditGrade.ClientID%>').value=="" || document.getElementById('<%=ddleditGrade.ClientID%>').value=="Select")
//            {
//                alert("Please Select Grade");
//                 document.getElementById('<%=ddleditGrade.ClientID%>').focus();
//                return false;
//            }
//           else 
             {
                 var div=document.getElementById('divtree');
                 var chk=document.getElementsByTagName('input',div);
                 for(var i=0;i<chk.length;i++)
                 {
                     if(chk[i].type=='checkbox')
                     {
                       var chkTestCat=document.getElementById(chk[i].id);
                       
                       if(chkTestCat.checked)
                        {
                       var strtestcatnm=chkTestCat.nextSibling.innerHTML; 
                                if(strtestcatnm.toString()=='Mechanical Test')  testcatid=1;
                                 else if(strtestcatnm.toString()=='Chemical Test')testcatid=2;
                                 else if(strtestcatnm.toString()=='Microstructure')testcatid=3;
                                else if(strtestcatnm.toString()=='Metallographic')testcatid=4;
                                 else if(strtestcatnm.toString()=='Corrosion')testcatid =5;
                                
                                
                                if(strtestcatnm.toString()=='Mechanical Test' && testcatid == 1  && document.getElementById('<%=ddlSpcimenn.ClientID%>').value=="Select" )
                                {
                                    alert("Please Select Specimen");
                                     document.getElementById('<%=ddlSpcimenn.ClientID%>').focus();
                                    return false;
                                }
                                             
                                if(strtestcatnm.toString()=='Mechanical Test' && testcatid == 1  && ( document.getElementById("txtMechanicalTest_1").value=="" ||  document.getElementById("txtMechanicalTest_1").value.toString()=="0" ) )
                               {
                               alert("Enter Quantity For No. Of Result For "+ strtestcatnm.toString());
                               document.getElementById("txtMechanicalTest_1").focus();
                               return false;
                               }
                               else  if(strtestcatnm.toString()=='Chemical Test' && testcatid == 2  && document.getElementById("txtMechanicalTest_1").value=="" )
                               {
                                alert("Enter Quantity For No. Of Result For "+ strtestcatnm.toString());
                               return false;
                               }
                               else  if(strtestcatnm.toString()=='Microstructure' && testcatid == 3  && document.getElementById("txtMechanicalTest_1").value=="" )
                               {
                                alert("Enter Quantity For No. Of Result For "+ strtestcatnm.toString());
                               return false;
                               }
                               else  if(strtestcatnm.toString()=='Metallographic' && testcatid == 4  && document.getElementById("txtMechanicalTest_1").value=="" )
                               { alert("Enter Quantity For No. Of Result For "+ strtestcatnm.toString());
                               return false;
                               }
                                else  if(strtestcatnm.toString()=='Corrosion' && testcatid == 5  && document.getElementById("txtMechanicalTest_1").value=="" )
                               {
                                alert("Enter Quantity For No. Of Result For "+ strtestcatnm.toString());
                               return false;
                               }
                               else
                               {
                                        var parentTable = GetParentByTagName('table',chkTestCat);
                                        var nxtSibling = parentTable.nextSibling;
                                        if (nxtSibling && nxtSibling.nodeType == 1)//check if nxt sibling is not null & is an element node
                                        {
                                            if (nxtSibling.tagName.toLowerCase() == 'div') //if node has children
                                            var nochildrenchecked= checkNoChildrenAreChecked(parentTable.nextSibling,chkTestCat.checked);
                                            if(nochildrenchecked==false )
                                            {
                                            alert('Please Check Atleast One Para ' + chkTestCat.nextSibling.innerHTML);
                                            return false;
                                            }
                                            else
                                            {
                                             continue;
                                            }
                                        
                                            }
                                       }
                                
                              } /////end of if checkboc is checked
                           
                        } ////end of if chekbox
                       
                    } /////end of for
                   if(document.getElementById('<%=hdnbuttonclick.ClientID%>').value=="")
                   {
                   document.getElementById('<%=hdnbuttonclick.ClientID%>').value="Click";
                   }
        } /////////////if Sample validation are done
    }
  
   
   function checkNoChildrenAreChecked(childContainer,check)
   {
   var flag=false ;
        var RootTrv = GetParentByTagName('div', childContainer.previousSibling);
         var parentDiv = GetParentByTagName('div', childContainer);
        var strid=parentDiv.id;
        var testcatid=strid.substring(3);
          var parentNodeTable = parentDiv.previousSibling;
        var childChkBoxes = childContainer.getElementsByTagName('input');
        var childChkBoxCount = childChkBoxes.length;
        for (var i = 0; i < childChkBoxCount; i++)
         {
                    if(childChkBoxes[i].checked==true)
                    {
                    flag=true;
                    return flag;
                    }
                    else if(childChkBoxes[i].checked==false)
                    {
                     flag=false;
                     continue;
                    }
           }
           return flag ;
   }




    </script>

    <script language="javascript" type="text/javascript">
function OnCheckBoxCheckChanged(evt) {

var src = window.event != window.undefined ? window.event.srcElement : evt.target;
var isChkBoxClick = (src.tagName.toLowerCase() == 'input' && src.type == 'checkbox');
if (isChkBoxClick) {
var parentTable = GetParentByTagName('table', src);
var nxtSibling = parentTable.nextSibling;
    if (nxtSibling && nxtSibling.nodeType == 1)//check if nxt sibling is not null & is an element node
    {
        if (nxtSibling.tagName.toLowerCase() == 'div') //if node has children
        {
            //check or uncheck children at all levels
            if(src.checked==false )
            {
            if(parentTable.innerText.toString()=="Chemical Test" )
            {
                if (document.getElementById("txtChemicalTest_2") != null)
                 document.getElementById("txtChemicalTest_2").value = "";
            }
            if(parentTable.innerText.toString()=="Microstructure Test" )
            {
            
                if (document.getElementById("txtMicrostructure_3") != null)
                document.getElementById("txtMicrostructure_3").value = "";
            }
           if(parentTable.innerText.toString()=="Metallographic Test" )
           {
                if (document.getElementById("txtMetallographic_4") != null)
                document.getElementById("txtMetallographic_4").value = "";
           }
          if(parentTable.innerText.toString()=="Corrosion Test" )
          {
               if (document.getElementById("txtCorrosion_5") != null)
               document.getElementById("txtCorrosion_5").value = "";
          }
            
            CheckUncheckChildren(parentTable.nextSibling, src.checked);
            }
            //check or uncheck parents at all levels
             if(src.checked==true )
           {
          
            if(document.getElementById('<%=hdnSpecid.ClientID%>').value!="" && document.getElementById('<%=ddleditGrade.ClientID%>').value!="Select")
                WebService.GetParaList(document.getElementById('<%=hdnSpecid.ClientID%>').value,document.getElementById('<%=ddleditGrade.ClientID%>').value,DisplayParaResult); //typeNodeTable.childNodes[0].nodeValue
            else  if(document.getElementById('<%=hdnoldspecid.ClientID%>').value!="" && document.getElementById('<%=ddleditGrade.ClientID%>').value!="Select")
                WebService.GetParaList(document.getElementById('<%=hdnoldspecid.ClientID%>').value,document.getElementById('<%=ddleditGrade.ClientID%>').value,DisplayParaResult); //typeNodeTable.childNodes[0].nodeValue
            CheckUncheckParents(src, src.checked);
            }
        }
       
    }
  
}


if(src.checked)
{
if(document.getElementById('<%=txteditSpecification.ClientID%>').value!="" && document.getElementById('<%=ddleditGrade.ClientID%>').value !="Select" )
WebService.CheckDefaultPara(document.getElementById('<%=txteditSpecification.ClientID%>').value,document.getElementById('<%=ddleditGrade.ClientID%>').value,src.nextSibling.innerHTML,DisplayDefaultPara);
}
else if(src.checked==false )
{
WebService.CheckResultEnteredPara(document.getElementById('<%=hdnitemid.ClientID%>').value,document.getElementById('<%=hdntestid.ClientID%>').value,src.nextSibling.innerHTML,CheckResultPara);
}

if(AreAllSiblingsChecked(src)==true)
 CheckUncheckParents(src, true);
  else
  CheckUncheckParents(src, false );
    
    
}
function CheckUncheckChildren(childContainer, check) {
var childChkBoxes = childContainer.getElementsByTagName('input');

var childChkBoxCount = childChkBoxes.length;
for (var i = 0; i < childChkBoxCount; i++) {
    {
        childChkBoxes[i].checked = check;
//        if(childContainer.parentNode.parentNode.id.toString()=="Chemical Test" )
//        {
//            if (document.getElementById("txtChemicalTest_2") != null)
//             document.getElementById("txtChemicalTest_2").value = "";
//        }
//        if(childContainer.parentNode.parentNode.id.toString()=="Microstructure Test" )
//        {
//        
//            if (document.getElementById("txtMicrostructure_3") != null)
//            document.getElementById("txtMicrostructure_3").value = "";
//        }
//       if(childContainer.parentNode.parentNode.innerText.toString()=="Metallographic Test" )
//       {
//            if (document.getElementById("txtMetallographic_4") != null)
//            document.getElementById("txtMetallographic_4").value = "";
//       }
//      if(childContainer.parentNode.parentNode.innerText.toString()=="Corrosion Test" )
//      {
//           if (document.getElementById("txtCorrosion_5") != null)
//           document.getElementById("txtCorrosion_5").value = "";
//      }
         
    }
//alert(childChkBoxes[i].innerHTML)
}
}

function CheckUncheckParents(srcChild, check) 
{
    var parentDiv = GetParentByTagName('div', srcChild);
    var parentNodeTable = parentDiv.previousSibling;
   
  
    if (parentNodeTable) 
    {
        var checkUncheckSwitch;
        if (check) //checkbox checked
        {
            var isAllSiblingsChecked = AreAllSiblingsChecked(srcChild);
            if (isAllSiblingsChecked)
            checkUncheckSwitch = true;
            else
            checkUncheckSwitch = true;
            // return; //do not need to check parent if any(one or more) child not checked  
            
        }
        else //checkbox unchecked
        {
            checkUncheckSwitch = false;
 
        }
        var inpElemsInParentTable = parentNodeTable.getElementsByTagName('input');
        if (inpElemsInParentTable.length > 0) 
        {
            var parentNodeChkBox = inpElemsInParentTable[0];
            parentNodeChkBox.checked = checkUncheckSwitch;
            //do the same recursively
            if( parentNodeChkBox.checked)
         
            CheckUncheckParents(parentNodeChkBox, checkUncheckSwitch);
            
        }
    }
}
function AreAllSiblingsChecked(chkBox) {
var parentDiv = GetParentByTagName('div', chkBox);
var childCount = parentDiv.childNodes.length;
var totalChkBox=0,totalChecked=0;
  for (var i = 0; i < childCount; i++) 
  {
    if (parentDiv.childNodes[i].nodeType == 1) //check if the child node is an element node
    {
        if (parentDiv.childNodes[i].tagName.toLowerCase() == 'table') 
        {
            var prevChkBox = parentDiv.childNodes[i].getElementsByTagName('input')[0];
            //if any of sibling nodes are not checked, return false
            totalChkBox++;
           if (prevChkBox.checked )
            {
           
            totalChecked++;
            }
        }
    }
  }
 if(totalChecked==totalChkBox)
return true; 
else if(totalChecked !=0 &&  totalChecked<=totalChkBox ) 
return true;
else if(totalChecked==0)
return false;

}
//utility function to get the container of an element by tagname
function GetParentByTagName(parentTagName, childElementObj) {
var parent = childElementObj.parentNode;
while (parent.tagName.toLowerCase() != parentTagName.toLowerCase()) {
parent = parent.parentNode;
}
return parent;
}


function DisplayDefaultPara(result)
{
var doc; 
  if (window.ActiveXObject) 
  { 
    doc=new ActiveXObject("Microsoft.XMLDOM"); 
    doc.async="false"; 
    doc.loadXML(result); 
  } 
  else 
  { 
    var parser=new DOMParser(); 
    var doc=parser.parseFromString(result,"text/xml"); 
  } 

  var root=doc.documentElement.childNodes; 
  var tags; 
  
if(root.length=="0")
 alert(" Required Values Not Present For Selected Parameter");
 
  for(var i=0;i<root.length;i++) 
  { 
 var ParaNm="";
    if (root[i].nodeType==1) 
    { 
        tags=root[i].childNodes; 
        
           for(var j=0;j<tags.length;j++) 
          { 
                if (tags[j].nodeType==1) 
                {
                
                     var xmlvalue;//=tags[i].childNodes[0].nodeValue; 
                     if(tags[j].childNodes[0] !=null)
                    xmlvalue=tags[j].childNodes[0].nodeValue; 
                    else
                    xmlvalue="--";
                   
                      switch (tags[j].nodeName) 
                      { 
                        case "SetDefault": 
                                        if(xmlvalue==false )
                                        {alert(xmlvalue);
                                   alert("Can't Select Parameter Because No Required Value For Selected Parameter");
                                   }
                                     break; 
                              
                      } 
                }
          } 
    } 
    
  } 
      
}



//////////////////////// ajax call
function DisplayParaResult(result)
{
var doc; 
  if (window.ActiveXObject) 
  { 
    doc=new ActiveXObject("Microsoft.XMLDOM"); 
    doc.async="false"; 
    doc.loadXML(result); 
  } 
  else 
  { 
    var parser=new DOMParser(); 
    var doc=parser.parseFromString(result,"text/xml"); 
  } 

  var root=doc.documentElement.childNodes; 
  var tags; 

  for(var i=0;i<root.length;i++) 
  { 
 var paraid=0;
 var ParaNm="";
    if (root[i].nodeType==1) 
    { 
        tags=root[i].childNodes; 
           for(var j=0;j<tags.length;j++) 
          { 
                if (tags[j].nodeType==1) 
                {
                
                     var xmlvalue;//=tags[i].childNodes[0].nodeValue; 
                     if(tags[j].childNodes[0] !=null)
                    xmlvalue=tags[j].childNodes[0].nodeValue; 
                    else
                    xmlvalue="--";
                   
                      switch (tags[j].nodeName) 
                      { 
                        case "ParaID": 
                                     paraid=parseInt(xmlvalue); 
                                    
                                     break; 
                        case "ParaNm": 
                                     ParaNm=xmlvalue;  
                                     break; 
                        case "TestTypeNm": 
                                     checkdefaultTestType(xmlvalue,ParaNm);
                                     break; 
                              
                      } 
                }
          } 
    } 
    
  } 
          
}

function checkdefaultTestType(testtypenm,ParaNm)
{
        var div=document.getElementById('divtree');
         var chk=document.getElementsByTagName('input',div);
         for(var k=0;k<chk.length;k++)
         {
             if(chk[k].type=='checkbox')
             {
               var chkTestCat=document.getElementById(chk[k].id);
               if(chkTestCat.checked)
                {   
                    var strtestcatnm=chkTestCat.nextSibling.innerHTML; 
                    if(strtestcatnm==testtypenm)
                    {
                       var parentTable = GetParentByTagName('table',chkTestCat);
                       var nxtSibling = parentTable.nextSibling;
                       var partab=parentTable.nextSibling;
                       checkDefaultPara(parentTable.nextSibling,ParaNm);
                    }
                }
             }
         }
}
   
  function checkDefaultPara(childContainer,ParaNm)
   {
       var parentDiv = GetParentByTagName('div', childContainer);
       var parentNodeTable = parentDiv.previousSibling;
       var childChkBoxes = childContainer.getElementsByTagName('input');
       var childChkBoxCount = childChkBoxes.length;
       for (var i = 0; i < childChkBoxCount; i++)
        {
            if(ParaNm.toString()==childChkBoxes[i].nextSibling.innerHTML )
            {
            childChkBoxes[i].checked=true;
            }
           
            
        }
          
   }
   
   function CheckResultPara(result)
   {
   if(result==true)
   alert('Cant Deselect Para Because Result Are Entered For This Para');
   return false;
  }
    </script>

    <script type="text/javascript" language="javascript">
function client_OnTreeNodeChecked()
{

    var obj = window.event.srcElement;
    var treeNodeFound = false;
    var checkedState;
    if (obj.tagName == "INPUT" && obj.type == "checkbox") 
    {
        var treeNode = obj;
        checkedState = treeNode.checked;
        do
        {
            obj = obj.parentElement;
        } while (obj.tagName != "TABLE")
        
        var parentTreeLevel = obj.rows[0].cells.length;
        var parentTreeNode = obj.rows[0].cells[0];
        var tables = obj.parentElement.getElementsByTagName("TABLE");
        var strid=obj.parentElement.id;
        var testid=strid.substring(3,4);

        var numTables = tables.length
    
        if (numTables >= 1)
        {
            for (i=0; i < numTables; i++)
            {
                if (tables[i] == obj)
                {
                    treeNodeFound = true;
                    i++;
                    if (i == numTables)
                    {
                        return;
                    }
                }
            if (treeNodeFound == true && checkedState==false)
            {
                var childTreeLevel = tables[i].rows[0].cells.length;                
                    if (childTreeLevel > parentTreeLevel)
                    {
                    var cell = tables[i].rows[0].cells[childTreeLevel - 1];
                    var inputs = cell.getElementsByTagName("INPUT");
                   
                    inputs[0].checked = checkedState;
                   
                    }
                else
                   return;
            }
        else
        {
          
        } 
   
    }
    if((checkedState ==true && parseInt(testid)==1) && document.getElementById("txtMechanicalTest_1").value==""  )
    {

    alert("Enter Quantity For TestType Mechanical Test" );
    return false;
    }
   else if((checkedState ==true && parseInt(testid)==2 ) && document.getElementById("txtChemicalTest_2").value==""  )
    {

    alert("Enter Quantity For TestType ChemicalTest" );
    return false;
    }
    else if((checkedState ==true && parseInt(testid)==3 ) && document.getElementById("txtMicrostructure_3").value==""  )
    {

    alert("Enter Quantity For TestType Microstructure" );
    return false;
    }
    else  if((checkedState ==true && parseInt(testid)==4 ) && document.getElementById("txtMetallographic_4").value==""  )
    {

    alert("Enter Quantity For TestType Metallographic" );
    return false;
    }
    else   if((checkedState ==true && parseInt(testid)==5 ) && document.getElementById("txtCorrosion_5").value==""  )
    {

    alert("Enter Quantity For TestType Corrosion" );
    return false;
    }
    else
      
    return true;
    
}
}
}

    </script>

</body>
</html>
