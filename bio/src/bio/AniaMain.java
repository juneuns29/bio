package bio;

import java.io.*;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

/*@WebServlet("/")*/
public class AniaMain extends HttpServlet {
	public void service(HttpServletRequest req, HttpServletResponse resp) 
												throws ServletException, IOException {
		String view = "/WEB-INF/views/main.jsp";
		
		RequestDispatcher rd = req.getRequestDispatcher(view);
		rd.forward(req, resp);
	}
}
