package com.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.BasicPageDAO;
import com.DAO.BasicPageLinkDAO;

/**
 * Servlet implementation class ChangeLinkServlet
 */
@WebServlet("/ChangeLinkServlet")
public class ChangeLinkServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    BasicPageDAO basicPageDAO = new BasicPageDAO();
    BasicPageLinkDAO basicPageLinkDAO = new BasicPageLinkDAO();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangeLinkServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		BasicPageDAO basicPageDAO = new BasicPageDAO();
		basicPageDAO.resetPage();
		response.sendRedirect("newAdminIndex.jsp");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String process = request.getParameter("process");
		String value = request.getParameter("value");
		String link = request.getParameter("link");
		
		if(link!=null)
		{
			basicPageLinkDAO.updatePageItem(process, link);
		}
		
		if(value!=null)
		{
			basicPageDAO.updatePageItem(process, value);
		}
		response.sendRedirect("newAdminIndex.jsp");
	}
}
