package co.leaf.fit.history.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.leaf.fit.common.Command;
import co.leaf.fit.member.service.MemberMapper;
import co.leaf.fit.member.service.MemberService;
import co.leaf.fit.vo.MemberVO;

public class HisInsertForm implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		MemberMapper dao = new MemberService();
		MemberVO vo = new MemberVO();
		
		HttpSession session = request.getSession();
		
		vo = (MemberVO) session.getAttribute("session");
		
		vo = dao.memSelect(vo);
		
		request.setAttribute("member", vo);
		

		request.setAttribute("hisProId", request.getParameter("hisProId"));

		return "history/hisInsertForm";
	}

}
