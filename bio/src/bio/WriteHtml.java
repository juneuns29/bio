package bio;

import java.io.*;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;


@WebServlet("/bioCandy.ania")
public class WriteHtml extends HttpServlet {
/*
	이 클래스는 Servlet 클래스로
	http://localhost/bioCandy.ania 로 요청하면
	실행되는 클래스이다.
	
	이 클래스가 해야할 임무는
	실행결과 html 문서를 작성해서 응답해주는 것이 주된 임무이다.
	
	
 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// html 코드 작성도구 준비
		PrintWriter pw = response.getWriter();
		pw.println("<!doctype html>");
		pw.println("<html>");
		pw.println("<head>");
		pw.println("<meta charset='UTF-8'>");
		pw.println("<title>Bio Candy</title>");
		pw.println("</head>");
		pw.println("<body>");
		pw.println("<h1 style='text-align: center;'>Bio Candy</h1>");
		pw.println("</body>");
		pw.println("</html>");
	}

}
