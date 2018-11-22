package utils;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.FileSystem;
import java.nio.file.FileSystems;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.Calendar;
import java.util.Date;
import java.util.Enumeration;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import java.io.FileInputStream;

import net.lingala.zip4j.core.ZipFile;
import net.lingala.zip4j.exception.ZipException;
import net.lingala.zip4j.model.ZipParameters;
import net.lingala.zip4j.util.Zip4jConstants;

public class ZipUtil {

	public static boolean extractZipFileToFolder(String inputZipFile,String outputFolder) throws ZipException{
		// TODO Auto-generated method stub
				 //Open the file
				boolean isExtractSuccess=false;
				
	        	File fNewLocation=new File(outputFolder+File.separator);
				if(!fNewLocation.isDirectory()){
					fNewLocation.mkdir();
				}
				ZipFile zipFile = new ZipFile(inputZipFile);
		         zipFile.extractAll(outputFolder);
			     isExtractSuccess=true;
		         return isExtractSuccess;
	}
	
	public static boolean compressZipFile(String inputFolder,String outputFolder) throws ZipException{
		// TODO Auto-generated method stub
				 //Open the file
				boolean isExtractSuccess=false;
				
//				Calendar calendar = Calendar.getInstance();
//				  Date time = calendar.getTime();
//				  long milliseconds = time.getTime();
				  File fInput=new File(inputFolder);
				  File fZip=new File(outputFolder+File.separator+fInput.getName()+".zip");
				  if(fZip.exists()){
					  fZip.delete();
				  }
				  // Initiate ZipFile object with the path/name of the zip file.
				  ZipFile zipFile = new ZipFile(fZip.getAbsolutePath());

				  
				  // Initiate Zip Parameters which define various properties such
				  // as compression method, etc.
				  ZipParameters parameters = new ZipParameters();

				  // set compression method to store compression
				  parameters.setCompressionMethod(Zip4jConstants.COMP_DEFLATE);

				  // Set the compression level
				  parameters.setCompressionLevel(Zip4jConstants.DEFLATE_LEVEL_NORMAL);

				  // Add folder to the zip file
				  zipFile.addFolder(inputFolder, parameters);
			     isExtractSuccess=true;
		         return isExtractSuccess;
	}
	
	public static File newFile(File destinationDir, ZipEntry zipEntry) throws IOException {
        File destFile = new File(destinationDir, zipEntry.getName());
         
        String destDirPath = destinationDir.getCanonicalPath();
        String destFilePath = destFile.getCanonicalPath();
         
        if (!destFilePath.startsWith(destDirPath + File.separator)) {
            throw new IOException("Entry is outside of the target dir: " + zipEntry.getName());
        }
         
        return destFile;
    }
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		 //Open the file
      
	}

}
