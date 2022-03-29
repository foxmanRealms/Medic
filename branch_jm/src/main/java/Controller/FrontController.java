package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Inter.Command;
import Service.EditPwService;
import Service.IdCheckService;
import Service.JoinService;
import Service.LoginService;
import Service.LogoutService;
import Service.StoryBoardService;
import Service.StoryCnt;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("[FrontController]");
		
		Command com = null;
		String nextpage = null;
		
		String uri = request.getRequestURI();
//		System.out.println("uri : " + uri);
		String path = request.getContextPath();
//		System.out.println("path : " + path);
		String command = uri.substring(path.length() + 1);
		System.out.println("command : " + command);
		
		// ȸ�� ���� ���
		if(command.equals("JoinServiceCon.do")) {
			com = new JoinService();
			nextpage = com.execute(request, response);	
			
		// ���̵� �ߺ� Ȯ�� ���
		} else if(command.equals("IdCheckServiceCon.do")) {
			com = new IdCheckService();
			nextpage = com.execute(request, response);
		
		// �α��� ���
		} else if(command.equals("LoginServiceCon.do")) {
			com = new LoginService();
			nextpage = com.execute(request, response);
		
		// �α׾ƿ� ���
		} else if(command.equals("LogoutServiceCon.do")) {
			com = new LogoutService();
			nextpage = com.execute(request, response);
		
		// ��й�ȣ ���� ���
		} else if(command.equals("EditPwServiceCon.do")) {
			com = new EditPwService();
			nextpage = com.execute(request, response);
		
		// Ŀ�� - ���� ���� ���
		} else if(command.equals("StoryBoardServiceCon.do")) {
			com = new StoryBoardService();
			nextpage = com.execute(request, response);
		
		} 
		
		
		
		
		
		
		
		
		// else if ����������
		
		// nextpage�� �̵�
		if(nextpage != null) {
			response.sendRedirect(nextpage);
		}
	
	} // service �޼ҵ� ����������
	

}
