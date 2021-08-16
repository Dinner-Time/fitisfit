package co.leaf.fit.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.leaf.fit.common.Command;

public class MemLoginForm implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		return "member/memLoginForm";
	}

}
