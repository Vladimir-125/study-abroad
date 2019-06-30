<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, java.util.List"%>
<%@ page import="com.dao.ArticlesDAO" %>
<%@ page import="com.dao.ArticleCategoriesDAO" %>
<%@ page import="com.dataObjects.Article" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<%request.setAttribute("current", 0); %>
<%@ include file = "./statics/header.jsp"%>

<%	
 	int maxTextSize  = 250;
	int articlesPerCategoryLimit = 2;
 	
 	List<ArticleCategories> articleCategories = new ArrayList<>();
 	articleCategories = ArticleCategoriesDAO.listArticleCategories();
%>


<!-- Page Content -->
    <div class="container">

      <div class="row">

        <!-- Blog Entries Column -->
        <div class="col-md-8">

            
            <%for(int cat = 0; cat < articleCategories.size(); cat++ ){
 				List<Article> listLastArticles = new ArrayList<>();
 				listLastArticles = ArticlesDAO.listLastArticles(articleCategories.get(cat).getArt_cat_id(), articlesPerCategoryLimit);
			%> 
            <div class="row mb-6"> <!-- Sholarship -->
            <div class="d-flex justify-content-between" style="width:100%;"> <!-- Header -->
              <div class="m-4">
                <h3 ><%=articleCategories.get(cat).getArt_cat_name() %></h3>
              </div>
              <div class="m-4">
                <a href="./articles.jsp?category=<%=articleCategories.get(cat).getArt_cat_id()%>">See all</a>
              </div>
            </div>
      	<% for(int i = 0 ; i < listLastArticles.size(); i++){ %>
             <!-- Blog Post -->
              <div class="card mb-4">
                <div class="container">
                  <div class="row mb-4">
                    <div class="d-sm-none d-md-block col-md-4 mt-4">
                      <img class="card-img-top"  src="<%
                      if(listLastArticles.get(i).getArt_image()==null)
                    	  out.print("http://placehold.it/160x160");
                      else{
                    	 out.print(listLastArticles.get(i).getArt_image());
                      }
                    	  %>" alt="Card image cap" style="width: 160px; height:160px">
                    </div>
                    <div class="col-md-8"> <!-- card body start -->
                       <div class="card-body ">
                         <% 
                        String text;
                        if(listLastArticles.get(i).getArt_text().length()>maxTextSize){
                        	text = listLastArticles.get(i).getArt_text().substring(0,maxTextSize) + "...";
                        }else
                        {
                        	text = listLastArticles.get(i).getArt_text();
                        }
                        %>
                        <h2 class="card-title"><%=listLastArticles.get(i).getArt_title() %></h2>
                        <p class="card-text"><%=text %></p>
                        <a href="./article.jsp?art_id=<%=listLastArticles.get(i).getArt_id() %>" class="btn btn-primary btn-sm float-left">Read More &rarr;</a>

                       <div class="d-sm-none d-lg-inline text-muted ml-4">
                        <em>Posted on <%=listLastArticles.get(i).getArt_pub_date() %></em>
                       </div> <!-- Footer end -->
                      </div>
                    </div> <!-- card body end -->
                  </div>
                </div>
              </div>
              <!-- Blog Post End-->
		<% } // end of for loop %>
      
      	</div><!-- Sholarship End-->
      	<%}// end cat for loop %>
		

        </div>

        <%@ include file="/statics/sidebar.jsp" %>

      </div>
      <!-- /.row -->

    </div>
    <!-- /.container -->
    <%@ include file="/statics/footer.jsp" %>
</body>
</html>