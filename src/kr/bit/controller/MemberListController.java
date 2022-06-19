package kr.bit.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.bit.model.MemberDAO;
import kr.bit.model.MemberVO;

public class MemberListController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		MemberDAO dao = new MemberDAO();
		List<MemberVO> list = dao.memberList();
		// list를 member/memberList.jsp에 넘겨야함
		request.setAttribute("list", list);
		
		//다음 페이지 정보를 넘겨줌
		//return "/WEB-INF/member/memberList.jsp";
		return "memberList";
	}
}
