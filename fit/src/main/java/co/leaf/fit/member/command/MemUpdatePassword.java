package co.leaf.fit.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.leaf.fit.common.Command;
import co.leaf.fit.member.service.MemberMapper;
import co.leaf.fit.member.service.MemberService;
import co.leaf.fit.vo.MemberVO;

public class MemUpdatePassword implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		MemberMapper dao = new MemberService();
		MemberVO vo = new MemberVO();
		HttpSession session = request.getSession();

		vo = (MemberVO) session.getAttribute("session");

		vo.setMemPassword(request.getParameter("newMemPassword"));
		dao.memUpdatePassword(vo);

		return "/memSelect.do";
	}

}
