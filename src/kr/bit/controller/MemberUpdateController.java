package kr.bit.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.bit.model.MemberDAO;
import kr.bit.model.MemberVO;

public class MemberUpdateController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String ctx = request.getContextPath(); // /MVC04 

		int num = Integer.parseInt(request.getParameter("num"));
		int age = Integer.parseInt(request.getParameter("age"));
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		
		MemberVO vo = new MemberVO();
		vo.setNum(num);
		vo.setAge(age);
		vo.setEmail(email);
		vo.setPhone(phone);
		
		MemberDAO dao = new MemberDAO();
		int cnt = dao.memberUpdate(vo);
		String nextPage =null;
		//PrintWriter out = response.getWriter();
		if (cnt > 0) {
			nextPage = ("redirect:/MVC04/memberList.do");
		}else {
			throw new ServletException("not update");
		}
		
		return nextPage;
	}
}
