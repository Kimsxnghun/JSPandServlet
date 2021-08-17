package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.MemberDAO;

@WebServlet("/IdCheckService")
public class IdCheckService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		// ajax로 값을 받기 때문에 UTF-8로 인코딩해준다
		response.setCharacterEncoding("EUC-KR");
			
		String userId = request.getParameter("userId");
		// join.jsp에서 받아온 key값이 userId이고
		// value값은 유저가 실제로 적은 값, String userId에는 value값이 들어간다.
		PrintWriter out = response.getWriter(); 
		
		MemberDAO dao = new MemberDAO();
		
		int idChcek = dao.checkId(userId);
		
		if (idChcek == 0) {
			System.out.println("이미 존재하는 아이디입니다.");
		} else if (idChcek == 1) {
			System.out.println("사용 가능한 아이디입니다.");
		}
		
		out.write(idChcek + ""); // --> ajax 결과값인 result가 됨
		
	
	}

}
