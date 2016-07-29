<%@page import="com.Bean.PageBean"%>
<%@page import="com.DAO.BasicPageDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html style="" class=" supports-js supports-no-touch supports-csstransforms supports-csstransforms3d supports-fontface"><!--<![endif]--><head>

<body>

<%
	BasicPageDAO basicPageDAO = new BasicPageDAO();
	PageBean pageBean = basicPageDAO.getPageItemDetail(2);
%>
      
	<div class="grid__item large--four-fifths">
	    <div class="grid">

  			<div class="grid__item large--one-half small--text-center">

    		<div id="CustomerLoginForm">
      			<form accept-charset="UTF-8" action="ChangeLinkServlet" id="customer_login" method="post">
      				<input name="form_type" type="hidden" value="customer_login" />

        			<div class="section-header section-header--large">
          				<h1 class="section-header__title">Admin Panel</h1>
        			</div>
        			
        			<input type="hidden" value="" name="process" id="CustomerPassword"  >
        			
        			<label for="CustomerEmail" class="label--hidden">New Data (Optional) : </label>
          			<input type="text" value="" name="value" id="CustomerPassword" placeholder="Your New Look..." >
          			
          			<label for="CustomerEmail" class="label--hidden">New Link (Optional) : </label>
          			<input type="text" value="" name="link" id="CustomerPassword" placeholder="New Link" >

			        <p>
          				<input type="submit" class="btn" value="Apply Changes">
        			</p>
        
			        <a href="newAdminIndex.jsp">Return to Store</a>

      			</form>
    		</div>

  			</div>

		</div>

    </div>
  
</body>

</html>