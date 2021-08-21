package co.leaf.fit.member.command;

import java.sql.Date;
import java.time.LocalDate;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.leaf.fit.common.Command;
import co.leaf.fit.member.service.MemberMapper;
import co.leaf.fit.member.service.MemberService;
import co.leaf.fit.vo.MemberVO;

public class MemInsert implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		MemberMapper dao = new MemberService();
		MemberVO vo = new MemberVO();
		
		vo.setMemEmail(request.getParameter("email"));
		vo.setMemPassword(request.getParameter("password"));
		vo.setMemName(request.getParameter("name"));
		vo.setMemBirth(Date.valueOf(request.getParameter("birth")));
		vo.setMemPhone(request.getParameter("phone"));
		vo.setMemAddress(request.getParameter("roadFullAddr"));
		vo.setMemGender(request.getParameter("gender"));
		vo.setMemSubDate(Date.valueOf(LocalDate.now()));
		
		try {
			dao.memInsert(vo);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return "loginForm.do";
	}

}
