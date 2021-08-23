package co.leaf.fit.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.leaf.fit.common.Command;

public class MemLoginForm implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("partnerSuccess", (String) request.getAttribute("partnerSuccess"));
		request.setAttribute("memberSuccess", (String) request.getAttribute("memberSuccess"));
		request.setAttribute("memberError", (String) request.getAttribute("memberError"));
		return "member/memLoginForm";
	}

}
