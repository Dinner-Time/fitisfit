package co.leaf.fit.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.leaf.fit.common.Command;
import co.leaf.fit.member.service.MemberMapper;
import co.leaf.fit.member.service.MemberService;
import co.leaf.fit.vo.MemberVO;

public class MemLogin implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		MemberMapper dao = new MemberService();
		MemberVO vo = new MemberVO();
		
		HttpSession session = request.getSession();
		
		vo.setMemEmail(request.getParameter("email"));
		vo.setMemPassword(request.getParameter("password"));
		
		vo = dao.memLogin(vo);
		
		String page = "";
		if (vo.getMemEmail() != null) {
			session.setAttribute("memEmail", vo.getMemEmail());
			session.setAttribute("memPassword", vo.getMemPassword());
			session.setAttribute("memName", vo.getMemName());
			session.setAttribute("memBirth", vo.getMemBirth());
			session.setAttribute("memPhone", vo.getMemPhone());
			session.setAttribute("memAddress", vo.getMemAddress());
			session.setAttribute("memGender", vo.getMemGender());
			session.setAttribute("memState", vo.getMemState());
			session.setAttribute("memSubdate", vo.getMemSubDate());
			session.setAttribute("memPhoto", vo.getMemPhoto());
			request.setAttribute("login", vo);
			
			page = "member/loginTest";
		} else {
//			String message = "ID 또는 비밀번호가 틀립니다.";
//			request.setAttribute("message", message);
			page = "loginForm.do";
		}
			
		return page;
	}

}
