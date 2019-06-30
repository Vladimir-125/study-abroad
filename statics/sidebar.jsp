<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, java.util.List"%>
	<%@ page import="com.dao.ArticlesDAO" %>
	<%@ page import="com.dataObjects.Article" %>

<!-- Sidebar Widgets Column -->
        <div class="d-sm-none d-md-block col-md-4 bg-grey mt-4">
            <h3 class="mb-4">Top readings</h3>
<%

	int maxSideBarTextSize  = 100;
	List<Article> listTopReading = new ArrayList<>();
	listTopReading = ArticlesDAO.listTopReading();
	
	for(int i = 0; i < listTopReading.size(); i++){
%>		
		<!-- Side Widget -->
          <div class="card mb-3">
            <div class="row p-3">
              <div class="col-sm-12 col-md-12 col-lg-6 mt-4">
                <img class="card-img-left" src="<%
                      if(listTopReading.get(i).getArt_image()==null)
                    	  out.print("http://placehold.it/140x140");
                      else{
                    	 out.print(listTopReading.get(i).getArt_image());
                      }
                    	  %>" alt="Card image cap" style="width: 140px; height:140px"> 
              </div>
              <div class="col-sm-12 col-md-12 col-lg-6  my-4">
                <div class="card-body p-0">
                  <h5 class="card-title"><a href="./article.jsp?art_id=<%=listTopReading.get(i).getArt_id() %>" class="card-link text-dark"><%=listTopReading.get(i).getArt_title() %></a></h5>
                  <h6 class="card-subtitle text-muted" style="font-size:0.8rem;">Category: <a href="./articles.jsp?category=<%=listTopReading.get(i).getArt_cat_fk() %>" class="card-link" style="font-size:0.8rem;"><%=listTopReading.get(i).getArt_cat_name() %></a></h6>
                  <p><%=listTopReading.get(i).getArt_text().substring(0,maxSideBarTextSize) + "..." %></p> 
                </div>
              </div>
            </div>
          </div>
<%} %>
        </div>