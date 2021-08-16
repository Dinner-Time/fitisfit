package co.leaf.fit.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.leaf.fit.common.Command;
import co.leaf.fit.member.service.MemberMapper;
import co.leaf.fit.member.service.MemberService;
import co.leaf.fit.vo.MemberVO;

public class MemberSelect implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		MemberMapper dao = new MemberService();
		MemberVO vo = new MemberVO();
		
		HttpSession session = request.getSession();
		
		vo.setMemName((String) session.getAttribute("memName"));
		vo.setMemEmail((String) session.getAttribute("memEmail"));
		vo.setMemPassword((String) session.getAttribute("memPassword"));
		vo.setMemBirth((java.sql.Date) session.getAttribute("memBirth"));
		vo.setMemGender((String) session.getAttribute("memGender"));
		vo.setMemPhone((String) session.getAttribute("memPhone"));
		vo.setMemSubDate((java.sql.Date) session.getAttribute("memSubDate"));
		vo = dao.memSelect(vo);
		
		request.setAttribute("member", vo);
		
		return "member/myPageMemInfo";
	}

}
