package co.leaf.fit.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.leaf.fit.common.Command;
import co.leaf.fit.member.service.MemberMapper;
import co.leaf.fit.member.service.MemberService;
import co.leaf.fit.partner.service.PartnerMapper;
import co.leaf.fit.partner.service.PartnerService;
import co.leaf.fit.vo.MemberVO;
import co.leaf.fit.vo.PartnerVO;

public class MemLogin implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String page = "";
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		if(request.getParameter("memberSort").equals("general")) {
			MemberMapper dao = new MemberService();
			MemberVO vo = new MemberVO();
			
			vo.setMemEmail(email);
			vo.setMemPassword(password);
			
			vo = dao.memLogin(vo);
			
			if(vo != null) {
				session.setAttribute("session", vo);
				
				page = "home.do";
			} else {
				request.setAttribute("fail", "fail");
				page = "loginForm.do";
			}
			
		} else {
			PartnerMapper dao = new PartnerService();
			PartnerVO vo = new PartnerVO();
			
			vo.setParEmail(email);
			vo.setParPassword(password);
			
			vo = dao.parLogin(vo);
			
			if(vo != null) {
				session.setAttribute("session", vo);
				
				page = "home.do";
			} else {
				request.setAttribute("fail", "fail");
				page = "loginForm.do";
			}
		}

		return page;
	}

}
