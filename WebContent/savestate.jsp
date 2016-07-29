<%@page import="com.DAO.DragDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
		String xpos = request.getParameter("xposform");
		String ypos = request.getParameter("yposform");
		String sid = request.getParameter("id");
		
		
		float x = Float.parseFloat(xpos);
		float y = Float.parseFloat(ypos);
		
		
		int id=25;
		if(sid.equalsIgnoreCase("dg"))
		{
			id=13;
		}
		else if(sid.equalsIgnoreCase("dr"))
		{
			id=14;
		}
		else if(sid.equalsIgnoreCase("dt"))
		{
			id=15;
		}
		else if(sid.equalsIgnoreCase("ab"))
		{
			id=16;
		}
		else if(sid.equalsIgnoreCase("ac"))
		{
			id=17;
		}
		else if(sid.equalsIgnoreCase("ad"))
		{
			id=18;
		}
		else if(sid.equalsIgnoreCase("ae"))
		{
			id=19;
		}
		else if(sid.equalsIgnoreCase("af"))
		{
			id=20;
		}
		else if(sid.equalsIgnoreCase("ag"))
		{
			id=21;
		}
		else if(sid.equalsIgnoreCase("ah"))
		{
			id=22;
		}
		else if(sid.equalsIgnoreCase("ai"))
		{
			id=23;
		}
		else if(sid.equalsIgnoreCase("aj"))
		{
			id=24;
		}
	
		
	%>

	<%
		DragDAO dragDAO = new DragDAO();
		dragDAO.updateDragItem(id, x, y);
	
		//response.sendRedirect("di2.jsp");
	
	%>

</body>
</html>