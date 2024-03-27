package bio;

import java.io.*;
import java.sql.*;
import java.util.*;

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
		// connection
		Connection con = db.getCon();
		
		// 질의명령
		String sql = "SELECT id FROM member WHERE isshow='Y'";
		
		// 명령전달도구
		Statement stmt = db.getStmt(con);
		
		// 질의명령 보내고 결과 받고
		ResultSet rs = null;
		// 아이디 기억할 리스트
		ArrayList<String> list = new ArrayList<String>();
		try {
			rs = stmt.executeQuery(sql);
			// 데이터 꺼내서 리스트에 담고
			while(rs.next()) {
				String id = rs.getString("id");
				list.add(id);
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			db.close(rs);
			db.close(stmt);
			db.close(con);
		}
		
		// 응답 객체 인코딩 설정
		resp.setCharacterEncoding("UTF-8");
		// 완성된 아이디 리스트로 웹문서 제작
		writeHtml(list, resp);
	}
	
	public void writeHtml(ArrayList<String> list, HttpServletResponse resp) {
		// 작성도구 꺼내고
		try {
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
			pw.println("	<h1 class='w3-purple w3-padding w3-card-4'>회원리스트</h1>");
			pw.println("	<div class='w3-col'>");
			
			for(int i = 0 ; i < list.size(); i++ ) {
				pw.println("		<div class='w3-btn w3-blue'>" + 
												list.get(i) + "</div>");
			}
			
			pw.println("	</div>");
			pw.println("</div>");
			pw.println("</body>");
			pw.println("</html>");
			
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
