package home;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Bean;

@SuppressWarnings({ "serial", "unused" })
@WebServlet("/login")
public class HomeServlet extends HttpServlet {

   
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
	
		PrintWriter pw = res.getWriter();
		res.setContentType("text/html");
		
		int Year=Integer.parseInt(req.getParameter("year"));
		String  rollno = req.getParameter("rno");
		String MotherName=req.getParameter("mn");
		
		
		
		Bean bean = new HomeDAOa().retrieveMarksheet(req);
		
		if(bean==null)
		{
			//pw.print("<script>alert('Invalid Details !');</script>");
			RequestDispatcher rd = req.getRequestDispatcher("invaliduser.jsp");
			rd.include(req, res);
		}
		else {
			req.setAttribute("Bean", bean);
			RequestDispatcher rd = req.getRequestDispatcher("marklist.jsp");
			rd.include(req, res);
	
		}
		
		
	
	
	}


}
