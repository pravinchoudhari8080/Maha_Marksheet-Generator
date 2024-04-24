package Evaluator_Login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;

import DBConnection.DBConnection;

public class LoginDAO {

	 LoginBean loginBean = null;
	 
	 public LoginBean retrieve(HttpServletRequest req){
		 
		 try {
			 Connection con=DBConnection.getCon();
			 PreparedStatement preparedStatement=con.prepareStatement
			 ("select * from EVALUATORLOGIN where ID=? and Password=?");
			 
			 preparedStatement.setString(1, req.getParameter("ID"));
			 preparedStatement.setString(2, req.getParameter("Password"));
			 
			 ResultSet resultSet = preparedStatement.executeQuery();
			 
			 if(resultSet.next()) {
				 loginBean=new LoginBean();
				 loginBean.setusername(resultSet.getString(1));
				 loginBean.setPassword(resultSet.getString(2));
				}
			 
		 }catch (Exception e) {
			e.printStackTrace();
		}
		 
		 return loginBean;
	 }
	
}
