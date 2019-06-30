<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, java.util.List"%>
<%@ page import="com.dao.ArticlesDAO" %>
<%@ page import="com.dao.ArticleCategoriesDAO" %>
<%@ page import="com.dataObjects.Article" %>
<%@ page import="com.dataObjects.User" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<title>Study abroad</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
 <link href="css/blog-home.css" rel="stylesheet">
</head>
<body>

<%	
	int pageId;
	int start;
	int end;
	int postsPerPage = 5;
 	int maxTextSize  = 250;

	// get current page
	if(request.getParameter("page")==null){
		pageId = 1;
	}else{
		String spageId = request.getParameter("page");
		pageId = Integer.parseInt(spageId);
		if(pageId<=1)
			pageId = 1;
	}

	if(pageId<=1){
		start = 0;
	}  
	else{  
   		start = (pageId-1) * postsPerPage;  
	}  

 	List<Article> listLastPosts = new ArrayList<>();
 	
 	listLastPosts = ArticlesDAO.listAllPosts(start, postsPerPage);

%>
 <%request.setAttribute("current", -1); %>
<%@ include file = "/statics/header.jsp" %>
<!-- Page Content -->
    <div class="container">

      <div class="row">

        <!-- Blog Entries Column -->
        <div class="col-md-8">

            <div class="row mb-6"> <!-- Sholarship -->
            
            <div class="d-flex justify-content-between" style="width:100%;"> <!-- Header -->
              <div class="m-4">
                <h3> View Last Posts</h3>
              </div>
            </div>
      	<% for(int i = 0 ; i < listLastPosts.size(); i++){ %>
             <!-- Blog Post -->
              <div class="card mb-4 ">
                <div class="container">
                  <div class="row mb-4">
                    <div class="d-sm-none d-md-block col-md-4 mt-4">
                      <img class="card-img-top"  src="<%
                      if(listLastPosts.get(i).getArt_image()==null)
                    	  out.print("http://placehold.it/160x160");
                      else{
                    	 out.print(listLastPosts.get(i).getArt_image());
                      }
                    	  %>" alt="Card image cap" style="width: 160px; height:160px">
                    </div>
                    <div class="col-md-8"> <!-- card body start -->
                       <div class="card-body ">
                        <h2 class="card-title"><%=listLastPosts.get(i).getArt_title() %></h2>
                        <% 
                        String text;
                        if(listLastPosts.get(i).getArt_text().length()>maxTextSize){
                        	text = listLastPosts.get(i).getArt_text().substring(0,maxTextSize) + "...";
                        }else
                        {
                        	text = listLastPosts.get(i).getArt_text();
                        }
                        %>
                        <p class="card-text"><%=text %></p>
                        <a href="./content_manager_article.jsp?art_id=<%=listLastPosts.get(i).getArt_id() %>" class="btn btn-primary btn-sm float-left">Read & Edit &rarr;</a>

                       <div class="d-sm-none d-lg-inline text-muted ml-4">
                       <em>Author: <%
                       User author = new User();
                       author = UsersDAO.getUserById(listLastPosts.get(i).getArt_writer_user());
                       System.out.println(listLastPosts.get(i).getArt_writer_user());
                       out.write(author.getUser_fname() + " " + author.getUser_sname());
                       %></em>
                        <em>IsPosted:<%if(listLastPosts.get(i).getIs_posted()==true)out.write("True");else out.write("False"); %></em>
                       </div> <!-- Footer end -->
                      </div>
                    </div> <!-- card body end -->
                  </div>
                </div>
              </div>
              <!-- Blog Post End-->
		<% } // end of for loop %>
      
      	</div>
      	<ul class="pagination justify-content-center mb-4">
            <li class="page-item">
              <a class="page-link" href="./content_manager_articles.jsp?page=<%=pageId-1%>">← Newer</a>
            </li>
            <li class="page-item ">
              <a class="page-link" href="./content_manager_articles.jsp?page=<%=pageId+1%>">Older →</a>
            </li>
        </ul>

        </div>


        <%@ include file="/statics/sidebar.jsp" %>

      </div>
      <!-- /.row -->

    </div>
    <!-- /.container -->
    <%@ include file="/statics/footer.jsp" %>
</body>
</html>