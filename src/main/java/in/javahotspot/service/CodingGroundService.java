package in.javahotspot.service;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.Method;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLClassLoader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;

import javax.tools.Diagnostic;
import javax.tools.DiagnosticCollector;
import javax.tools.JavaCompiler;
import javax.tools.JavaCompiler.CompilationTask;
import javax.tools.JavaFileObject;
import javax.tools.StandardJavaFileManager;
import javax.tools.StandardLocation;
import javax.tools.ToolProvider;

import org.springframework.stereotype.Service;

@Service
public class CodingGroundService {
	public File saveSourceFile(String code, String path, String className) {
		File javaSourceFile = new File(path, className);
		
		FileOutputStream fos = null;
		
		try {
			javaSourceFile.createNewFile();
			
			fos = new FileOutputStream(javaSourceFile);
			fos.write(code.getBytes());
		} catch(IOException ioe) {
			ioe.printStackTrace();
		} finally {
			try {
				if(fos != null) {
					fos.close();
				}
			} catch(IOException ioe) {
				ioe.printStackTrace();
			}
		}
		
		return javaSourceFile;
	}
	
	public ArrayList<String> compileSourceCode(File javaSourceFile) throws ClassNotFoundException, InstantiationException, IllegalAccessException, MalformedURLException {
		ArrayList<String> compilationErrors = null;
		
		JavaCompiler compiler = ToolProvider.getSystemJavaCompiler();
				
		DiagnosticCollector< JavaFileObject > diagnostics = new DiagnosticCollector<JavaFileObject>();
		StandardJavaFileManager manager = compiler.getStandardFileManager(diagnostics, null, null );
		try {
			manager.setLocation(StandardLocation.CLASS_OUTPUT,Arrays.asList(new File(javaSourceFile.getParent())));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		Iterable< ? extends JavaFileObject > sources = manager.getJavaFileObjectsFromFiles( Arrays.asList(javaSourceFile) );
		
		CompilationTask task = compiler.getTask( null, manager, diagnostics, null, null, sources );
		
		if(!(task.call())) {
			compilationErrors = new ArrayList<String>();
			for( final Diagnostic< ? extends JavaFileObject > diagnostic:
	            diagnostics.getDiagnostics() ) {
					String errorMessage =  diagnostic.toString();
					
					int index = errorMessage.lastIndexOf("\\");
					index++;
					
					errorMessage = errorMessage.substring(index);
					
					compilationErrors.add("<pre class='bg-default'>" + errorMessage + "</pre>");
			}
		}
		        
		return compilationErrors;
	}
	
	
	 public LinkedHashMap<String, String> runTestsonChallenge1(File pathToClassFile) {
		LinkedHashMap<String, String> linkedHashMap = new LinkedHashMap<String, String>();
		
		ClassLoader loader=null;
		
		try {
			loader = new URLClassLoader(new URL[]{pathToClassFile.toURI().toURL()});
		} catch (MalformedURLException e) {
			e.printStackTrace();
		}
		
		Class<?> challenge1 = null;
		
        try {
			challenge1 = loader.loadClass("SumOfDigits");
			linkedHashMap.put("SPECIFICATION 1", "SATISFIED: Class defined by the name SumOfDigits");
			 
			Method method=null;
			try {
				method = challenge1.getMethod("getSumOfDigits", int.class);
				linkedHashMap.put("SPECIFICATION 2", "SATISFIED: Method defined by the name getSumOfDigits");
			} catch (NoSuchMethodException | SecurityException e) {
				linkedHashMap.put("SPECIFICATION 2", "UNSATISFIED: No Method defined by the name getSumOfDigits");
			}
		} catch (ClassNotFoundException e) {
			linkedHashMap.put("SPECIFICATION 1", "UNSATISFIED: No Class defined by the name SumOfDigits");
		}
        
        challenge1 = null;
        loader = null;
   	
		return linkedHashMap;
	}
	 
	 public LinkedHashMap<String, String> runTestsonChallenge2(File pathToClassFile) {
			LinkedHashMap<String, String> linkedHashMap = new LinkedHashMap<String, String>();
			
			ClassLoader loader=null;
			
			try {
				loader = new URLClassLoader(new URL[]{pathToClassFile.toURI().toURL()});
			} catch (MalformedURLException e) {
				e.printStackTrace();
			}
			
			Class<?> challenge1 = null;
			
	        try {
				challenge1 = loader.loadClass("DifferenceOfDigits");
				linkedHashMap.put("SPECIFICATION 1", "SATISFIED: Class defined by the name DifferenceOfDigits");
				 
				Method method=null;
				try {
					method = challenge1.getMethod("getDifferenceOfDigits", int.class);
					linkedHashMap.put("SPECIFICATION 2", "SATISFIED: Method defined by the name getDifferenceOfDigits");
				} catch (NoSuchMethodException | SecurityException e) {
					linkedHashMap.put("SPECIFICATION 2", "UNSATISFIED: No Method defined by the name getDifferenceOfDigits");
				}
			} catch (ClassNotFoundException e) {
				linkedHashMap.put("SPECIFICATION 1", "UNSATISFIED: No Class defined by the name DifferenceOfDigits");
			}
	        
	        challenge1 = null;
	        loader = null;
	   	
			return linkedHashMap;
		}
}