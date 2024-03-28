package bio.controller.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bio.controller.AniaInter;

/**
 * 이 클래스는 bio 프로젝트 로그인 폼보기 요청 처리 클래스
 * @author	전은석
 * @since	2024.03.28
 * @version	v.1.0
 * 			2024.03.28 - 클래스 작성 및 요청 처리 [ 담당자 : 전은석 ]
 *
 */
public class Login implements AniaInter {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setAttribute("isRedirect", false);
		String view = "member/login";
//		System.out.println("************** ania login");
		return view;
	}

}
