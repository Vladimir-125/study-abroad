<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ page import="com.dataObjects.Article" %>
<%@ page import="com.dataObjects.User" %>
<%@ page import="com.dao.ArticlesDAO" %>
<%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import = "javax.servlet.http.*" %>
<%@ page import = "org.apache.commons.fileupload.*" %>
<%@ page import = "org.apache.commons.fileupload.disk.*" %>
<%@ page import = "org.apache.commons.fileupload.servlet.*" %>
<%@ page import = "org.apache.commons.io.output.*" %>
<%
   File file;
   int maxFileSize = 5000 * 1024;
   int maxMemSize = 5000 * 1024;
   // Uncommnet if you store to cloud
   //ServletContext context = pageContext.getServletContext();
   //String filePath = context.getInitParameter("file-upload");
   String filePath = application.getRealPath("/img/");
   Article article = new Article();
   System.out.println(filePath);
   // Verify the content type
   String contentType = request.getContentType();
   
   if ((contentType.indexOf("multipart/form-data") >= 0)) {
      DiskFileItemFactory factory = new DiskFileItemFactory();
      // maximum size that will be stored in memory
      factory.setSizeThreshold(maxMemSize);
      
      // Location to save data that is larger than maxMemSize.
      factory.setRepository(new File("c:\\temp"));

      // Create a new file upload handler
      ServletFileUpload upload = new ServletFileUpload(factory);
      
      // maximum file size to be uploaded.
      upload.setSizeMax( maxFileSize );
      
      try { 
         // Parse the request to get file items.
         List fileItems = upload.parseRequest(request);

         // Process the uploaded file items
         Iterator i = fileItems.iterator();
         
         int parameterCounter = 0;
         while ( i.hasNext () ) {
            FileItem fi = (FileItem)i.next();
            if ( !fi.isFormField () ) {
               // Get the uploaded file parameters
               String fieldName = fi.getFieldName();
               String fileName = Integer.toString(ArticlesDAO.getMaxId()) + ".jpg";
               boolean isInMemory = fi.isInMemory();
               long sizeInBytes = fi.getSize();
            
               // Write the file
               if( fileName.lastIndexOf("\\") >= 0 ) {
                  file = new File( filePath + 
                  fileName.substring( fileName.lastIndexOf("\\"))) ;
               } else {
                  file = new File( filePath + 
                  fileName.substring(fileName.lastIndexOf("\\")+1)) ;
               }
               fi.write( file ) ;
               out.println("Uploaded Filename: " + filePath + 
               fileName + "<br>");
            }else{ 
            	// Set all parapeters to article
                String fieldName = fi.getFieldName();
                String fieldValue = fi.getString();
            		
                if (fieldName.equals("art_title")) {
                    article.setArt_title(fieldValue);
                    parameterCounter++;
                } else if (fieldName.equals("art_cat_fk")) {
                    article.setArt_cat_fk(Integer.parseInt(fieldValue));
                    parameterCounter++;
                }else if (fieldName.equals("art_pub_date")) {
                    article.setArt_pub_date(fieldValue);
                    parameterCounter++;
                }else if (fieldName.equals("art_expire_date")) {
                    article.setArt_expire_date(fieldValue);
                    parameterCounter++;
                }else if (fieldName.equals("art_text")) {
                    article.setArt_text(fieldValue);
                    parameterCounter++;
                }
                
                // all parameters has been set
                if(parameterCounter==5){
                	User user = new User();
                	user = (User)session.getAttribute("user");
                	int user_id = user.getUser_id();
                	//System.out.println(user_id);
                	article.setArt_writer_user(user_id);
                	boolean isAdded = ArticlesDAO.addNewArticle(article);
                	if(isAdded){
                		%>
              				<script>
								alert('Added');
								window.history.back();
							</script>
                		<%
                	}else
                	{
                		%>
              				<script>
								alert('Not Added');
								window.history.back();
							</script>
                		<%
                	}
                }
            }
         }
      } catch(Exception ex) {
         System.out.println(ex);
      }
   } else {
%>
			<script>
				alert('No file uploaded');
				window.history.back();
			</script>
<%
   }
%>
