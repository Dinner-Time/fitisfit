package co.leaf.fit.program.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.leaf.fit.common.Command;

public class ProgramAddForm implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		return "program/programAddForm";
	}

}
