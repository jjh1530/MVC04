package kr.bit.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Controller {
	// 모든 POJO가 가지고 있어야하는 메서드
	// 리턴타입 String  <-- 다음 페이지 정보 넘겨줌
	public String requestHandler(HttpServletRequest request, HttpServletResponse response) 
											throws ServletException, IOException;
}
