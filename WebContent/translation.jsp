 <%@ page import="java.io.*" %>
<%@ page import="utils.*" %>
 
 <% 
 	String strRequest=request.getParameter("request"); 
 	String strId=request.getParameter("id"); 
 	String strUploadedMessage=request.getParameter("message");
 	String strTranslateMessage=request.getParameter("message");
 	String strTab1Content="";
	String strTab2Content="";
	String strZipOutput="";
 	
 	if(strUploadedMessage==null) strUploadedMessage="";
 	if(strTranslateMessage==null) strTranslateMessage="";
 	if(strRequest==null || strRequest.equals("") || strRequest.equals("viewProject")){
 	
 	String strUploadNotification="";
	if(strUploadedMessage.equals("uploaded")){
		strUploadNotification="Project uploaded. Let's copy project id <b>"+strId+"</b> to your clipboard for future used. <br/>Click the 'translation project' button to translate the project and see output.";
	}
	
	String strTranslateNotification="";
	if(strTranslateMessage.equals("translated")){
		strTranslateNotification="A translate request is created. Typically it took 30 seconds for translating a 50 java files project. Let's click the 'view project' button after a minute.";
	}
 %>
 
 <form action="tool.jsp?request=searchProject" method="POST">
 	Input ID of project:
 	<%
 		if(strId!=null && !strId.equals("uploadFailed")){
 	%>
    	<input type="text" id="txtProjectName"  name="txtProjectName" value="<%=strId %>" size="60" />
     <%} else { %>
    	<input type="text" id="txtProjectName"  name="txtProjectName" size="60" />    
     <%} %>
     <script>
     function redirectViewPageWithId() {
    	idProject=document.getElementById("txtProjectName").value;	
    	pageUrl='/NLPLWebTool/tool.jsp?request=viewProject&id='+idProject;
    	return pageUrl;
   	}
    </script>
    <input type="button" onclick="window.location.href=redirectViewPageWithId()" value="View Project" />
    <input type="button" onclick="window.location.href='/NLPLWebTool/tool.jsp?request=createProject'" value="Upload New Project" />
  </form>
  <br/>
  <label id="lblUploadedMessage" name="lblUploadedMessage" style="color:red"><%=strUploadNotification %></label>
  
  <%
 		if(strId!=null && !strId.equals("uploadFailed")){
 			String filePath = getServletContext().getInitParameter("file-upload");
 			String serverUrl = getServletContext().getInitParameter("server-url");
 			
 			
 			String strPageRequested=request.getParameter("pageRequested");
 			
 			String strProjectName=request.getParameter("projectName");
 			if(strProjectName==null || strProjectName.isEmpty()){
 				String strFileInput=filePath+strId+"/"+"input"+"/";
 				File fInput=new File(strFileInput);
 				File[] arrInFolder=fInput.listFiles();
 				File fInProjectName=null;
 				String strMacOSFolder="__MACOSX";
 				if(arrInFolder!=null){
 					for(int j=0;j<arrInFolder.length;j++){
 						if(arrInFolder[j].isDirectory() && !arrInFolder[j].getName().equals(strMacOSFolder)){
 							fInProjectName=arrInFolder[j];
 							break;
 						}
 					}
 					if(fInProjectName!=null){
 						strProjectName=fInProjectName.getName();
 					}
 				}	
 			}
 			
			
			if(!strProjectName.isEmpty()){
				String strLocalZipOutput=filePath+"/"+strId+"/"+"output"+"/"+strProjectName+".zip";
				File fLocalZipOutput=new File(strLocalZipOutput);
				if(fLocalZipOutput.isFile()){
					strZipOutput=serverUrl+strId+"/"+"output"+strProjectName+".zip";
				}
				//String strLocalZipOutput=filePath+"/"+strId+"/"+"output"+strProjectName+".zip";
				
			}
			
 			if(strPageRequested==null) strPageRequested="";
 			else strPageRequested=EncodeDecodeUtil.decode(strPageRequested);
 			if(strPageRequested!="" && strPageRequested.endsWith(".java")){
 				
 				if(!strProjectName.isEmpty()){
					String inputPrefix=filePath+"/"+strId+"/"+"input"+"/";
					String outputPrefix=filePath+"/"+strId+"/"+"output"+"/";
					String fpInput=inputPrefix+strPageRequested;
					String fpOutput=outputPrefix+strPageRequested;
					File fTextInput=new File(fpInput);
					File fTextOutput=new File(fpOutput);
					if(fTextInput.isFile()){
						strTab1Content=FileIO.readStringFromFile(fTextInput.getAbsolutePath());
					}
					if(fTextOutput.isFile()){
						strTab2Content=FileIO.readStringFromFile(fTextOutput.getAbsolutePath());
					}
					
				}
 				
 			}
 			String strEncodeRequest=EncodeDecodeUtil.encode(strPageRequested);
 	%>
 	
 <form action="TranslateServlet" method="POST">
 	<input type="submit"  value="Translate Project" />
 	<input type="hidden" name="hiddenProjectId"  value="<%=strId%>" />
 	<input type="hidden" name="hiddenProjectName"  value="<%=strProjectName%>" />
 	<label id="lblTranslateMessage" style="color:red"><%=strTranslateNotification%></label>
 	<%
 		if(!strZipOutput.isEmpty()){
 	%>
 	<br/>
 		<a id="lblDownload" hhref="<%=strZipOutput%>">Download output project here</a>
 	<%
 		}
 	%>
 </form>
 <br/>
 <label id="lblCurrentFileView" style="color:red">Current view file: <%=strEncodeRequest%></label>
 	<script type="text/javascript">
	function openCity(evt, cityName) {
	    // Declare all variables
	    var i, tabcontent, tablinks;
	
	    // Get all elements with class="tabcontent" and hide them
	    tabcontent = document.getElementsByClassName("tabcontent");
	    for (i = 0; i < tabcontent.length; i++) {
	        tabcontent[i].style.display = "none";
	    }
	
	    // Get all elements with class="tablinks" and remove the class "active"
	    tablinks = document.getElementsByClassName("tablinks");
	    for (i = 0; i < tablinks.length; i++) {
	        tablinks[i].className = tablinks[i].className.replace(" active", "");
	    }
	
	    // Show the current tab, and add an "active" class to the button that opened the tab
	    document.getElementById(cityName).style.display = "block";
	    evt.currentTarget.className += " active";
	};
	
</script>
 	
<div class="tab">
  <button id="taba1" class="tablinks" onclick="openCity(event, 'Input')">Input</button>
  <button id="taba2" class="tablinks" onclick="openCity(event, 'Output')">Output</button>
</div>

<!-- Tab content -->
<div id="Input" class="tabcontent" >
  <textarea id="nlplInput"  readonly rows="70" cols="100">
	<%=strTab1Content %>
</textarea>
</div>

<div id="Output" class="tabcontent">
   <textarea id="nlplOutput"  readonly rows="70" cols="100">
	<%=strTab2Content %>
</textarea> 
</div>
<script type="text/javascript">
 	document.getElementById("taba1").click();
 	</script>
  <%} %>
  <%
 	}
 	else if(strRequest.equals("createProject")){
 	
  %>
  <div>
  You can upload your own project (need to be maven and zipped) or upload the AnyCode data project <a href="/NLPLWebTool/data/SampleAnyCodeCorpus.zip">here</a>. 
  <br/>
  	By the translation phase, each natural language comments which have prefix &ldquo;&frasl;&frasl; NLPL:&rdquo; will be translated to code in each Java source files.
  </div>
  
  <form action = "UploadServlet" method = "post"
         enctype = "multipart/form-data">
         <input type = "file" name = "file" size = "50" />
         <br />
         <input type = "submit" value = "Upload zip File" />
      </form>
  <br/>
  <a href="/NLPLWebTool/tool.jsp?request=viewProject">back</a>
  <br/>
   <%
 	}
 	
  %>