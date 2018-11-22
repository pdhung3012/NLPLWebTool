package utils;

import java.io.File;

public class HtmlGenerator {

	public static String getFolderHtml(String fileLocation,String inputPrefix,int index){
		StringBuilder sb=new StringBuilder();
		File fLocation=new File(fileLocation);
		String strOutFolder=fLocation.getAbsolutePath().replaceFirst(inputPrefix, File.separator);			
		
		if(fLocation.isDirectory()){
//			 <ul id="treeview">
//             <li data-expanded="true">
//                 <span class="k-sprite folder"></span>
			if(index==0){
				sb.append("<ul id=\"treeview\">"+"\n"
                    +"<li data-expanded=\"true\">"+"\n");
				sb.append("<span class=\"k-sprite folder\"></span>"+"\n");
				sb.append("<span value=\""+strOutFolder+"\">"+fLocation.getName()+"</span>\n");
				File[] arrChildren=fLocation.listFiles();
				sb.append("<ul>"+"\n");
				for(int i=0;i<arrChildren.length;i++){
//					if(arrChildren[i].isDirectory()){
//						sb.append("<ul>"+"\n");
//						sb.append(getFolderHtml(arrChildren[i].getAbsolutePath()+File.separator,inputPrefix, index+1)+"\n");
//						
//					} else if(arrChildren[i].isFile()){
//						sb.append(getFolderHtml(arrChildren[i].getAbsolutePath()+File.separator,inputPrefix, index+1)+"\n");
//					}
					sb.append(getFolderHtml(arrChildren[i].getAbsolutePath()+File.separator,inputPrefix, index+1)+"\n");
				}
				sb.append("</ul>"+"\n");
				sb.append("</li>\n");
				sb.append("</ul>\n");
	            
			} else{
				sb.append("<li>\n");
				sb.append("<span class=\"k-sprite folder\"></span>"+"\n");
				sb.append("<span value=\""+strOutFolder+"\">"+fLocation.getName()+"</span>\n");
				
				File[] arrChildren=fLocation.listFiles();
				
				sb.append("<ul>"+"\n");
				for(int i=0;i<arrChildren.length;i++){
					sb.append(getFolderHtml(arrChildren[i].getAbsolutePath()+File.separator,inputPrefix, index+1)+"\n");
				}
				sb.append("</ul>"+"\n");
				sb.append("</li>");
			}
			
			
			
		} else if(fLocation.isFile()){
			sb.append("<li>"+"\n");
			sb.append("<span class=\"k-sprite html\"></span> <span onclick=\"openJavaPage(event, '"+strOutFolder+"')\">"+fLocation.getName()+"</span>");
			sb.append("</li>"+"\n");
		}
		return sb.toString();
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
