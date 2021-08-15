package co.leaf.fit.program.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.leaf.fit.common.Command;
import co.leaf.fit.program.service.ProgramSerivce;

public class ProTest implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		ProgramSerivce dao = new ProgramSerivce();
		request.setAttribute("list", dao.proSelectList());
		return "program/test";
	}

}
