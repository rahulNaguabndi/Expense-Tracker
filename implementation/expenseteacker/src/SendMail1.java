

import java.io.IOException;
import java.util.*;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SendMail1
 */
@WebServlet("/SendMail1")
public class SendMail1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SendMail1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
	
		String to =request.getParameter("email");
		String to1 =request.getParameter("username");
		Random rand = new Random();
		int lol = rand.nextInt(1000);
		String[] y={"2014","2012","2016","2017","2001","2020"};
		int h=lol%5;
		String subject="your otp";//request.getParameter("subject");
		String msg=y[h];//request.getParameter("msg");
		 Mailer1 s=new Mailer1();
			s.send("rahul.nagubandi@gmail.com","raahul999",to,"otp for expense tracker",msg);
			//Mailer.send(to, subject, msg);
			out.print("message has been sent successfully");
			request.setAttribute("myname",msg);
			request.setAttribute("jjj",to1);
			request.getRequestDispatcher("otp.jsp").forward(request, response);;
			out.close();
		String k = null;
		char c1;
		for(int i=0; i<msg.length();i++){
		c1=msg.charAt(i);
		c1=(char) (c1+5);
		k=k+c1;}
	    msg=k;
	    String z1="UPDATE signup SET pwd = '";
	    String kll="'";
	    z1=z1+msg;
	    z1=z1+kll;
	    String z2=" WHERE username ='";
	    z1=z1+z2;
	    z1=z1+to1;
	    z1=z1+kll;
	    System.err.println(z1);
  // session.setAttribute("otp",msg);
	   
	  //  response.sendRedirect("otp.jsp");
	    
	    
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		// HttpServletResponse.sendRedirect("/your/new/location.jsp");
	}

}
