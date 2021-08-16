package co.leaf.fit.instructor.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.leaf.fit.common.Command;
import co.leaf.fit.instructor.service.InstructorService;

public class InsInfo implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		return "instructor/insInfo";
	}

}
