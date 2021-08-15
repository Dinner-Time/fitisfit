package co.leaf.fit.instructor.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.leaf.fit.common.Command;
import co.leaf.fit.instructor.service.InstructorService;

public class InsTest implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		InstructorService dao = new InstructorService();
		request.setAttribute("list", dao.insSelectList());
		return "instructor/test";
	}

}
