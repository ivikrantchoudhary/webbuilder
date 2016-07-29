<%@page import="com.Bean.PageLinkBean"%>
<%@page import="com.DAO.BasicPageLinkDAO"%>
<%@page import="com.Bean.ItemBean"%>
<%@page import="com.Bean.CategoryBean"%>
<%@page import="com.Bean.SubCategoryBean"%>
<%@page import="com.Bean.IndexPicsBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.Bean.PageBean"%>
<%@page import="com.Bean.PageAllowBean"%>
<%@page import="com.DAO.BasicPageAllowDAO"%>
<%@page import="com.DAO.BasicPageDAO"%>
<%@page import="com.DAO.ItemDAO"%>
<%@page import="com.DAO.CategoryDAO"%>
<%@page import="com.DAO.SubCategoryDAO"%>
<%@page import="com.DAO.IndexPicsDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.DAO.DragDAO"%>
<%@page import="com.Bean.DragBean"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    
    <link rel="stylesheet" href="scc/StyleSheet.css" />
    <link rel="stylesheet" href="scc/head_banner.css"/>
    <link rel="stylesheet" href="scc/styles.css" />
    <link rel="stylesheet" href="scc/nav.css"/>
    <link rel="stylesheet" href="scc/main.css"/>
    
    <link rel="shortcut icon" href="https://cdn.shopify.com/s/files/1/0695/9547/t/4/assets/favicon.png?5279289202530461212" type="image/png">
    
    <%
	
	DragBean dragBean = new DragBean();
	DragBean dragBean2 = new DragBean();
	DragBean dragBean3 = new DragBean();
	DragBean dragBean4 = new DragBean();
	DragBean dragBean5 = new DragBean();
	DragBean dragBean6 = new DragBean();
	DragBean dragBean7 = new DragBean();
	DragBean dragBean8 = new DragBean();
	DragBean dragBean9 = new DragBean();
	DragBean dragBean10 = new DragBean();
	DragBean dragBean11 = new DragBean();
	DragBean dragBean12 = new DragBean();
	
	DragDAO dragDAO = new DragDAO();
	dragBean=dragDAO.fetchDragItem(13);
	dragBean2=dragDAO.fetchDragItem(14);
	dragBean3=dragDAO.fetchDragItem(15);
	dragBean4=dragDAO.fetchDragItem(16);
	dragBean5=dragDAO.fetchDragItem(17);
	dragBean6=dragDAO.fetchDragItem(18);
	dragBean7=dragDAO.fetchDragItem(19);
	dragBean8=dragDAO.fetchDragItem(20);
	dragBean9=dragDAO.fetchDragItem(21);
	dragBean10=dragDAO.fetchDragItem(22);
	dragBean11=dragDAO.fetchDragItem(23);
	dragBean12=dragDAO.fetchDragItem(24);
	
	float xpos= dragBean.getXpos();
	float ypos= dragBean.getYpos();
	
	float xpos2= dragBean2.getXpos();
	float ypos2= dragBean2.getYpos();
	
	float xpos3= dragBean3.getXpos();
	float ypos3= dragBean3.getYpos();
	
	float xpos4= dragBean4.getXpos();
	float ypos4= dragBean4.getYpos();
	
	float xpos5= dragBean5.getXpos();
	float ypos5= dragBean5.getYpos();
	
	float xpos6= dragBean6.getXpos();
	float ypos6= dragBean6.getYpos();
	
	float xpos7= dragBean7.getXpos();
	float ypos7= dragBean7.getYpos();
	
	float xpos8= dragBean8.getXpos();
	float ypos8= dragBean8.getYpos();
	
	float xpos9= dragBean9.getXpos();
	float ypos9= dragBean9.getYpos();
	
	float xpos10= dragBean10.getXpos();
	float ypos10= dragBean10.getYpos();
	
	float xpos11= dragBean11.getXpos();
	float ypos11= dragBean11.getYpos();
	
	float xpos12= dragBean12.getXpos();
	float ypos12= dragBean12.getYpos();

	%>

    <style type="text/css">
<!--
#dg {
 cursor:pointer;
 position: absolute;
 top: <%=ypos%>%;
 left: <%=xpos%>%;
}

#dr {
 cursor:pointer;
 position: absolute;
 top: <%=ypos2%>%;
 left: <%=xpos2%>%;
}

#dt {
 cursor:pointer;
 position: absolute;
 top: <%=ypos3%>%;
 left: <%=xpos3%>%;
}

#ab {
 cursor:pointer;
 position: absolute;
 top: <%=ypos4%>%;
 left: <%=xpos4%>%;
}

#ac {
 cursor:pointer;
 position: absolute;
 top: <%=ypos5%>%;
 left: <%=xpos5%>%;
}

#ad {
 cursor:pointer;
 position: absolute;
 top: <%=ypos6%>%;
 left: <%=xpos6%>%;
}

#ae {
 cursor:pointer;
 position: absolute;
 top: <%=ypos7%>%;
 left: <%=xpos7%>%;
}

#af {
 cursor:pointer;
 position: absolute;
 top: <%=ypos8%>%;
 left: <%=xpos8%>%;
}

#ag {
 cursor:pointer;
 position: absolute;
 top: <%=ypos9%>%;
 left: <%=xpos9%>%;
}

#ah {
 cursor:pointer;
 position: absolute;
 top: <%=ypos10%>%;
 left: <%=xpos10%>%;
}

#ai {
 cursor:pointer;
 position: absolute;
 top: <%=ypos11%>%;
 left: <%=xpos11%>%;
}

#aj {
 cursor:pointer;
 position: absolute;
 top: <%=ypos12%>%;
 left: <%=xpos12%>%;
}

--></style>


	
    <link rel="stylesheet" type="text/css" href="engine1/style.css" />
    <script type="text/javascript" src="engine1/jquery.js"></script>

	<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="js/jquery-ui.min.js"></script>
	

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
    <!-- Latest compiled and minified JavaScript -->
    
    <script type="text/javascript" src="scc/script.js"></script>
    
    <!-- Start Slider HEAD section -->
	<link rel="stylesheet" type="text/css" href="engine1/style.css" />
	


	
	
</head>
<body>
    
      <%
  
  String Upload_Directory="C:/Users/db2admin/workspace/Code/WebContent/Upload_Directory/";
  IndexPicsDAO indexPicsDAO = new IndexPicsDAO();
  SubCategoryDAO subCategoryDAO = new SubCategoryDAO();
  CategoryDAO categoryDAO = new CategoryDAO();
  ItemDAO itemDAO = new ItemDAO();
  BasicPageDAO basicPageDAO = new BasicPageDAO();
  BasicPageAllowDAO basicPageAllowDAO = new BasicPageAllowDAO();
  BasicPageLinkDAO basicPageLinkDAO = new BasicPageLinkDAO();

  PageLinkBean pageLinkBean = basicPageLinkDAO.getPageItemDetail(2);
  PageAllowBean pageAllowBean = basicPageAllowDAO.getPageItemDetail(2);
  PageBean pageBean = basicPageDAO.getPageItemDetail(pageAllowBean.getPage_id());
  ArrayList<IndexPicsBean> list_index= indexPicsDAO.showIndexPics();
  ArrayList<SubCategoryBean> list_subcat= subCategoryDAO.showSubCategory();
  ArrayList<CategoryBean> list_cat= categoryDAO.showCategory();
  ArrayList<ItemBean> list_item= itemDAO.showItem();
  
  String logoURL = Upload_Directory + pageBean.getLogoURL();
  String adURL = Upload_Directory + pageBean.getAdURL();
  
  %>
  
        <div class="header-bar">
            <div class="wrapper medium-down--hide">
                <div class="large--display-table">
                    <div class="header-bar__left large--display-table-cell">
                    <%
                            	if(pageAllowBean.getCompanyLine() ==1)
                            	{
                            %>
						<div id="dr">
                        <div  class="header-bar__module header-bar__message">
                            <%=pageBean.getCompanyLine() %>
                        </div>
                        </div>
                        <%
                            	}
                        %>

                    </div>

                    <div class="header-bar__right large--display-table-cell">
                    <%
                            	if(pageAllowBean.getCart() ==1)
                            	{
                            %>
                        <div class="header-bar__module">
                            <a href="<%=pageLinkBean.getCart() %>" class="cart-toggle">
                                <span class="icon icon-cart header-bar__cart-icon" aria-hidden="true"></span>
                                <%=pageBean.getCart() %>
                                
                            </a>
                        </div>

						<%
                            	}
                            	if(pageAllowBean.getLogin() ==1)
                            	{
                            %>
                        <span class="header-bar__sep" aria-hidden="true">|</span>
                        <ul class="header-bar__module header-bar__module--list">

                            <li>
                                <a href="<%=pageLinkBean.getLogin() %>" id="customer_login_link"><%=pageBean.getLogin() %></a>
                            </li>

                        </ul>

						<%
                            	}
                            	if(pageAllowBean.getSearch() ==1)
                            	{
                            %>


                        <div class="header-bar__module header-bar__search" id="ae">
                            <form action="SearchServlet" method="get" role="search">

                                <input name="query" aria-label="Search our store" class="header-bar__search-input" type="search">
                                <button type="submit" class="btn icon-fallback-text header-bar__search-submit">
                                    <span class="icon icon-search" aria-hidden="true"></span>
                                    <span class="fallback-text"><%=pageBean.getSearch() %></span>
                                </button>
                            </form>
                        </div>
                        <%
                            	}
                        %>

                    </div>
                </div>
            </div>
            </div>
    <header class="site-header" role="banner">
        <div class="wrapper">

            <div class="grid--full large--display-table">
                <div class="grid__item large--one-third large--display-table-cell">
					
					<%
                            	if(pageAllowBean.getLogoURL() ==1)
                            	{
                            %>
					<div id="dg">
                    <h1 class="site-header__logo large--left" itemscope="" itemtype="http://schema.org/Organization">


                        <a href="<%=pageLinkBean.getLogoURL() %>" itemprop="url" >
                            <img src="<%=logoURL %>" alt="MonitoringUp" itemprop="logo" id="">
                        </a>

                    </h1>
                    </div>
                    <%
                            	}
                    %>
        <p class="header-message large--hide">
        
                        <small>Free shipping on orders over $150</small>
                    </p>
                    <div id="dt">
                    <nav id="primary_nav_wrap">
                        <ul>
                        <%
                            	if(pageAllowBean.getHome() ==1)
                            	{
                            %>
                            <li class="current-menu-item">
                            	<a href="<%=pageLinkBean.getHome() %>"><%=pageBean.getHome() %></a></li>
                            <%
                            	}
                            	if(pageAllowBean.getCatalog() ==1)
                            	{
                            %>
                            <li>
                                <a href="<%=pageLinkBean.getCatalog() %>"><%=pageBean.getCatalog() %></a>
                                <ul>
                                	<%
  		for(int i=0;i<list_cat.size();i++){
			CategoryBean categoryBean = (CategoryBean) list_cat.get(i);
			String martop="";
			if(i==0)
				martop="margin-top:-40px;";
				
 		 %>
                                    <li style="margin-left: 100px;<%=martop%>"><a href="collection.jsp?category_id=<%=categoryBean.getCategory_Id()%>"><%=categoryBean.getCategoryName()%></a></li>
                                    <%
  		}
                                    %>
                                    
                                 </ul>   
                            </li>
                            <%
                            	}
                            	if(pageAllowBean.getContactUs() ==1)
                            	{
                            %>
                            <li><a href="<%=pageLinkBean.getContactUs() %>"><%=pageBean.getContactUs() %></a></li>
                            <%
                            	}
                            %>
                        </ul>
                    </nav>
                    </div>

                </div>
            </div>

                </div>
    </header>

    <main class="wrapper main-content" role="main">
        <div class="grid">

            <div class="grid__item large--one-fifth medium-down--hide">

                <%
                            	if(pageAllowBean.getShopFor() ==1)
                            	{
                            %>

                <nav class="sidebar-module" id="ac">

                    <div class="section-header">
                        <p class="section-header__title h4"><%=pageBean.getShopFor() %></p>
                    </div>
                    
                    <ul class="sidebar-module__list">

 <%
		      for(int i=0;i<list_cat.size();i++){
				CategoryBean categoryBean = (CategoryBean) list_cat.get(i);
 		 %>
                        <li class="sidebar-sublist">
                            <div class="sidebar-sublist__trigger-wrap">
                                <a href=""collection.jsp?category_id=<%=categoryBean.getCategory_Id()%>" " class="sidebar-sublist__has-dropdown ">
                                    <%=categoryBean.getCategoryName()%>
                                </a>

                            </div>
                            
                        </li>
				<%
		      }
				%>

                       
                    </ul>
                </nav>

				<%
		      }
                            	if(pageAllowBean.getShopBy() ==1)
                            	{
                            %>
                <nav class="sidebar-module" id="ad">
                    <div class="section-header">
                        <p class="section-header__title h4"><%=pageBean.getShopBy() %></p>
                    </div>
                    <ul class="sidebar-module__list">
<%
    	for(int i=0;i<list_subcat.size();i++){
			SubCategoryBean subCategoryBean = (SubCategoryBean) list_subcat.get(i);
			%>
                        <li class=""><a href="index.jsp"><%=subCategoryBean.getName() %></a></li>

              <%
    	}
              %>


                    </ul>

                </nav>
				<%
                            	}
				%>



				<%
                            	if(pageAllowBean.getSpecialOffers() ==1)
                            	{
                            %>
                <nav class="sidebar-module">
                    <div class="section-header">
                        <p class="section-header__title h4"><%=pageBean.getSpecialOffers() %></p>
                    </div>
                    <div>
                        <p><a href="<%=pageLinkBean.getAdURL() %>"><img src="<%=adURL %>" width="20" height="20" style="display: none !important; visibility: hidden !important; opacity: 0 !important; background-position: 1px 1px;"></a></p>
                    </div>
                </nav>
                <%
                            	}
                %>



            </div>

      
            <div class="grid__item large--four-fifths">

                <div class="flexslider" id="ab">

                    <div style="overflow: hidden; position: relative; height: 400px;" class="flex-viewport">
                       <!-- Start Slider BODY section -->
		<div id="wowslider-container1">
		<div class="ws_images"><ul>
		<%
			for(int i=0;i<2;i++){
				IndexPicsBean indexPicsBean = (IndexPicsBean) list_index.get(i);
				String imgURL=Upload_Directory+indexPicsBean.getImgURL();

		%>
		<li><img src="<%=imgURL %>" alt="bootstrap slider" title="<%=indexPicsBean.getHeading() %>" id="wows1_<%=i%>"/></li>
		<%
			}
		%>
		</ul>
		</div>
		<div class="ws_bullets"><div>
		<%
			for(int i=0;i<2;i++){
				IndexPicsBean indexPicsBean = (IndexPicsBean) list_index.get(i);
				String imgURL=Upload_Directory+indexPicsBean.getImgURL();

		%>
		<a href="#" title="<%=indexPicsBean.getHeading() %>"><span><img src="<%=imgURL %>" alt="slide_1"/><%=i+1 %></span></a>
		<%
			}
		%>
		</div></div><div class="ws_script" style="position:absolute;left:-99%"></div>
		<div class="ws_shadow"></div>
		</div>	
		<script type="text/javascript" src="engine1/wowslider.js"></script>
		<script type="text/javascript" src="engine1/script.js"></script>
		<!-- End Slider BODY section -->

                    </div>
                    </div>


                <hr class="hr--clear">
                <div id="af">
                <div class="section-header section-header--large" >
                    <h2 class="section-header__title--left section-header__title h4">Featured Collections</h2>
                    <div class="section-header__link--right medium-down--hide">
                        <a href="CollectionServlet" title="Browse our  collection">View all Collections</a>
                    </div>
                </div>

                <div class="grid-uniform grid-link__container">
<%
	for(int i=0;i<3;i++){
		CategoryBean categoryBean = (CategoryBean) list_cat.get(i);
		String imgURL=Upload_Directory+categoryBean.getImgURL();
%>
                    <div class="grid__item medium-down--one-half one-third text-center">


                        <a href="collection.jsp?category_id=<%=categoryBean.getCategory_Id() %>" title="Browse our <%=categoryBean.getCategoryName() %> collection" class="grid-link--focus">
                            <span  class="grid-link__image grid-link__image--collection">
                                <span   class="grid-link__image-centered">

                                    <img height=150px width=200px src="<%=imgURL %>" alt="<%=categoryBean.getCategoryName()%>">

                                </span>
                            </span>
                            <p class="grid-link__title"><%=categoryBean.getCategoryName() %></p>

                            <p class="grid-link__meta"><small></small></p>

                        </a>

                    </div>
                   <%
	}
                   %>

                </div>
                <small class="view-more">
                    <a href="CollectionServlet" title="Browse our Storage collection">View all Collections</a>
                </small>
</div>



                <hr class="hr--clear">



<div id="ag">

                <div class="section-header section-header--large">
                    <h2 class="section-header__title--left section-header__title h4">

                        Featured Items

                    </h2>
                    <div class="section-header__link--right medium-down--hide">
                        <a href="ItemServlet" title="Browse all items in the collection">View all Items</a>
                    </div>
                </div>

                <div class="grid-uniform grid-link__container">
<%
	for(int i=0;i<list_item.size();i++){
		ItemBean itemBean = (ItemBean) list_item.get(i);
		String imgURL=Upload_Directory+itemBean.getImgURL();
%>
                    <div class="grid__item medium-down--one-half large--one-quarter">
                        <a href="productDetail.jsp?item_id=<%=itemBean.getItem_id() %>" class="grid-link">
                            <span style="height: 208px;" class="grid-link__image grid-link__image--product">


                                <span class="grid-link__image-centered">
                                    <img height=150px width=180px src="<%=imgURL %>" alt="<%=itemBean.getName()%>">
                                </span>
                            </span>
                            <p class="grid-link__title"><%=itemBean.getName()%></p>
                            <p class="grid-link__meta">

                                <strong>$<%=itemBean.getPrice() %></strong>

                            </p>
                        </a>
                    </div>
                    
                    
<%
	if(i%3==0)
	{
	%>
	</br>
		<%
	}
	
	}
%>
     
                </div>
                <small class="view-more">
                    <a href="ItemServlet" title="Browse our Storage collection">View all Items</a>
                </small>
</div>



                <hr class="hr--clear">

                




            </div>
    </main>
    
    <hr class="hr--clear">
    
    <footer class="site-footer small--text-center" role="contentinfo">

        <div class="wrapper">

            <div class="grid-uniform ">









<div id="ah">

                <div class="grid__item large--one-quarter medium--one-half">
                	<%
                            	if(pageAllowBean.getQuickLinks() ==1)
                            	{
                            %>
                    <h4><%=pageBean.getQuickLinks() %></h4>
                    <%
                            	}
                    %>
                    <ul class="site-footer__links">

<%
                            	if(pageAllowBean.getfContactUs() ==1)
                            	{
                            %>
                        <li><a href="<%=pageLinkBean.getContactUs() %>"><%=pageBean.getContactUs() %></a></li>
                        <%
                            	}
                            	if(pageAllowBean.getfSearch() ==1)
                            	{
                            %>

                        <li><a href="<%=pageLinkBean.getSearch() %>"><%=pageBean.getSearch() %></a></li>
                        <%
                            	}
                            	if(pageAllowBean.getfAboutUs() ==1)
                            	{
                            %>

                        <li><a href="<%=pageLinkBean.getAboutUs() %>"><%=pageBean.getAboutUs() %></a></li>
						
						<%
                            	}
						%>
                    </ul>
                </div>
</div>

<div id="ai">
                <div class="grid__item large--one-quarter medium--one-half">

                <%
                            	if(pageAllowBean.getGetConnected() ==1)
                            	{
                            %>
                    <h4><%=pageBean.getGetConnected() %></h4>

                    <ul class="inline-list social-icons">

                        <li>
                            <a class="icon-fallback-text" href="https://twitter.com/vikrantlpu" title="Code on Twitter">
                                <span class="icon icon-twitter" aria-hidden="true"></span>
                                <span class="fallback-text"><img alt="twitter" src="C:/Users/db2admin/workspace/WebBuilder/WebContent/Upload_Directory/twitter.png"></span>
                            </a>
                        </li>


                        <li>
                            <a class="icon-fallback-text" href="https://www.facebook.com/vikrant.choudhary.75839" title="Code on Facebook">
                                <span class="icon icon-facebook" aria-hidden="true"></span>
                                <span class="fallback-text"><img alt="facebook" src="C:/Users/db2admin/workspace/WebBuilder/WebContent/Upload_Directory/twitter.png"> </span>
                            </a>
                        </li>

                    </ul>
                    <%
                            	}
                    %>
                </div>
</div>

<div id="aj">
                <div class="grid__item large--one-quarter medium--one-half">
                <%
                            	if(pageAllowBean.getfContactUs() ==1)
                            	{
                            %>
                    <h4><%=pageBean.getContactUs() %></h4>
                    <div class="rte">
                        <%=pageBean.getPhNo() %><br>
                        <a href="#"><%=pageBean.getEmail() %></a><br>
                        <%=pageBean.getAddress1() %><br>
                        <%=pageBean.getAddress2() %><br>
                    </div>
                    <%
                            	}
                    %>
                </div>
          </div>



                <div class="grid__item large--one-quarter medium--one-half">
                <%
                            	if(pageAllowBean.getNewsletter() ==1)
                            	{
                            %>
                    <h4><%=pageBean.getNewsletter() %></h4>
                    <p><%=pageBean.getSignupPromo() %></p>


                    <form action="#" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" target="_blank" class="small--hide">
                        <input placeholder="your-email@example.com" name="EMAIL" id="mail" aria-label="your-email@example.com" autocorrect="off" autocapitalize="off" type="email">
                        <input class="btn" name="subscribe" id="subscribe" value="Subscribe" type="submit">
                    </form>
                    <form action="#" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" target="_blank" class="large--hide medium--hide input-group">
                        <input placeholder="your-email@example.com" name="EMAIL" id="mail" class="input-group-field" aria-label="your-email@example.com" autocorrect="off" autocapitalize="off" type="email">
                        <span class="input-group-btn">
                            <input class="btn" name="subscribe" id="subscribe" value="Subscribe" type="submit">
                        </span>
                    </form>
					<%
                            	}
					%>
                </div>

            </div>
            

            <hr>

            <div class="grid">

			<ul>
			<li>
			<%
                            	if(pageAllowBean.getCopyright() ==1)
                            	{
                            %>
                    <div class="site-footer__links" align="left"><%=pageBean.getCopyright() %></div>
                            
            <%
                            	}
                            	if(pageAllowBean.getPoweredBy() ==1)
                            	{
                            %>
                                <a href="<%=pageLinkBean.getPoweredBy() %>" rel="nofollow" target="_blank" ><div align="right"><%=pageBean.getPoweredBy() %></div></a>
                                <%
                            	}
                                %>
			</li>
			</ul>
            </div>

        </div>

    </footer>
            </body>
</html>
    