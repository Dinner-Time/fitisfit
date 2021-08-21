package co.leaf.fit.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.leaf.fit.common.Command;
import co.leaf.fit.member.service.MemberService;

public class AdminMemSelectList implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		MemberService dao = new MemberService();
		request.setAttribute("list", dao.memSelectList());
		return "member/adminMemSelectList";
	}

}
