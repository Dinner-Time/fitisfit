package co.leaf.fit.program.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.leaf.fit.common.Command;
import co.leaf.fit.program.service.ProgramSerivce;
import co.leaf.fit.timetable.service.TimetableService;
import co.leaf.fit.vo.ProgramVO;
import co.leaf.fit.vo.TimetableVO;

public class programDetailUser implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		ProgramSerivce dao = new ProgramSerivce();
		TimetableService dao2 = new TimetableService();
		ProgramVO vo = new ProgramVO();
		TimetableVO vo2 = new TimetableVO();
		
		vo.setProId(Integer.valueOf(request.getParameter("proId")));
		vo2.setTimProId(Integer.valueOf(request.getParameter("proId")));
		
		request.setAttribute("detailList", dao.proSelect(vo));
		request.setAttribute("timetable", dao2.timSelect(vo2));
		
		return "program/programDetailUser";
	}

}
