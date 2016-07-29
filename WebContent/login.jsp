<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html style="" class=" supports-js supports-no-touch supports-csstransforms supports-csstransforms3d supports-fontface"><!--<![endif]--><head>

<body>

      
	<div class="grid__item large--four-fifths">
	    <div class="grid">

  			<div class="grid__item large--one-half small--text-center">

    		<div id="CustomerLoginForm">
      			<form accept-charset="UTF-8" action="LoginServlet" id="customer_login" method="post">
      				<input name="form_type" type="hidden" value="customer_login" />

        			<div class="section-header section-header--large">
          				<h1 class="section-header__title">Login</h1>
        			</div>

        

        			<label for="CustomerEmail" class="label--hidden">Email</label>
        			<input type="email" name="user_email" id="CustomerEmail" placeholder="Email" autocorrect="off" autocapitalize="off" autofocus>
        
          			<label for="CustomerPassword" class="label--hidden">Password</label>
          			<input type="password" value="" name="user_password" id="CustomerPassword" placeholder="Password" >

          			<p>
            			<a href="#" >Forgot your password?</a>
          			</p>

			        <p>
          				<input type="submit" class="btn" value="Sign In">
        			</p>
        
          			<p>
            			<a href="signup.jsp" id="customer_register_link">Create account</a>
          			</p>
        
			        <a href="index.jsp">Return to Store</a>

      			</form>
    		</div>

  			</div>

		</div>

    </div>
    
   <script>
  	/*
	    Show/hide the recover password form when requested.
  	*/

  	function hideRecoverPasswordForm() {
    	document.getElementById('RecoverPasswordForm').style.display = 'none';
    	document.getElementById('CustomerLoginForm').style.display = 'block';
  	}
  
	</script>
  
</body>

</html>