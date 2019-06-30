<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, java.util.List"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ page import="com.dao.ArticleCategoriesDAO" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<title>Study abroad</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/gijgo@1.9.10/js/gijgo.min.js" type="text/javascript"></script>
    <link href="https://cdn.jsdelivr.net/npm/gijgo@1.9.10/css/gijgo.min.css" rel="stylesheet" type="text/css" />
<link href="css/blog-home.css" rel="stylesheet">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

<script src='https://cloud.tinymce.com/stable/tinymce.min.js'></script>
<%
List<ArticleCategories> listCategories = new ArrayList<>();
listCategories = ArticleCategoriesDAO.listArticleCategories();
request.setAttribute("listCategories", listCategories);
%>
</head>
<body>
<%request.setAttribute("current", -1); %>
<%@ include file = "./statics/header.jsp"%>

<div class="page-header  text-center rounded" style="border: 1px solid #ced4da;">
    <h2>Welcome to Editor page!</h2>
    <small>Please fill in the form below for your new article. </small>
</div>
<!-- Form for editor-->

<form class="form-control" method="post" action="add_article.jsp" enctype = "multipart/form-data" id="form")>
    <div class="form-row">
        <div class="col form-group">
            <label class="mr-sm-2" for="artTitle">Article title</label>
            <input type="text" class="form-control mr-sm-2" name="art_title" id="artTitle" placeholder="Enter the name of article here." required>

        </div>
        <div class="col-2 form-group">
            <label class="mr-sm-2" for="artCategory">Article category</label>
            <select class="custom-select mr-sm-2" name="art_cat_fk" required>
                <option selected>Choose...</option>
                <c:forEach var="item" items="${listCategories}">
                	<option value="${item.art_cat_id}">${item.art_cat_name}</option>
                 </c:forEach>
            </select>
        </div>

        <div class="col-2 form-group">
            <label class="mr-sm-2" for="pubDate">Publishing date</label>
            <input type="text" name="art_pub_date" id="pubDate" required>
        </div>
        <div class="col-2 form-group">
            <label class="mr-sm-2" for="expiryDate">Expiration date</label>
            <input type="text" name="art_expire_date" id="expiryDate" required>
        </div>
    </div>
    <div class="form-row">
        <div class="col form">
            <div class="form-group">
                <label for="artText">Article </label>
                <textarea name="art_text" class="form-control" id="artText" rows="8"></textarea>
            </div>
        </div>

    </div>
   
    <label for="artImage">&nbsp; Upload article image</label>
    <input type="file" name="file" size = "50" class="form-control-file" id="artImage" required>
   
    <button type="submit" class="btn btn-primary mt-4" style="width: 100%;">Submit</button>
</form>
<br/>
<br/>


<!--Tiny MCE-->

<script>
    tinymce.init({
        selector: '#artText'
    });
    
    $(document).ready(function() {
		 $('#form').submit( function(event){
 				if($("#artText").val().length < 512){
 					alert("Too short body part");
 					event.preventDefault();
 				}
 			});
	});
 		
</script>

<!--Date type input-->
<script>
    $('#pubDate').datepicker({
    	format: 'yyyy-mm-dd',
        uiLibrary: 'bootstrap4'
    });
    $('#expiryDate').datepicker({
    	format: 'yyyy-mm-dd',
        uiLibrary: 'bootstrap4'
    });
</script>
</body>
</html>