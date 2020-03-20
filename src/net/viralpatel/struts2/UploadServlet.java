package net.viralpatel.struts2;

import java.io.*;
import java.util.*;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.output.*;

//import edu.iastate.cs.run.NLPLRunProject;
import utils.UniqueIDGenerator;
import utils.ZipUtil;

/**
 * Servlet implementation class UploadServlet
 */

public class UploadServlet extends HttpServlet {

	public static String filePath = "";
	public static String configTranslationFilePath = "";

	private boolean isMultipart;
	private int maxFileSize = 100 * 1024;
	private int maxMemSize = 4 * 1024;
	private File file;
	private String idTransaction="";
	private String idFailed="uploadFailed";
	private ExecutorService pool = null;

	public void init() {
		// Get the file location where it would be stored.
		filePath = getServletContext().getInitParameter("file-upload");
		configTranslationFilePath=getServletContext().getInitParameter("translation-config");
		pool = Executors.newFixedThreadPool(4);
	}
	
	 public void destroy(){
	    	if(pool!=null){
	    		pool.shutdown();
	    	}
	    }

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, java.io.IOException {

		// Check that we have a file upload request
		isMultipart = ServletFileUpload.isMultipartContent(request);
		response.setContentType("text/html");
		// java.io.PrintWriter out = response.getWriter();

		if (!isMultipart) {
			response.sendRedirect(
					"/NLPLWebTool/tool.jsp?request=viewProject&id="+idFailed);
			return;
		}

		String uniqueId=UniqueIDGenerator.getUniqueID();
		String uploadedFilePath=filePath+"/"+uniqueId+"/";
		File folderUpdloaded=new File(uploadedFilePath);
		if(!folderUpdloaded.isDirectory()){
			folderUpdloaded.mkdir();
		}
		DiskFileItemFactory factory = new DiskFileItemFactory();
		// maximum size that will be stored in memory
		factory.setSizeThreshold(maxMemSize);

		// Location to save data that is larger than maxMemSize.
		factory.setRepository(new File(
				uploadedFilePath));

		// Create a new file upload handler
		ServletFileUpload upload = new ServletFileUpload(factory);

		// maximum file size to be uploaded.
		upload.setSizeMax(maxFileSize);
		String idStatus=idFailed;
		String strProjectName="";
		try {
			// Parse the request to get file items.
			List fileItems = upload.parseRequest(request);
			// Process the uploaded file items
			Iterator i = fileItems.iterator();
			
			while (i.hasNext()) {
				FileItem fi = (FileItem) i.next();
				if (!fi.isFormField()) {
					// Get the uploaded file parameters
//					String fieldName = fi.getFieldName();
					String fileName = fi.getName();
//					String contentType = fi.getContentType();
//					boolean isInMemory = fi.isInMemory();
//					long sizeInBytes = fi.getSize();

					// Write the file
					if (fileName.lastIndexOf("\\") >= 0) {
						String fNameOnly = fileName.substring(fileName
								.lastIndexOf("\\"));
						
						if (fNameOnly.endsWith(".zip")) {
							file = new File(uploadedFilePath + fNameOnly);
						}

					} else {
						file = new File(
								uploadedFilePath
										+ fileName.substring(fileName
												.lastIndexOf("\\") + 1));
					}
					strProjectName=file.getName().replaceAll(".zip", "");
					fi.write(file);
					final String strConstUploadedFilePath=uploadedFilePath;
					
					
					pool.execute(new Runnable() {
						@Override
						public void run() {
							boolean gotIt=false;
							while(true){
								try{
									String inputFolder=strConstUploadedFilePath+"input"+"/";
									String outputFolder=strConstUploadedFilePath+"output"+"/";
									File fIn=new File(inputFolder);
									if(!fIn.isDirectory()){
										fIn.mkdir();
									}
									final File fOut=new File(outputFolder);
									if(!fOut.isDirectory()){
										fOut.mkdir();
									}									
									ZipUtil.extractZipFileToFolder(file.getAbsolutePath(), inputFolder);
									File[] arrInFolder=fIn.listFiles();
									File fInProjectName=null;
									String strMacOSFolder="__MACOSX";
									for(int j=0;j<arrInFolder.length;j++){
										if(arrInFolder[j].isDirectory() && !arrInFolder[j].getName().equals(strMacOSFolder)){
											fInProjectName=arrInFolder[j];
											break;
										}
									}
									File fFinalInProjectName=fInProjectName;
									
									if(fFinalInProjectName!=null){
										
										File fOutProject=new File(fOut.getAbsolutePath()+"/"+fFinalInProjectName.getName()+"/");
//										System.out.println(fOut.getAbsolutePath()+"/"+fInProjectName.getName()+"/"+"sss");
										if(!fOutProject.isDirectory()){
											fOutProject.mkdir();
										}
										gotIt=true;
									}
									
									
									
								}catch(Exception ex){
									ex.printStackTrace();
								}
								if(gotIt){
									break;
								}
							}
							
						}
					});
					// out.println("Uploaded Filename: " + fileName + "<br>");
				} 

			}
			idStatus=uniqueId;
			// out.println("</body>");
			// out.println("</html>");
		} catch (Exception ex) {
			System.out.println(ex);
		}
		response.sendRedirect("/NLPLWebTool/tool.jsp?request=viewProject&id="+idStatus+"&message=uploaded&projectName="+strProjectName);
		

	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, java.io.IOException {

		throw new ServletException("GET method used with "
				+ getClass().getName() + ": POST method required.");
	}
}
