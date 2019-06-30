<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, java.util.List, java.lang.Integer"%>

    <%@ page import="com.dao.ArticleCategoriesDAO" %>
    <%@ page import="com.dao.UsersDAO" %>
	<%@ page import="com.dataObjects.ArticleCategories" %>
	<%@ page import="com.dataObjects.User" %>
<%
	int current = (Integer)request.getAttribute("current");
	List<ArticleCategories> listArticleCategories = new ArrayList<>();
	listArticleCategories = ArticleCategoriesDAO.listArticleCategories();
%>

<%
	User user = new User();
	user = (User)session.getAttribute("user");

%>
<!-- Navigation -->
   <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="./index.jsp">Study abroad</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
          
            <li class="nav-item">
              <a class="nav-link <%if(current == 0) out.print("active"); %>" href="./index.jsp">Home
                <span class="sr-only">(current)</span>
              </a>
            </li>
            	
			<%	
			// Add article categories
			for(int i = 0; i < listArticleCategories.size(); i++){
			int Art_cat_id = listArticleCategories.get(i).getArt_cat_id();
			%>
		           <li class="nav-item">
		              <a class="nav-link <%if(current == Art_cat_id) out.print("active"); %>" href="./articles.jsp?category=<%= Art_cat_id %>"><%=listArticleCategories.get(i).getArt_cat_name() %></a>
		            </li>
			<%
			}
			String nameOrLogin = "";
			if(user!=null){
				nameOrLogin = user.getUser_fname() + " " + user.getUser_sname();
			}
			else{
				nameOrLogin = "Log in";
			}
			%>
			
			<li class="nav-item">
		        <a class="btn btn-default" data-toggle="modal"  <%if(user==null)out.write("data-target=\"#modalLogIn\""); %> href=""><%=nameOrLogin%></a>
		    </li>
		    <%if(user!=null){ %>
       		<li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="color:#007be9">
                  </a>
                  <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                  	<%if(user!=null&&user.getUser_role()==2){%>
                      <a class="dropdown-item" href="./content_editor_post.jsp">See my posts</a>
                      <a class="dropdown-item" href="./content_editor.jsp">Add new article</a>
                      <%}else if(user!=null&&user.getUser_role()==1){%>
                      <a class="dropdown-item" href="./content_manager_articles.jsp">See all posts</a>
                      <%}%>
                      <div class="dropdown-divider"></div>
                      <a class="dropdown-item" href="./login.jsp?logout=1">Log out</a>
                  </div>
			</li>
			<%} %>
          </ul>
        </div>
      </div>
    </nav>
    
<!--Modal-->

<div class="modal fade" id="modalLogIn" tabindex="-1" role="dialog" aria-labelledby="ModalLogInLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="ModalLabel">Login to StudyAbroad</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form method="post" action="./login.jsp">
                    <div class="form-group">
                        <label for="user_email" class="col-form-label">Email</label>
                        <input type="text" class="form-control" name="user_email" id="user_email" placeholder="Enter your username">
                    </div>
                    <div class="form-group">
                        <label for="user_password" class="col-form-label">Password</label>
                        <input type="password" class="form-control" name="user_password" id="user_password" placeholder="Enter your password">
                    </div>
                    <div class="form-group">
                        <input type="submit" class="btn btn-primary form-control" value="Login"></input>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <p>Not a member yet? <a href="./registration.jsp">Register</a>&emsp;<a href="#">Forgot Password?</a></p>
            </div>
        </div>
    </div>
</div>
<!--Modal End-->
