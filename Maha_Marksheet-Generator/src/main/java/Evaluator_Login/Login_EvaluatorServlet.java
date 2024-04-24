package Evaluator_Login;

//import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/adminlogin")
public class Login_EvaluatorServlet extends HttpServlet{
	
	protected void doPost(HttpServletRequest req,HttpServletResponse res) {
		  
		try {
			  LoginBean loginBean= new LoginDAO().retrieve(req);
			 // PrintWriter printWriter=res.getWriter();
			  res.setContentType("text/html");
			  if(loginBean==null) {
				 // printWriter.println("invalid ID And Password");
		    	  RequestDispatcher requestDispatcher=req.getRequestDispatcher("invaliduser.jsp");
		    	  requestDispatcher.include(req, res);
			  }else {
				  HttpSession httpSession=req.getSession();
		          httpSession.setAttribute("ub", loginBean);
		    	  RequestDispatcher requestDispatcher=req.getRequestDispatcher("AddMark.html");
		    	  requestDispatcher.forward(req, res);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
