package bio;

import java.io.*;
import java.sql.*;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;
import javax.sql.*;

import bio.db.BioDBCP;

/**
 * Servlet implementation class DbTest2
 */
@WebServlet("/dbTest2.ania")
public class DbTest2 extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) 
											throws ServletException, IOException {
		// db Test
		BioDBCP db = new BioDBCP();
	}

}
