package co.leaf.fit.ajax.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.leaf.fit.member.service.MemberService;
import co.leaf.fit.vo.MemberVO;

@WebServlet("/PhoneNumChange")
public class PhoneNumChange extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public PhoneNumChange() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberService dao = new MemberService();
		MemberVO vo = new MemberVO();
		vo.setMemEmail(request.getParameter("memEmail"));
		dao.memUpdatePhone(vo);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
