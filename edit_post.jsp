<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, java.util.List"%>
<%@ page import="com.dao.ArticlesDAO" %>
<%@ page import="com.dataObjects.Article" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<title>Study abroad</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
 <link href="css/blog-home.css" rel="stylesheet">
</head>
<body>
<%request.setAttribute("current", -1); %>
<%@ include file = "/statics/header.jsp" %>

<%	
	// get article id
	int art_id = 9;//Integer.parseInt(request.getParameter("art_id"));
	Article article = new Article();
	
	// get article by given id
	article = ArticlesDAO.getArticle(art_id);
%>


		<!-- Page Content -->
   	 <div class="container">

      <div class="row">

        <!-- Blog Entries Column -->
        <div class="col-md-8">

         <div class="row mb-6"> <!-- Article -->
            
            <div class="d-flex justify-content-between" style="width:100%;"> <!-- Header -->
              <div class="m-4">
                <h3 ><%=article.getArt_title() %></h3>
              </div>
              <div class="m-4">
                <p class="font-weight-light"><%=article.getArt_views() %> Views</p>
              </div>
            </div>
            
             <!-- Blog Post -->
              <div class="card mb-4">
                <div class="container">
                  <div class="row mb-4">
                      <img class="card-img-top"  src="<%
                      if(article.getArt_image()==null) // add placeholder if article doesn't have an image
                    	  out.print("http://placehold.it/400x250");
                      else{ // print image
                    	 out.print(article.getArt_image());
                      }
                    	  %>" alt="Card image cap" style="height:250px">
                       <div class="card-body ">
                       <form>
                       	<input type="text" id="title"/>
                
                       	<textarea id="mytextarea"></textarea>
                       </form>
                        <!--  <h2 class="card-title"><%=article.getArt_title() %></h2>
                        <p class="card-text"><%=article.getArt_text() %></p>-->
                       <div class="d-sm-none d-lg-inline text-muted ml-4">
                        <em>Posted on <%=article.getArt_pub_date() %></em>
                       </div> <!-- Footer end -->
                      </div>
                  </div>
                </div>
              </div>
              <!-- Blog Post End-->

            </div><!-- Arricle End-->
<script>
	$( document ).ready(function() {
		 var title = <%=article.getArt_title() %> ;
		 var text = <%=article.getArt_text() %> ;
		 $('#title').val(title);
		 $('#mytextarea').val(title);
		});

</script>
		

        </div>

        <%@ include file="/statics/sidebar.jsp" %>

      </div>
      <!-- /.row -->

    </div>
    <!-- /.container -->
    <%@ include file="/statics/footer.jsp" %>
</body>
</html>