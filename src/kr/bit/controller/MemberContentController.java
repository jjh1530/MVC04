package kr.bit.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.bit.model.MemberDAO;
import kr.bit.model.MemberVO;

public class MemberContentController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int num = Integer.parseInt(request.getParameter("num"));
		
		MemberDAO dao = new MemberDAO();
		
		MemberVO vo = dao.memberContent(num);
		response.setContentType("text/html;charset=utf-8");
		
		//객체 바인딩
		request.setAttribute("vo", vo);
		return "memberContent"; // 뷰의 이름만을 리턴
		//return "/WEB-INF/member/memberContent.jsp";
	}
}
