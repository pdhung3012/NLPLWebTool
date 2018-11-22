<%@ page import="java.io.*" %>
<%@ page import="utils.*" %>
<%

	String strId=request.getParameter("id");
	if(strId==null) strId="";
	if(!strId.isEmpty() && !strId.equals("uploadFailed")){
		
		String filePath = getServletContext().getInitParameter("file-upload");
		String inputPrefix=filePath+strId+File.separator+"input"+File.separator;
		
		File fInput=new File(inputPrefix);
		File[] arrInFolder=fInput.listFiles();
		File fInProjectName=null;
		String strMacOSFolder="__MACOSX";
		
		String strTreeContent="";
		if(arrInFolder!=null){
			for(int j=0;j<arrInFolder.length;j++){
				if(arrInFolder[j].isDirectory() && !arrInFolder[j].getName().equals(strMacOSFolder)){
					fInProjectName=arrInFolder[j];
					break;
				}
			}
			if(fInProjectName!=null){
				String strProjectName=fInProjectName.getName();
				File fTextInput=new File(inputPrefix+strProjectName+File.separator);
				// strTreeContent=fTextInput.getAbsolutePath();
				if(fTextInput.isDirectory()){
					strTreeContent=HtmlGenerator.getFolderHtml(inputPrefix+strProjectName+File.separator, inputPrefix, 0);
				}
				
				
			}
				
		}
	
		
%>

<script type="text/javascript">
	function openJavaPage(evt, page) {
	    // Declare all variables
	    var id=document.getElementById("hiddenId").value;
		var urlRedirect='/NLPLWebTool/tool.jsp?request=viewProject&id='+id+'&pageRequested='+page;
		window.location.replace(urlRedirect);
	};
	
</script>
<form action="#">
	<input type="hidden" id="hiddenId" name="hiddenId" value="<%=strId%>" />
</form>
 <div id="example">
            <div class="demo-section k-content">
                <%=strTreeContent %>
            
            </div>

            <script>
                $(document).ready(function() {
                    $("#treeview").kendoTreeView();
                });
            </script>

            <style>
                #treeview .k-sprite {
                    background-image: url("telerik/coloricons-sprite.png");
                }

                .rootfolder { background-position: 0 0; }
                .folder { background-position: 0 -16px; }
                .pdf { background-position: 0 -32px; }
                .html { background-position: 0 -48px; }
                .image { background-position: 0 -64px; }
            </style>
<%
	}
%>