package bio;

import java.io.*;
import java.sql.*;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

import bio.db.*;

/**
 * Servlet implementation class IdCheck
 */
@WebServlet("/member/isUsable.ania")
public class IdCheck extends HttpServlet {
	protected void service(HttpServletRequest req, HttpServletResponse resp) 
												throws ServletException, IOException {
		// 할일
		// 파라미터 받고
		String sid = req.getParameter("id");
				
		// 데이터베이스 조회해서 결과받고
		int cnt = getIdCnt(sid);
		
		// 결과 내보내고
		// 문서작성도구 준비
		PrintWriter pw = resp.getWriter();
		/*
			클라이언트가 요청한 문서의 형식은 JSON 문서이므로
				
				{
					"키값": "데이터"
				}
			의 형태로 응답문서를 작성해주면 된다.
		 */
		pw.println("{");
		pw.println("	\"result\": \"" + (cnt == 0 ? "YES" : "NO") + "\"");
		pw.println("}");	
		
	}
	
	public int getIdCnt(String id) {
		// 반환값 변수
		int cnt = 0;
		// 할일
		// 데이터베이스 사용준비
		BioDBCP db = new BioDBCP(); // 커넥션풀 찾아놓은 상태
		// 커넥션 꺼내고
		Connection con = db.getCon();
		// 질의명령 준비하고
		String sql = "SELECT ";
		StringBuffer buff = new StringBuffer(sql);
		buff.append("	COUNT(*) cnt ");
		buff.append("FROM ");
		buff.append("	member ");
		buff.append("WHERE ");
		buff.append("	id = ? ");
		
		sql = buff.toString();
		
		// 명령전달도구 만들고
		PreparedStatement pstmt = db.getPstmt(sql, con);
		
		ResultSet rs = null;
		try {
			// 질의명령 완성하고
			pstmt.setString(1, id);
			// 질의명령 보내고 결과받고
			rs = pstmt.executeQuery();
			// 결과 꺼내고 : 질의명령의 실행결과는 1행이므로 한줄 내려서 꺼낸다.
			rs.next();
			
			cnt = rs.getInt("cnt");
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			db.close(rs);
			db.close(pstmt);
			db.close(con);
		}
		
		// 반환해주고
		return cnt;
	}

}
