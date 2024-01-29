
function check_uncheck(Val)
{
  var ValChecked = Val.checked;
  var ValId = Val.id;
  var frm = document.forms[0];
  // Loop through all elements
  for (i = 0; i < frm.length; i++)
  {
    // Look for Header Template's Checkbox
    //As we have not other control other than checkbox we just check following statement
    if (this != null)
    {
      if (ValId.indexOf('ChkAll') !=  - 1)
      {
        // Check if main checkbox is checked,
        // then select or deselect datagrid checkboxes
        if (ValChecked)
           {
            if(frm.elements[i].disabled == false)
            frm.elements[i].checked = true;
            
          }
        else
          frm.elements[i].checked = false;
      }
      else if (ValId.indexOf('Chk') !=  - 1)
      {
        // Check if any of the checkboxes are not checked, and then uncheck top select all checkbox
        if (frm.elements[i].checked == false)
          frm.elements[1].checked = false;
      }
    } // if
  } // for
} // function

// For OT Instrument/Set List
function OTcheck_uncheck(Val)
{
  var ValChecked = Val.checked;
  var ValId = Val.id;
  var frm = document.forms[0];
  // Loop through all elements
  for (i = 0; i < frm.length; i++)
  {
    // Look for Header Template's Checkbox
    //As we have not other control other than checkbox we just check following statement
    if (this != null)
    {
      if (ValId.indexOf('ChkOTAll') !=  - 1)
      {
        // Check if main checkbox is checked,
        // then select or deselect datagrid checkboxes
        if (ValChecked)
           {
            if(frm.elements[i].disabled == false)
            frm.elements[i].checked = true;
            
          }
        else
          frm.elements[i].checked = false;
      }
      else if (ValId.indexOf('ChkOT') !=  - 1)
      {
        // Check if any of the checkboxes are not checked, and then uncheck top select all checkbox
        if (frm.elements[i].checked == false)
          frm.elements[1].checked = false;
      }
    } // if
  } // for
} // function


// For Dirty Instrument/Set List
function DTcheck_uncheck(Val)
{
  var ValChecked = Val.checked;
  var ValId = Val.id;
  var frm = document.forms[0];
  // Loop through all elements
  for (i = 0; i < frm.length; i++)
  {
    // Look for Header Template's Checkbox
    //As we have not other control other than checkbox we just check following statement
    if (this != null)
    {
      if (ValId.indexOf('ChkDTAll') !=  - 1)
      {
        // Check if main checkbox is checked,
        // then select or deselect datagrid checkboxes
        if (ValChecked)
           {
            if(frm.elements[i].disabled == false)
            frm.elements[i].checked = true;
            
          }
        else
          frm.elements[i].checked = false;
      }
      else if (ValId.indexOf('ChkDT') !=  - 1)
      {
        // Check if any of the checkboxes are not checked, and then uncheck top select all checkbox
        if (frm.elements[i].checked == false)
          frm.elements[1].checked = false;
      }
    } // if
  } // for
} // function


// For Dirty Instrument/Set List
function Washcheck_uncheck(Val)
{
  var ValChecked = Val.checked;
  var ValId = Val.id;
  var frm = document.forms[0];
  // Loop through all elements
  for (i = 0; i < frm.length; i++)
  {
    // Look for Header Template's Checkbox
    //As we have not other control other than checkbox we just check following statement
    if (this != null)
    {
      if (ValId.indexOf('ChkWashAll') !=  - 1)
      {
        // Check if main checkbox is checked,
        // then select or deselect datagrid checkboxes
        if (ValChecked)
           {
            if(frm.elements[i].disabled == false)
            frm.elements[i].checked = true;
            
          }
        else
          frm.elements[i].checked = false;
      }
      else if (ValId.indexOf('ChkWash') !=  - 1)
      {
        // Check if any of the checkboxes are not checked, and then uncheck top select all checkbox
        if (frm.elements[i].checked == false)
          frm.elements[1].checked = false;
      }
    } // if
  } // for
} // function


// For Dirty Instrument/Set List
function InWashcheck_uncheck(Val)
{
  var ValChecked = Val.checked;
  var ValId = Val.id;
  var frm = document.forms[0];
  // Loop through all elements
  for (i = 0; i < frm.length; i++)
  {
    // Look for Header Template's Checkbox
    //As we have not other control other than checkbox we just check following statement
    if (this != null)
    {
      if (ValId.indexOf('ChkInWashAll') !=  - 1)
      {
        // Check if main checkbox is checked,
        // then select or deselect datagrid checkboxes
        if (ValChecked)
           {
            if(frm.elements[i].disabled == false)
            frm.elements[i].checked = true;
            
          }
        else
          frm.elements[i].checked = false;
      }
      else if (ValId.indexOf('ChkInWash') !=  - 1)
      {
        // Check if any of the checkboxes are not checked, and then uncheck top select all checkbox
        if (frm.elements[i].checked == false)
          frm.elements[1].checked = false;
      }
    } // if
  } // for
} // function


// For Put In process Instrument/Set List
function InWashcheck_uncheck(Val)
{
  var ValChecked = Val.checked;
  var ValId = Val.id;
  var frm = document.forms[0];
  // Loop through all elements
  for (i = 0; i < frm.length; i++)
  {
    // Look for Header Template's Checkbox
    //As we have not other control other than checkbox we just check following statement
    if (this != null)
    {
      if (ValId.indexOf('ChkProcessAll') !=  - 1)
      {
        // Check if main checkbox is checked,
        // then select or deselect datagrid checkboxes
        if (ValChecked)
           {
            if(frm.elements[i].disabled == false)
            frm.elements[i].checked = true;
            
          }
        else
          frm.elements[i].checked = false;
      }
      else if (ValId.indexOf('ChkProcess') !=  - 1)
      {
        // Check if any of the checkboxes are not checked, and then uncheck top select all checkbox
        if (frm.elements[i].checked == false)
          frm.elements[1].checked = false;
      }
    } // if
  } // for
} // function



// For sterilize Instrument/Set List
function ForSterilizecheck_uncheck(Val)
{
  var ValChecked = Val.checked;
  var ValId = Val.id;
  var frm = document.forms[0];
  // Loop through all elements
  for (i = 0; i < frm.length; i++)
  {
    // Look for Header Template's Checkbox
    //As we have not other control other than checkbox we just check following statement
    if (this != null)
    {
      if (ValId.indexOf('ChkForSterilizeAll') !=  - 1)
      {
        // Check if main checkbox is checked,
        // then select or deselect datagrid checkboxes
        if (ValChecked)
           {
            if(frm.elements[i].disabled == false)
            frm.elements[i].checked = true;
            
          }
        else
          frm.elements[i].checked = false;
      }
      else if (ValId.indexOf('ChkForSterilize') !=  - 1)
      {
        // Check if any of the checkboxes are not checked, and then uncheck top select all checkbox
        if (frm.elements[i].checked == false)
          frm.elements[1].checked = false;
      }
    } // if
  } // for
} // function



// For complete sterilize Instrument/Set List
function CompleteSterilizecheck_uncheck(Val)
{
  var ValChecked = Val.checked;
  var ValId = Val.id;
  var frm = document.forms[0];
  // Loop through all elements
  for (i = 0; i < frm.length; i++)
  {
    // Look for Header Template's Checkbox
    //As we have not other control other than checkbox we just check following statement
    if (this != null)
    {
      if (ValId.indexOf('ChkCompleteSterilizeAll') !=  - 1)
      {
        // Check if main checkbox is checked,
        // then select or deselect datagrid checkboxes
        if (ValChecked)
           {
            if(frm.elements[i].disabled == false)
            frm.elements[i].checked = true;
            
          }
        else
          frm.elements[i].checked = false;
      }
      else if (ValId.indexOf('ChkCompleteSterilize') !=  - 1)
      {
        // Check if any of the checkboxes are not checked, and then uncheck top select all checkbox
        if (frm.elements[i].checked == false)
          frm.elements[1].checked = false;
      }
    } // if
  } // for
} // function



////////// Validation for characters only
function IsCharOnly(strString) 
  {
   var iChars = "!@#$%^&*()+=-[]\\\';,./{}|\":<>?~_0123456789"; 
   for (var i = 0; i < strString.length; i++) 
     if (iChars.indexOf(strString.charAt(i)) != -1)
  	  	  return false;
  	 
   return true ;
}

////////validation for numbers with decimal point

function IsNumOnly(sText)
{
   var ValidChars = "0123456789.";
   var IsNumber=true;
   var Char;

 
   for (i = 0; i < sText.length && IsNumber == true; i++) 
      { 
      Char = sText.charAt(i); 
      if (ValidChars.indexOf(Char) == -1) 
         {
         IsNumber = false;
         }
      }
   return IsNumber;
   
   }
   ////////validation for numbers without decimal point

function IsNumIntOnly(sText)
{
   var ValidChars = "0123456789";
   var IsNumber=true;
   var Char;

 
   for (i = 0; i < sText.length && IsNumber == true; i++) 
      { 
      Char = sText.charAt(i); 
      if (ValidChars.indexOf(Char) == -1) 
         {
         IsNumber = false;
         }
      }
   return IsNumber;
   
   }


//////// Validation function for Email Address.
function IsValidEmailId(str) 
{

		var at="@"
		var dot="."
		var lat=str.indexOf(at)
		var lstr=str.length
		var ldot=str.indexOf(dot)
		if (str.indexOf(at)==-1){
		   alert("Invalid E-mail ID")
		   return false
		}

		if (str.indexOf(at)==-1 || str.indexOf(at)==0 || str.indexOf(at)==lstr){
		   alert("Invalid E-mail ID")
		   return false
		}

		if (str.indexOf(dot)==-1 || str.indexOf(dot)==0 || str.indexOf(dot)==lstr){
		    alert("Invalid E-mail ID")
		    return false
		}

		 if (str.indexOf(at,(lat+1))!=-1){
		    alert("Invalid E-mail ID")
		    return false
		 }

		 if (str.substring(lat-1,lat)==dot || str.substring(lat+1,lat+2)==dot){
		    alert("Invalid E-mail ID")
		    return false
		 }

		 if (str.indexOf(dot,(lat+2))==-1){
		    alert("Invalid E-mail ID")
		    return false
		 }
		
		 if (str.indexOf(" ")!=-1){
		    alert("Invalid E-mail ID")
		    return false
		 }

 		 return true					
	}

////////// validation function to remove left and right side spaces in a string
function Trim(str)
{

  return LTrim(RTrim(str));

}

function LTrim(str)
{

  for (var i=0; str.charAt(i)==" "; i++)
  {
    str =  str.substring(i,str.length-1);
  }
  return str;
}

function RTrim(str)
{

  for (var i=str.length-1; str.charAt(i)==" "; i--)
  {
    str = str.substring(0,i);
  }
  return str;
}


////////// Validation Function For DropdownList
function IsDdlSelect(str)
{
  if(str=="Select")
    return false;
  return true ;  
}


//////Validation Function For DateTime
function IsValidDateTime(str)
{
 if (str.replace(/^\\s+|\\s+$/, '').length != 0 && isNaN(Date.parse(str)))
 {
     return false;
 }
}


function compareDateTimes(strStartTm,StrEndTm)
{
  
  if(IsValidDateTime(strStartTm)==false)
      {
        alert('Enter Valid Bid Start Date/Time.');
        return false;
      }
  if(IsValidDateTime(StrEndTm)==false)
      {
        alert('Enter Valid Bid End Date/Time.');
        return false;
      }
 
  var strStTm=strStartTm.split(' ');
  var strEdTm=StrEndTm.split(' '); 
  if((strStTm[0]==strEdTm[0]) && (strStTm[1]==strEdTm[1]))//if Date and time exactly same ,then just chk for Am /Pm
  {
    if(strStTm[2]=="PM")
     {
       alert("Bid Start Time Should Be smaller Than Bid End Time.");
       return false;
     }
     else if(strEdTm[2]=="AM")
     {
       alert("Bid Start Time Should Be smaller Than Bid End Time.");
       return false;
     }
  }
  else if((strStTm[0]==strEdTm[0]) && (strStTm[1]!=strEdTm[1]))
  {
    var strStTmHHMM=strStTm[1].split(':');
    var strStEdHHMM=strEdTm[1].split(':');
    if(parseInt(strStTmHHMM[0])==parseInt(strStEdHHMM[0]))//hr exactly same
     {
       if(parseInt(strStTmHHMM[1])==parseInt(strStEdHHMM[1]))//mm exactly same
         {
             alert("Bid Start Date/Time Should Be smaller Than Bid End Date Time.");
             return false;
         }
     }
  }
   
}

