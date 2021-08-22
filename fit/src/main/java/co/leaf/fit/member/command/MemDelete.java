package co.leaf.fit.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.leaf.fit.common.Command;
import co.leaf.fit.member.service.MemberMapper;
import co.leaf.fit.member.service.MemberService;
import co.leaf.fit.vo.MemberVO;

public class MemDelete implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		MemberMapper dao = new MemberService();
		MemberVO vo = new MemberVO();
		HttpSession session = request.getSession();

		vo = (MemberVO) session.getAttribute("session");
		
		dao.memDelete(vo);
		session.invalidate();
		
		return "home/main";
	}

}
