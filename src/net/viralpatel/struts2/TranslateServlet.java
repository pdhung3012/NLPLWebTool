package net.viralpatel.struts2;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

//import edu.iastate.cs.run.NLPLRunProject;
import utils.UniqueIDGenerator;
import utils.ZipUtil;

/**
 * Servlet implementation class TranslateServlet
 */
public class TranslateServlet extends HttpServlet {
	public String filePath = "";
	public String configTranslationFilePath = "";
	private ExecutorService pool = null;
	
	private static final long serialVersionUID = 1L;
       
    public TranslateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

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
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		throw new ServletException("GET method used with "
				+ getClass().getName() + ": POST method required.");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// Check that we have a file upload request
		// response.setContentType("text/html");
		// java.io.PrintWriter out = response.getWriter();

		String projectId=request.getParameter("hiddenProjectId");
		String projectName=request.getParameter("hiddenProjectName");
		System.out.println("ID "+projectId+" name "+projectName);
		final String strConstUploadedFilePath=filePath+projectId+"/";
		final String strFinalProjectName=projectName;
		final String resultFinalFile=strConstUploadedFilePath+"/"+"result.txt";
		final String configFinalFile=configTranslationFilePath;
		
		
		
		pool.execute(new Runnable() {
			@Override
			public void run() {
				boolean gotIt=false;
				try{
					String inputFolder=strConstUploadedFilePath+"input"+"/"+strFinalProjectName+"/";
					String outputFolder=strConstUploadedFilePath+"output"+"/"+strFinalProjectName+"/";
					
					System.out.println("input folder"+inputFolder);
					System.out.println("output folder"+outputFolder);
					System.out.println("config"+configTranslationFilePath);
					String[] args={
					configFinalFile ,
					inputFolder ,
					outputFolder,
					resultFinalFile
					};
				//	NLPLRunProject.main(args);
					
				}catch(Exception ex){
					ex.printStackTrace();
				}
			}
		});
		
		//pool.shutdown();
		response.sendRedirect("/NLPLWebTool/tool.jsp?request=viewProject&id="+projectId+"&message=translated");
		
		
		
	}

}
