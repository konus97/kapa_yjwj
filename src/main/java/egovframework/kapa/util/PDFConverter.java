package egovframework.kapa.util;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import javax.imageio.ImageIO;

import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.pdmodel.PDPage;
import org.apache.pdfbox.pdmodel.PDPageContentStream;
import org.apache.pdfbox.pdmodel.common.PDRectangle;
import org.apache.pdfbox.pdmodel.graphics.image.PDImageXObject;
import org.apache.pdfbox.rendering.ImageType;
import org.apache.pdfbox.rendering.PDFRenderer;

public class PDFConverter {
	
	public List<String> ConvertPdf2Jpg(String fpath, String fname, int masterId, int idx) throws Exception {
		return ConvertPDF2JPG(fpath, fname, masterId, idx);
	}
	
	// not use ---------------------------
	public void ConvertPDF2JPGMulti(String fpath, String fname, int f_no) throws Exception {
		File inputDir = new File("input/");
		File[] fileArr = inputDir.listFiles();
		for (int i=0; i<fileArr.length; i++) {
			if (fileArr[i].getName().endsWith(".pdf")) {
				//String pdfFilePath = fileArr[i].getAbsolutePath();
				String pdfFilePath = fpath;
				String destFolderPath = new File("output").getAbsolutePath();
				//this.convertPDFFileToJPGFile(pdfFilePath, destFolderPath);
			}
		}
	}
	//------------------------------------
	
	// PDF -> JPG
	public List<String> ConvertPDF2JPG(String fpath, String fname, int masterId, int idx) throws Exception {
		String inputPath =  fpath + fname;
		String outputPath = fpath + "output/" + masterId;
		//String destFolderPath = new File("output").getAbsolutePath();
		//String pdfFilePath2 = new File("input/sample.pdf").getAbsolutePath();
		//String pdfFilePath = new File(path).getAbsolutePath();
		//String pdfFilePath = "C:\\Users\\pc\\git\\kapa_seoul\\src\\main\\webapp\\download\\input\\";
		//pdfFilePath += fname;
		//this.convertPDFFileToJPGFile(pdfFilePath, destFolderPath);
		//this.convertPDFFileToJPGFile(pdfFilePath, destFolderPath);
		return this.convertPDFFileToJPGFile(inputPath, outputPath, idx);
	}

	
	/**
	 * convert PDF file to JPG file.
	 * 
	 * @param pdfFilePath
	 * @param destFolderPath
	 * @throws Exception
	 */
	public List<String> convertPDFFileToJPGFile(String pdfFilePath, String destFolderPath, int idx) throws Exception {
		
		System.out.println("convertPDFFileToJPGFile : begin");
		
		if (pdfFilePath == null || pdfFilePath.length() == 0) {
			throw new Exception("convertPDFFileToJPGFile : pdfFilePath is null or empty");
		}
		
		if (destFolderPath == null || destFolderPath.length() == 0) {
			throw new Exception("convertPDFFileToJPGFile : destFolderPath is null or empty");
		}
		
		PDDocument document = null;
		List<String> jpgFiles = new ArrayList();
		
		try {
			File file = new File(pdfFilePath);
			if (!file.exists()) {
				throw new Exception("convertJPGFileToPDFFile : this path not exists. [" + file.getAbsolutePath() + "]");
			}
			
			String fileName = file.getName();
			if (fileName == null || fileName.length() == 0) {
				throw new Exception("convertJPGFileToPDFFile : fileName is null or empty. [" + file.getAbsolutePath() + "]");
			}
			
			String fileNameOnly = null;
			
			int dotIndex = fileName.lastIndexOf(".");
			if (dotIndex > -1) {
				fileNameOnly = fileName.substring(0, dotIndex);
			} else {
				fileNameOnly = fileName;
			}
			fileNameOnly = Integer.toString(idx);
			
//			if (fileNameOnly.indexOf(".") > -1) {
//				fileNameOnly = fileNameOnly.replace(".", "_");
//			}
//			
//			if (fileNameOnly.indexOf(" ") > -1) {
//				fileNameOnly = fileNameOnly.replace(" ", "_");
//			}
			
			File destFolder = new File(destFolderPath);
			if (!destFolder.exists()) {
				destFolder.mkdirs();
			}
			
			File destFolder2 = new File(destFolderPath + "/" + fileNameOnly);
			if (!destFolder2.exists()) {
				destFolder2.mkdirs();
			}
			document = PDDocument.load(file);

			int pageCount = document.getNumberOfPages();
			System.out.println("pageCount : " + pageCount);
			
			String strPageCount = String.valueOf(pageCount);
			int pageCountLength = strPageCount.length();
			
			PDFRenderer pdfRenderer = new PDFRenderer(document);
			for (int i=0; i<pageCount; i++) { 
				int pageNum = i + 1;
				
			    BufferedImage imageObj = pdfRenderer.renderImageWithDPI(i, 100, ImageType.RGB);
			    
			    //String imageFileName = fileNameOnly + "_" + StrUtil.lpad(String.valueOf(pageNum), pageCountLength, "0") + ".jpg";
			    String imageFileName = "temp_" + StrUtil.lpad(String.valueOf(pageNum), pageCountLength, "0") + ".jpg";
//			    File outputfile = new File(destFolderPath + "/" + fileNameOnly + "/" + imageFileName);
			    File outputfile = new File(destFolderPath + "/" + fileNameOnly + "/" + imageFileName);
			    if (!outputfile.exists()) {
			    	ImageIO.write(imageObj, "jpg", outputfile);
			    }
			    
			    jpgFiles.add(destFolderPath + "/" + fileNameOnly + "/" + imageFileName);
			    System.out.println("output " + pageNum + "/" + pageCount + " : " + outputfile.getAbsolutePath());
			}
		
		} catch (Exception e) {
			throw e;
			
		} finally {
			try {
				if (document != null) {
					document.close();
				}
			} catch (Exception e) {}
		}
		
		System.out.println("convertPDFFileToJPGFile : end");
		return jpgFiles;
	}
	
	/**
	 * example method of converting JPG file to PDF file.
	 * 
	 * @throws Exception
	 */
	public void testConvertJPG2PDF() throws Exception {
		String jpgsFolderPath = new File("output").getAbsolutePath();
		String destFolderPath = new File("result/result.pdf").getAbsolutePath();
		this.convertJPGFileToPDFFile(jpgsFolderPath, destFolderPath);
	}
	
	
	
	/**
	 * convert JPG file to PDF file.
	 * 
	 * @param jpgsFolderPath
	 * @param resultFilePath
	 * @throws Exception
	 */
	public void convertJPGFileToPDFFile(String jpgsFolderPath, String resultFilePath) throws Exception {
		
		System.out.println("convertPDFFileToJPGFile : begin");
		
		if (jpgsFolderPath == null || jpgsFolderPath.length() == 0) {
			throw new Exception("convertPDFFileToJPGFile : jpgsFolderPath is null or empty");
		}
		
		if (resultFilePath == null || resultFilePath.length() == 0) {
			throw new Exception("convertPDFFileToJPGFile : resultFilePath is null or empty");
		}
		
		PDDocument document = null;
		
		try {
			File folder = new File(jpgsFolderPath);
			if (!folder.exists()) {
				folder.mkdirs();
			}
			
			if (!folder.isDirectory()) {
				throw new Exception("convertJPGFileToPDFFile : this path is not a folder. [" + folder.getAbsolutePath() + "]");
			}
			
			File[] fileArr = folder.listFiles();
			int fileCount = 0;
			if (fileArr != null) {
				fileCount = fileArr.length;
			}
			
			if (fileCount == 0) {
				throw new Exception("convertJPGFileToPDFFile : fileCount == 0");
			}
			
			sortFileArray(fileArr);
			
			document = new PDDocument();
			
			for (int i=0; i<fileCount; i++) {
				File oneFile = fileArr[i];
				
				if (oneFile == null || !oneFile.exists()) {
					continue;
				}
				
				InputStream inputStream = null;
				PDPageContentStream contentStream = null;
				
				try {
					inputStream = new FileInputStream(oneFile);
					BufferedImage bufferedImage = ImageIO.read(inputStream);
					float width = bufferedImage.getWidth();
					float height = bufferedImage.getHeight();
					
					PDPage page = new PDPage(new PDRectangle(width, height));
					document.addPage(page);
	
					PDImageXObject pdImage = PDImageXObject.createFromFile(oneFile.getAbsolutePath(), document);
					contentStream = new PDPageContentStream(document, page);
//					contentStream.drawImage(pdImage, 0, 0);
					contentStream.drawImage(pdImage, 0, 0, width, height);
					
				} catch (Exception e) {
					throw e;
					
				} finally {
					try {
						if (contentStream != null) {
							contentStream.close();
						}
					} catch (Exception e) {}
					
					try {
						if (inputStream != null) {
							inputStream.close();
						}
					} catch (Exception e) {}
				}
			}
			
			File resultFile = new File(resultFilePath);
			if (resultFile.exists()) {
				resultFile.delete();
			}
			
			String motherFolderPath = getMotherFolderPath(resultFile);
			File motherFolder = new File(motherFolderPath);
			if (!motherFolder.exists()) {
				motherFolder.mkdirs();
			}
			
			document.save(resultFile.getAbsolutePath());
			
		} catch (Exception e) {
			throw e;
			
		} finally {
			try {
				if (document != null) {
					document.close();
				}
			} catch (Exception e) {}
		}
		
		System.out.println("convertPDFFileToJPGFile : end");
	}
	
	
	private String getMotherFolderPath(File fileObj) throws Exception {
		
		if (fileObj == null) {
			return "";
		}
		
		String path = revisePath(fileObj.getAbsolutePath());
		int lastSlashIdx = path.lastIndexOf("/");
		if (lastSlashIdx < 0) {
			throw new Exception("getMotherFolderPath : this path is not valid. [" + path + "]");
		}
		
		String motherFolderPath = path.substring(0, lastSlashIdx);
		return motherFolderPath;
	}
	
	
	private String revisePath(String path) {
		if (path == null || path.length() == 0) {
			return "";
		}
		
		if (path.indexOf("\\") > -1) {
			path = path.replace("\\", "/");
		}
		
		while (path.indexOf("//") > -1) {
			path = path.replace("//", "/");
		}
		
		return path.trim();
	}
	
	
	private void sortFileArray(File[] fileArr) throws Exception {
		if (fileArr == null) {
			return;
		}
		
		if (fileArr.length < 2) {
			return;
		}
		
		File file1 = null;
		File file2 = null;
		File tempFile = null;
		
		int fileCount = fileArr.length;
		for (int i=0; i<fileCount; i++) {
			for (int k=i+1; k<fileCount; k++) {
				file1 = fileArr[i];
				file2 = fileArr[k];
				
				if (checkShouldChangeOrder(file1.getName(), file2.getName())) {
					tempFile = fileArr[i];
					fileArr[i] = file2;
					fileArr[k] = tempFile;
				}
			}
		}
	}
	
	
	private boolean checkShouldChangeOrder(String firstStr, String nextStr) {
		if (firstStr == null) {
			firstStr = "";
		}
		
		if (nextStr == null) {
			nextStr = "";
		}
		
		if (firstStr.length() > nextStr.length()) {
			return true;
			
		} else if (firstStr.length() < nextStr.length()) {
			return false;
		}
		
		char ch1 = 0;
		char ch2 = 0;
		
		int len = firstStr.length();
		for (int i=0; i<len; i++) {
			ch1 = firstStr.charAt(i);
			ch2 = nextStr.charAt(i);
			if (ch1 == ch2) {
				continue;
				
			} else if (ch1 > ch2) {
				return true;
				
			} else if (ch1 < ch2) {
				return false;
			}
		}
		
		return false;
	}
}
