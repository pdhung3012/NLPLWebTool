package utils;

import java.io.*;
import java.util.ArrayList;

public class FileIO {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}
	
	public static void writeStringToFile(String string, String outputFile) {
		try {
			BufferedWriter writer = new BufferedWriter(new FileWriter(outputFile));
			writer.write(string);
			writer.flush();
			writer.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		//	System.exit(0);
			System.err.println(e.getMessage());
		}
	}
	
	public static void appendStringToFile(String string, String outputFile) {
		try {
			BufferedWriter writer = new BufferedWriter(new FileWriter(outputFile,true));
			writer.write(string);
			writer.flush();
			writer.close();
		}
		catch (Exception e) {
			/*e.printStackTrace();
			System.exit(0);*/
			System.err.println(e.getMessage());
		}
	}
	
	public static String readStringFromFile(String inputFile) {
		try {
			if(!new File(inputFile).exists()){
				return "";
			}
			/*BufferedInputStream in = new BufferedInputStream(new FileInputStream(inputFile));
			byte[] bytes = new byte[(int) new File(inputFile).length()];
			in.read(bytes);
			in.close();
			return new String(bytes);
			*/
			if(!new File(inputFile).exists()){
				return "";
			}
			/*
			BufferedInputStream in = new BufferedInputStream(new FileInputStream(inputFile));
			byte[] bytes = new byte[(int) new File(inputFile).length()];
			in.read(bytes);
			in.close();
			return new String(bytes);
			*/
			BufferedReader in = new BufferedReader(new FileReader(inputFile));
			StringBuilder sbResult=new StringBuilder();
			String s=null;
			while( (s = in.readLine()) != null) {
					
				sbResult.append(new String(s.getBytes(),"UTF-8")+"\n");
			}
			return sbResult.toString();
		}
		catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public static void findFiles(File root, String extension,
			ArrayList<String> lstFilePaths) {
		File[] files = root.listFiles();
		for (File file : files) {
			if (file.isFile() && file.getName().endsWith(extension)) {
				lstFilePaths.add(file.getAbsolutePath());
			} else if (file.isDirectory()) {
				findFiles(file, extension, lstFilePaths);
			}
		}
	}

	public static String[] findAllJavaFiles(String inputPath) {
		ArrayList<String> lstRersult = new ArrayList<String>();
		File fileInput = new File(inputPath);
		findFiles(fileInput, "java", lstRersult);

		return convertToArrString(lstRersult);
	}
	
	public static String[] findAllExtensionFiles(String inputPath,String extension) {
		ArrayList<String> lstRersult = new ArrayList<String>();
		File fileInput = new File(inputPath);
		findFiles(fileInput, "java", lstRersult);

		return convertToArrString(lstRersult);
	}
	
	public static String[] convertToArrString(ArrayList<String> lstInput) {
		String[] arrResult = new String[lstInput.size()];
		for (int i = 0; i < lstInput.size(); i++) {
			arrResult[i] = lstInput.get(i);
		}
		return arrResult;
	}

}
