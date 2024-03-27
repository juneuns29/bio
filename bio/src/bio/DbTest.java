package bio;

import java.io.*;
import java.sql.*;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;
import javax.sql.*;

import javax.naming.InitialContext;

/**
 * Servlet implementation class DbTest
 */
@WebServlet("/dbTest.ania")
public class DbTest extends HttpServlet {
	DataSource ds;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest req, HttpServletResponse resp) 
															throws ServletException, IOException {
		try {
			InitialContext  context = new InitialContext();
			ds = (DataSource) context.lookup("java:/comp/env/jdbc/TestDB");
			
			// 커넥션 꺼내고
			Connection con = ds.getConnection();
			// 질의명령 준비하고
			String sql = "SELECT COUNT(*) cnt FROM member "
					+ "WHERE isshow = 'Y' "
					+ "AND id='jennie' "
					+ "AND pw='12345'";
			// 명령전달도구 준비하고
			Statement stmt = con.createStatement();
			
			// 질의 명령 보내고 결과받고
			ResultSet rs = stmt.executeQuery(sql);
			// 작업진행줄 한줄 내리고
			rs.next();
			int cnt = rs.getInt("cnt");
			
			resp.setCharacterEncoding("UTF-8");
			
			PrintWriter pw = resp.getWriter();
			pw.println("<!doctype html>");
			pw.println("<html>");
			
			pw.println("<head>");
			pw.println("<meta charset='UTF-8'>");
			pw.println("<title>DBTest</title>");
			pw.println("<link rel='stylesheet' type='text/css' href='/resources/css/w3.css'>");
			pw.println("<link rel='stylesheet' type='text/css' href='/resources/css/user.css'>");
			pw.println("</head>");
			pw.println("<body>");
			pw.println("<div class='w3-content mxw650 w3-center'>");
			
			String hclass = "w3-pink";
			String hcontent = "사용자가 존재합니다.";
			if(cnt != 1) {
				hclass = "w3-red";
				hcontent = "없는 사용자 입니다.";
			}
			
			pw.println("<h1 class='" + hclass + " w3-padding w3-card-4'>" + 
															hcontent + "</h1>");
			pw.println("</div>");
			pw.println("</body>");
			pw.println("</html>");
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

}
