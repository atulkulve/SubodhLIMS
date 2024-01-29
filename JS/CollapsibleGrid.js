	
	 //Created By:Mukesh Singhi on 29-Nov-2007
	 //For Collapsing and expanding rows
		function ShowHideData(obj,crl_names,ColpsText,ExpText)
		{
				try
				{
					var RowIds=crl_names.split(",");
					var val=obj.innerHTML;
					
		 					if (val==ExpText)
							{
							   for (var i=0;i<RowIds.length-1;i++)
								{
									document.getElementById(RowIds[i]).style.display = "block";
								}
									obj.innerHTML=ColpsText; 
							}
							else
							{
								for (var i=0;i<RowIds.length-1;i++)
								{
									document.getElementById(RowIds[i]).style.display = "none";
								}
									obj.innerHTML=ExpText;
							}
				}
				catch(err)
				{
				alert(err);
				}
		}
		    
	  //For Collapsing all rows first time
		function CollapseAllData(crl_names)
		{
			if (crl_names!="")
			{
				var RowIds=crl_names.split(",");
				for (var i=0;i<RowIds.length-1;i++)
					{
						document.getElementById(RowIds[i]).click();
					}
			}
		}