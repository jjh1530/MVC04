package kr.bit.frontcontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.bit.controller.Controller;

@WebServlet("*.do")
public class MemberFrontController extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		// 클라이언트가 실행한 요청 파악하기
		String url = request.getRequestURI();   //  /MVC04/memberList.do
		System.out.println(url);
		String ctx = request.getContextPath();  //  /MVC04
		//실제로 요청한 명령
		String command= url.substring(ctx.length());
		System.out.println(command);  //   /memberList.do
		//요청에 따른 분기작업
		Controller controller=null;
		String nextPage = "";
		//핸들러매핑
		
		HandlerMapping mapping = new HandlerMapping();
		controller = mapping.getController(command);
		nextPage = controller.requestHandler(request, response);
		
		//forward, redirect 함수처리
		if(nextPage != null) {
			if (nextPage.indexOf("redirect:")!= -1 ) {
				// 						redirect:[0] /MVC04/memberList.do[1] 
				response.sendRedirect(nextPage.split(":")[1]);  //redirect가 있다면
			}else {
				RequestDispatcher rd =request.getRequestDispatcher(ViewResolver.makeView(nextPage)); // 뷰페이지 매핑
				rd.forward(request, response);
			}
		}
		
	}

}
