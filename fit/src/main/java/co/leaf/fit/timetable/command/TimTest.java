package co.leaf.fit.timetable.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.leaf.fit.common.Command;
import co.leaf.fit.timetable.service.TimetableService;

public class TimTest implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		TimetableService dao = new TimetableService();
		request.setAttribute("list", dao.timSelectList());
		return "timetable/test";
	}

}
